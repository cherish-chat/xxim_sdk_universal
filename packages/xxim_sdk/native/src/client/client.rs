use protobuf::MessageField;
use tokio::select;
use tokio_util::sync::CancellationToken;
use reqwest::{Client as HttpClient, Response};
use reqwest::header::HeaderMap;
use crate::config::{Config};
use crate::pb::{common, gateway};
use crate::tool::{log, proto};
use crate::tool::uuid::uuid;
use std::future::Future;
use lazy_static::lazy_static;
use std::sync::{Arc, Mutex};
use std::collections::HashMap;

pub struct Context {
    pub trace_id: String,
    deadline_timestamp: i64, // 13位时间戳
}

const BACKGROUND_CONTEXT: Context = Context {
    trace_id: String::new(),
    deadline_timestamp: 0, // 永远不超时
};

struct CancelToken {
    token: CancellationToken,
    clone_token: CancellationToken,
    cancel_token: CancellationToken,
    trace_id: String,
}

lazy_static! {
    static ref CONTEXT_INSTANCE_MAP: Mutex<HashMap<String, Arc<Mutex<CancelToken>>>> = Mutex::new(HashMap::new());
}


pub struct Client {
    config: Config,
    http_client: HttpClient,
    pub rt: tokio::runtime::Runtime,
}

impl Client {
    pub fn new(config: Config) -> Self {
        Client {
            config,
            http_client: HttpClient::new(),
            rt: tokio::runtime::Runtime::new().unwrap(),
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
    pub fn block_on<F: Future>(&self, future: F) -> F::Output {
        self.rt.block_on(future)
    }


    async fn auto_cancel(trace_id: String, deadline_timestamp: i64) {
        let now = chrono::Local::now().timestamp_millis();
        if now >= deadline_timestamp {
            log::warn(format!("auto_cancel: deadline_timestamp:{} <= now:{}",
                              deadline_timestamp, now).as_str());
            Client::cancel(trace_id)
        } else {
            let duration = chrono::Duration::milliseconds(deadline_timestamp - now);
            log::debug(format!("auto_cancel: sleep {:?}", duration).as_str());
            tokio::time::sleep(duration.to_std().unwrap()).await;
            log::warn(format!("auto_cancel: deadline_timestamp:{} <= now:{}",
                              deadline_timestamp, now).as_str());
            Client::cancel(trace_id)
        }
    }

    pub fn cancel(trace_id: String) {
        Client::find_and_cancel(trace_id.clone());
        // 30s后remove
        tokio::spawn(async move {
            tokio::time::sleep(std::time::Duration::from_secs(30)).await;
            Client::may_remove(trace_id);
        });
    }


    pub fn get_cancel_token(trace_id: String) -> Option<CancellationToken> {
        let map = CONTEXT_INSTANCE_MAP.lock().unwrap();
        let find_result = map.get(&trace_id);
        if find_result.is_none() {
            return None;
        }
        let cancel_token = find_result.unwrap();
        let cancel_token = cancel_token.lock().unwrap();
        Some(cancel_token.clone_token.clone())
    }
    fn find_and_cancel(trace_id: String) {
        // 找到对应的cancel_token，然后cancel
        let map = CONTEXT_INSTANCE_MAP.lock().unwrap();
        let find_result = map.get(&trace_id);
        if find_result.is_none() {
            log::warn(format!("find_and_cancel: trace_id:{} not found", trace_id).as_str());
            return;
        }
        log::debug(format!("find_and_cancel: trace_id:{} found", trace_id).as_str());
        let cancel_token = find_result.unwrap();
        let cancel_token = cancel_token.lock().unwrap();
        cancel_token.cancel_token.cancel();
    }
    fn may_remove(trace_id: String) {
        let mut map = CONTEXT_INSTANCE_MAP.lock().unwrap();
        map.remove(&trace_id);
    }

    pub fn background() -> Context {
        BACKGROUND_CONTEXT
    }

    pub fn with_cancel() -> Context {
        let trace_id = uuid();
        let token = CancellationToken::new();
        let clone_token = token.clone();
        let cancel_token = token.clone();
        let cancel_token = CancelToken {
            token,
            clone_token,
            cancel_token,
            trace_id: trace_id.clone(),
        };
        let cancel_token = Arc::new(Mutex::new(cancel_token));
        CONTEXT_INSTANCE_MAP.lock().unwrap().insert(trace_id.clone(), cancel_token.clone());
        Context {
            trace_id,
            deadline_timestamp: 0,
        }
    }

    pub fn context_with_timeout(&self, timeout_mills: i64) -> Context {
        let deadline_timestamp = chrono::Local::now().timestamp_millis() + timeout_mills;
        let trace_id = uuid();
        let token = CancellationToken::new();
        let clone_token = token.clone();
        let cancel_token = token.clone();
        let cancel_token = CancelToken {
            token,
            clone_token,
            cancel_token,
            trace_id: trace_id.clone(),
        };
        let cancel_token = Arc::new(Mutex::new(cancel_token));
        CONTEXT_INSTANCE_MAP.lock().unwrap().insert(trace_id.clone(), cancel_token.clone());
        // 启动一个定时器，到期后取消
        let cancel_function = Client::auto_cancel( trace_id.clone(), deadline_timestamp);
        self.rt.spawn(cancel_function);
        Context {
            trace_id,
            deadline_timestamp,
        }
    }

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
        trace_id: String,
    ) {
        let cancel_token = Client::get_cancel_token(trace_id);
        log::debug(format!("cancel_token: {:?}", cancel_token).as_str());
        let builder = self.http_client.post(self.build_http_url(path.clone()));
        let builder = builder.headers(self.build_header());
        let builder = builder.body(self.build_body(req, path.clone().to_string()));
        // 毫秒 self.config.request_timeout_millisecond 转 Duration
        let timeout = std::time::Duration::from_millis(self.config.request_timeout_millisecond as u64);
        let builder = builder.timeout(timeout);

        let run = async move {
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
        };
        if cancel_token.is_none() {
            // run
            run.await;
            return;
        }
        // cancelable
        let cancel_token = cancel_token.unwrap();
        select! {
            _ = cancel_token.cancelled() => {
                on_error(Error {
                    code: ErrorCode::Cancelled,
                    message: format!("request canceled: {}", path),
                });
            }
            _ = run => {}
        }
    }

    pub async fn request_async<Q: protobuf::Message, P: protobuf::Message>(
        &self,
        path: String,
        req: Box<Q>,
        on_success: OnSuccess<P>,
        on_error: OnError,
    ) {
        self.request_async_cancelable(path, req, on_success, on_error, "".to_string()).await;
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
