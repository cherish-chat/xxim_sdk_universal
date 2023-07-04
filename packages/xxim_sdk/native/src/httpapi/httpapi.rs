use std::sync::{Arc, RwLock};
use reqwest::header::HeaderMap;
use crate::store::values::{Config, HTTP_CLIENT_INSTANCE_MAP, HttpClient};
use crate::pb::{common, gateway};
use crate::tool::{log, proto};
use protobuf::MessageField;
use crate::store::apihandler::{Error, ErrorCode};
use crate::tool::uuid::uuid;

impl HttpClient {
    pub fn new(instance_id: String) -> Self {
        HttpClient {
            instance_id,
            http_client: reqwest::blocking::Client::new(),
        }
    }

    pub(crate) fn instance(id: String) -> Arc<RwLock<HttpClient>> {
        let map = HTTP_CLIENT_INSTANCE_MAP.read().unwrap();
        let client = map.get(id.as_str()).unwrap();
        client.clone()
    }

    pub fn request_sync<Q: protobuf::Message, P: protobuf::Message>(
        &self,
        path: String,
        req: Box<Q>,
    ) -> Result<Box<P>, Error> {
        let config = Config::get_config(self.instance_id.clone()).read().unwrap().clone();
        let builder = self.http_client.post(self.build_http_url(path.clone()));
        let builder = builder.headers(self.build_header());
        let builder = builder.body(self.build_body(req, path.clone().to_string()));
        // 毫秒 self.config.request_timeout_millisecond 转 Duration
        let timeout = std::time::Duration::from_millis(config.request_timeout_millisecond as u64);
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
        let config = Config::get_config(self.instance_id.clone()).read().unwrap().clone();
        let mut scheme = "http";
        if config.ssl {
            scheme = "https";
        }
        format!("{}://{}:{}/api{}", scheme, config.host, config.port, path)
    }

    fn build_header(&self) -> HeaderMap {
        let mut header = HeaderMap::new();
        header.insert("Content-Type", "application/x-protobuf".parse().unwrap());
        header
    }
    fn build_body<Q: protobuf::Message>(&self, req: Box<Q>, path: String) -> Vec<u8> {
        let config = Config::get_config(self.instance_id.clone()).read().unwrap().clone();
        let body = proto::marshal_box(req);
        let config = config.clone();
        let header = common::RequestHeader {
            appId: config.app_id.to_string(),
            userId: config.user_id.clone().unwrap_or_default(),
            userToken: config.user_token.clone().unwrap_or_default(),
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
            header: MessageField { 0: Some(Box::new(header)) },
            requestId: uuid().to_string(),
            path,
            body,
            special_fields: Default::default(),
        };
        let request_bytes = proto::marshal(request);
        request_bytes
    }
}