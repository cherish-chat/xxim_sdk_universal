use std::borrow::Borrow;
use protobuf::MessageField;
use tokio::select;
use tokio_util::sync::CancellationToken;
use reqwest::{Client as HttpClient, RequestBuilder, Response};
use reqwest::header::HeaderMap;
use crate::config::{Config};
use crate::pb::{common, gateway};
use crate::tool::{log, proto};
use crate::tool::uuid::uuid;

pub struct Client {
    config: Config,
    http_client: HttpClient,
}

impl Client {
    pub fn new(config: Config) -> Self {
        Client {
            config,
            http_client: HttpClient::new(),
        }
    }
}

#[derive(Debug)]
pub enum ErrorCode {
    NoError,
    Timeout,
    Cancelled,
    HttpError,
    RequestError,
}

#[derive(Debug)]
pub struct Error {
    code: ErrorCode,
    message: String,
}

pub type OnSuccess<P: protobuf::Message> = fn(resp: Box<P>);
pub type OnError = fn(err: Error);
impl Client {
    pub fn new_cancel_token(&self) -> (CancellationToken, CancellationToken) {
        let token = CancellationToken::new();
        let token_clone = token.clone();
        (token, token_clone)
    }

    pub async fn request_async_cancelable<Q: protobuf::Message, P: protobuf::Message>(
        &self,
        path: String,
        req: Box<Q>,
        on_success: OnSuccess<P>,
        on_error: OnError,
        cancel_token: CancellationToken,
    ) {
        let builder = self.http_client.post(self.build_http_url(path.clone()));
        let builder = builder.headers(self.build_header());
        let builder = builder.body(self.build_body(req, path.clone().to_string()));
        // 毫秒 self.config.request_timeout_millisecond 转 Duration
        let timeout = std::time::Duration::from_millis(self.config.request_timeout_millisecond as u64);
        let builder = builder.timeout(timeout);
        // cancelable
        select! {
            _ = cancel_token.cancelled() => {
                on_error(Error {
                    code: ErrorCode::Cancelled,
                    message: format!("request canceled: {}", path),
                });
            }
            _ = async {
                let x = builder.send().await;
                match x {
                    Ok(resp) => {
                        let status = resp.status();
                        log::debug(format!("status: {:?}", status).as_str());
                        if status.is_success() {
                            let bytes = resp.bytes().await.unwrap();
                            log::debug(format!("bytes: {:?}", String::from_utf8(bytes.clone().to_vec()).unwrap()).as_str());
                            let resp: P = proto::unmarshal::<P>(bytes);
                            on_success(Box::new(resp));
                        } else {
                            on_error(Error {
                                code: ErrorCode::HttpError,
                                message: format!("status: {:?}", status),
                            });
                        }
                    }
                    Err(err) => {
                        on_error(Error {
                            code: ErrorCode::RequestError,
                            message: format!("{:?}", err),
                        });
                    }
                }
            } => {}
        }
    }

    pub async fn request_async<Q: protobuf::Message, P: protobuf::Message>(
        &self,
        path: String,
        req: Box<Q>,
        on_success: OnSuccess<P>,
        on_error: OnError,
    ) {
        let token = CancellationToken::new();
        self.request_async_cancelable(path, req, on_success, on_error, token).await;
    }

    fn build_http_url(&self, path: String) -> String {
        let mut scheme = "http";
        if self.config.ssl {
            scheme = "https";
        }
        format!("{}://{}:{}/api{}", scheme, self.config.host, self.config.port, path)
    }
    fn build_ws_url(&self, path: String) -> String {
        let mut scheme = "ws";
        if self.config.ssl {
            scheme = "wss";
        }
        format!("{}://{}:{}{}", scheme, self.config.host, self.config.port, path)
    }
    fn build_header(&self) -> HeaderMap {
        let mut header = HeaderMap::new();
        header.insert("Content-Type", "application/x-protobuf".parse().unwrap());
        header
    }
    fn build_body<Q: protobuf::Message>(&self, req: Box<Q>, path: String) -> Vec<u8> {
        let body = proto::marshal_box(req);
        let config = self.config.clone();
        let header = common::RequestHeader {
            appId: config.app_id.to_string(),
            userId: config.user_id.unwrap_or_default(),
            userToken: config.user_token.unwrap_or_default(),
            clientIp: "".to_string(),
            installId: config.install_id.to_string(),
            platform: protobuf::EnumOrUnknown::from_i32(config.platform),
            gatewayPodIp: "".to_string(),
            deviceModel: config.device_model.to_string(),
            osVersion: config.os_version.to_string(),
            appVersion: env!("CARGO_PKG_VERSION").to_string(),
            language: protobuf::EnumOrUnknown::from_i32(config.language),
            connectTime: 0,
            encoding: protobuf::EnumOrUnknown::from_i32(0),
            extra: config.custom_header.to_string(),
            special_fields: Default::default(),
        };
        let request = &gateway::GatewayApiRequest {
            //pub header: ::protobuf::MessageField<super::common::RequestHeader>,
            header: MessageField { 0: Some(Box::new(header)) },
            requestId: uuid().to_string(),
            path,
            body,
            special_fields: Default::default(),
        };
        let request_bytes = proto::marshal(request);
        log::debug(format!("request_bytes: {:?}", String::from_utf8(request_bytes.clone())).as_str());
        request_bytes
    }
}
