use protobuf::MessageField;
use reqwest::blocking::{Client as HttpClient};
use reqwest::header::HeaderMap;
use crate::config::{Config};
use crate::pb::{common, gateway};
use crate::tool::{log, proto};
use crate::tool::uuid::uuid;
pub use std::net::TcpStream;

pub struct Client {
    pub config: Config,
    http_client: HttpClient,
    pub rt: tokio::runtime::Runtime,
    pub uuid: String,
    pub user_id: Option<String>,
    pub user_token: Option<String>,
}

impl Client {
    pub fn new(id: String, config: Config) -> Self {
        Client {
            config: config.clone(),
            http_client: reqwest::blocking::Client::new(),
            rt: tokio::runtime::Runtime::new().unwrap(),
            uuid: id.clone(),
            user_id: None,
            user_token: None,
        }
    }
    pub fn set_user_token(&mut self, token: String, user_id: String) {
        self.user_token = Some(token);
        self.user_id = Some(user_id);
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

impl Error {
    pub fn code_i32(&self) -> i32 {
        match self.code {
            ErrorCode::NoError => 0,
            ErrorCode::Timeout => 1,
            ErrorCode::Cancelled => 2,
            ErrorCode::HttpError => 3,
            ErrorCode::RequestError => 4,
        }
    }

    pub fn message_str(&self) -> &str {
        self.message.as_str()
    }
}

pub type OnSuccess<P: protobuf::Message> = fn(resp: Box<P>);
pub type OnError = fn(err: Error);

impl Client {
    pub fn request_sync<Q: protobuf::Message, P: protobuf::Message>(
        &self,
        path: String,
        req: Box<Q>,
    ) -> Result<(Box<P>), Error> {
        let builder = self.http_client.post(self.build_http_url(path.clone()));
        let builder = builder.headers(self.build_header());
        let builder = builder.body(self.build_body(req, path.clone().to_string()));
        // 毫秒 self.config.request_timeout_millisecond 转 Duration
        let timeout = std::time::Duration::from_millis(self.config.request_timeout_millisecond as u64);
        let builder = builder.timeout(timeout);

        let response_result = builder.send();
        return match response_result {
            Err(err) => {
                Err(Error {
                    code: ErrorCode::HttpError,
                    message: err.to_string(),
                })
            }
            Ok(response) => {
                let status = response.status();
                log::debug(format!("status: {:?}", status).as_str());
                if status.is_success() {
                    let bytes = response.bytes().unwrap();
                    // log::debug(format!("bytes: {:?}", String::from_utf8(bytes.clone().to_vec()).unwrap()).as_str());
                    let resp = proto::unmarshal::<P>(bytes);
                    Ok(Box::new(resp))
                } else {
                    Err(Error {
                        code: ErrorCode::HttpError,
                        message: format!("status: {:?}", status),
                    })
                }
            }
        };
    }

    fn build_http_url(&self, path: String) -> String {
        let mut scheme = "http";
        if self.config.ssl {
            scheme = "https";
        }
        format!("{}://{}:{}/api{}", scheme, self.config.host, self.config.port, path)
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
            userId: self.user_id.clone().unwrap_or_default(),
            userToken: self.user_token.clone().unwrap_or_default(),
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
        // log::debug(format!("request_bytes: {:?}", String::from_utf8(request_bytes.clone())).as_str());
        request_bytes
    }
}
