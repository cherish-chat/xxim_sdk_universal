use std::sync::{Arc, RwLock, TryLockResult};
use std::thread::{sleep};
use websocket::OwnedMessage;
use crate::pb::common;
use crate::store::values::{Config, WS_CLIENT_INSTANCE_MAP, WsClient, WsReader, WsWriter};
use crate::tool::{log};

impl WsClient {
    pub fn new(id: String) -> Self {
        WsClient {
            instance_id: id,
        }
    }

    pub(crate) fn instance(id: String) -> Arc<RwLock<WsClient>> {
        let map = WS_CLIENT_INSTANCE_MAP.read().unwrap();
        let client = map.get(id.as_str()).unwrap();
        client.clone()
    }

    ///loop_reconnect: 一直重连，一直保持连接
    fn loop_reconnect_(&self) {
        let mut reconnect_count = 0;
        loop {
            let config = Config::get_config(self.instance_id.clone()).read().unwrap().clone();
            if config.user_id.is_none() {
                log::info(format!("ws client {} user_id is none, reconnect task stop", self.instance_id).as_str());
                return;
            }
            log::info(format!("ws client {} start connect", self.instance_id).as_str());
            let end_reason = self.reconnect();
            log::info(format!("ws client {} end connect, reason: {}", self.instance_id, end_reason).as_str());
            reconnect_count += 1;
            let after_seconds = reconnect_count.clone() % 30;
            log::info(format!("ws client {} reconnect after {} seconds", self.instance_id, after_seconds).as_str());
            sleep(std::time::Duration::from_secs(after_seconds));
        }
    }

    pub fn loop_reconnect(instance_id: String) {
        std::thread::spawn(move || {
            let ws_client = WsClient::instance(instance_id.clone());
            let ws_client = ws_client.write().unwrap();
            ws_client.loop_reconnect_();
            drop(ws_client);
        });
    }

    pub fn close_connect(instance_id: String) {
        WsWriter::close_connect(instance_id.clone());
    }

    pub fn reconnect(&self) -> String {
        let instance_id = self.instance_id.clone();
        log::debug(format!("ws client {} reconnect", instance_id).as_str());
        let config = Config::get_config(instance_id.clone()).read().unwrap().clone();
        if config.user_id.is_none() {
            return "logout".to_string();
        }
        let mut client_builder = websocket::ClientBuilder::new(self.build_ws_url(config.clone()).as_str())
            .unwrap();
        if config.ssl {
            let connect_result = client_builder.connect_secure(None);
            match connect_result {
                Ok(ws_client) => {}
                Err(e) => {
                    log::error(format!("ws client {} connect error: {:?}", instance_id, e).as_str());
                }
            }
        } else {
            let connect_result = client_builder.connect_insecure();
            match connect_result {
                Ok(ws_client) => {
                    log::debug(format!("ws client {} connect success", instance_id).as_str());
                    let (mut reader, writer) = ws_client.split().unwrap();
                    log::debug("set_ws_writer: Some");
                    WsWriter::set_ws_writer(instance_id.clone(), Some(writer));
                    log::debug("set_ws_writer: Some; success;");
                    // 一直读取
                    for message in reader.incoming_messages() {
                        let message = match message {
                            Ok(m) => m,
                            Err(e) => {
                                log::warn(format!("websocket error: {:?}", e).as_str());
                                break;
                            }
                        };
                        match message {
                            OwnedMessage::Text(data) => {
                                log::debug(format!("websocket receive text: {:?}", data).as_str());
                            }
                            OwnedMessage::Binary(data) => {
                                WsReader::on_receive(instance_id.clone(), data);
                            }
                            OwnedMessage::Close(data) => {
                                match data {
                                    None => {}
                                    Some(data) => {
                                        log::warn(format!("websocket close: {:?}", data).as_str());
                                    }
                                };
                                log::debug("set_ws_writer: None");
                                WsWriter::set_ws_writer(instance_id.clone(), None);
                                log::debug("set_ws_writer: None; success;");
                                break;
                            }
                            OwnedMessage::Ping(_) => {
                                log::debug("websocket ping")
                            }
                            OwnedMessage::Pong(_) => {
                                log::debug("websocket pong")
                            }
                            _ => {
                                log::warn("websocket other")
                            }
                        }
                    }
                }
                Err(e) => {
                    log::error(format!("ws client {} connect error: {:?}", instance_id, e).as_str())
                }
            }
        }
        return "close".to_string();
    }
    fn build_ws_url(&self, config: Config) -> String {
        let platform: protobuf::EnumOrUnknown<common::Platform> = protobuf::EnumOrUnknown::from_i32(config.platform);
        let platform = platform.unwrap();
        let platform_str = match platform {
            common::Platform::IOS => { "ios" }
            common::Platform::ANDROID => { "android" }
            common::Platform::WEB => { "web" }
            common::Platform::WINDOWS => { "windows" }
            common::Platform::MAC => { "mac" }
            common::Platform::LINUX => { "linux" }
            common::Platform::Ipad => { "ipad" }
            common::Platform::AndroidPad => { "androidpad" }
        };
        format!("ws://{}:{}/ws?appId={}&userId={}&userToken={}&installId={}&platform={}&deviceModel={}&osVersion={}&appVersion={}&language={}&encoding=protobuf&extra={}",
                config.host, config.port,
                config.app_id,
                config.user_id.unwrap_or_default(),
                config.user_token.unwrap_or_default(),
                config.install_id,
                platform_str,
                config.device_model,
                config.os_version,
                env!("CARGO_PKG_VERSION").to_string(),
                config.language,
                config.custom_header,
        )
    }
}

#[cfg(test)]
mod tests {
    // use crate::store::values::WsClient;

    #[test]
    fn test_ws_client() {
        // let ws_client = WsClient::new("test".to_string());
        // ws_client.loop_reconnect();
        // std::thread::sleep(std::time::Duration::from_secs(10));
    }
}