use std::net::TcpStream;
use std::sync::{Arc, RwLock, TryLockResult};
use std::thread::{sleep, spawn};
use native_tls::TlsStream;
use websocket::WebSocketResult;
use crate::pb::gateway;
use crate::store::values::{Config, WS_WRITER_INSTANCE_MAP, WsWriter};
use crate::tool::{log, proto};
use crate::tool::uuid::uuid;

impl WsWriter {
    pub fn new(id: String) -> Self {
        let mut writer = WsWriter {
            instance_id: id,
            ws_writer: None,
            ws_writer_tls: None,
        };
        writer.heartbeat();
        writer
    }

    pub fn instance(id: String) -> Arc<RwLock<WsWriter>> {
        let map = WS_WRITER_INSTANCE_MAP.read().unwrap();
        let ws_writer = map.get(id.as_str()).unwrap();
        ws_writer.clone()
    }

    fn set_ws_writer_(&mut self, ws_writer: Option<websocket::sender::Writer<TcpStream>>) {
        self.ws_writer_tls = None;
        if self.ws_writer.is_some() {
            self.ws_writer.as_ref().unwrap().shutdown().unwrap_or_default();
        }
        self.ws_writer = ws_writer;
    }

    fn set_ws_writer_tls_(&mut self, ws_writer_tls: Option<websocket::sender::Writer<TlsStream<TcpStream>>>) {
        self.ws_writer = None;
        if self.ws_writer_tls.is_some() {
            self.ws_writer_tls.as_ref().unwrap().shutdown().unwrap_or_default();
        }
        self.ws_writer_tls = ws_writer_tls;
    }

    pub fn set_ws_writer(instance_id: String, w: Option<websocket::sender::Writer<TcpStream>>) {
        log::debug("set_ws_writer");
        let mut map = WS_WRITER_INSTANCE_MAP.write().unwrap();
        log::debug("set_ws_writer: get mut map");
        let ws_writer = map.get_mut(&instance_id).unwrap();
        log::debug("set_ws_writer: get mut ws_writer");
        match ws_writer.try_write() {
            Ok(mut ws_writer) => {
                log::debug("set_ws_writer: get mut ws_writer write");
                ws_writer.set_ws_writer_(w);
                log::debug("set_ws_writer: set_ws_writer_");
                // 主动解锁
                drop(ws_writer);
            }
            Err(err) => {
                log::error(format!("set_ws_writer: try_write err: {}", err).as_str());
            }
        }
        drop(map);
    }

    pub fn set_ws_writer_tls(instance_id: String, w: Option<websocket::sender::Writer<TlsStream<TcpStream>>>) {
        let mut map = WS_WRITER_INSTANCE_MAP.write().unwrap();
        let ws_writer = map.get_mut(&instance_id).unwrap();
        let mut ws_writer = ws_writer.write().unwrap();
        ws_writer.set_ws_writer_tls_(w);
        // 主动解锁
        drop(ws_writer);
        drop(map);
    }

    fn send(&mut self, msg: Vec<u8>) -> WebSocketResult<()> {
        if self.ws_writer.is_some() {
            let ws_writer = self.ws_writer.as_mut().unwrap();
            ws_writer.send_message(&websocket::Message::binary(msg))
        } else if self.ws_writer_tls.is_some() {
            let ws_writer = self.ws_writer_tls.as_mut().unwrap();
            ws_writer.send_message(&websocket::Message::binary(msg))
        } else {
            Err(websocket::WebSocketError::NoDataAvailable)
        }
    }

    pub fn send_message(instance_id: String, msg: Vec<u8>) -> WebSocketResult<()> {
        let mut map = WS_WRITER_INSTANCE_MAP.write().unwrap();
        let ws_writer = map.get_mut(&instance_id).unwrap();
        let mut ws_writer = ws_writer.write().unwrap();
        ws_writer.send(msg)
    }

    pub fn close_connect(instance_id: String) {
        let mut map = WS_WRITER_INSTANCE_MAP.write().unwrap();
        let ws_writer = map.get_mut(&instance_id).unwrap();
        let mut ws_writer = ws_writer.write().unwrap();
        ws_writer.set_ws_writer_(None);
        ws_writer.set_ws_writer_tls_(None);
        drop(ws_writer);
        drop(map);
    }

    fn heartbeat(&mut self) {
        let instance_id = self.instance_id.clone();
        spawn(move || {
            loop {
                log::debug(format!("heartbeat: {}", instance_id.clone()).as_str());
                let instance_id = instance_id.clone();
                // let config = Config::get_config_or_none(self.instance_id.clone()).read().unwrap().clone();
                let keep_alive_second = match Config::get_config_or_none(instance_id.clone()) {
                    None => {
                        15 as u64
                    }
                    Some(config) => {
                        let config = config.read().unwrap().clone();
                        config.keep_alive_second.clone() as u64
                    }
                };
                log::debug(format!("heartbeat: {} is running, after {}s", instance_id.clone(), keep_alive_second.clone()).as_str());

                sleep(std::time::Duration::from_secs(keep_alive_second.clone()));
                let heartbeat_data = &gateway::GatewayKeepAliveReq { header: Default::default(), special_fields: Default::default() };
                let heartbeat_data = &gateway::GatewayApiRequest {
                    header: Default::default(),
                    requestId: uuid(),
                    path: "/v1/gateway/white/keepAlive".to_string(),
                    body: proto::marshal(heartbeat_data),
                    special_fields: Default::default(),
                };
                let result = WsWriter::send_message(instance_id, proto::marshal(heartbeat_data));
                if result.is_err() {
                    log::warn(format!("heartbeat error: {:?}", result.err()).as_str());
                }
            }
        });
    }
}