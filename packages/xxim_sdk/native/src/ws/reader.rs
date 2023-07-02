use std::sync::{Arc, RwLock};
use crate::store::values::{WS_READER_INSTANCE_MAP, WsReader};
use crate::tool::log;

impl WsReader {
    pub fn new(id: String) -> Self {
        WsReader {
            instance_id: id,
        }
    }

    pub fn instance(id: String) -> Arc<RwLock<WsReader>> {
        let map = WS_READER_INSTANCE_MAP.read().unwrap();
        let ws_reader = map.get(id.as_str()).unwrap();
        ws_reader.clone()
    }

    fn on_receive_(&self, data: Vec<u8>) {
        log::debug("on_receive: websocket receive binary");
    }

    pub fn on_receive(instance_id:String, data: Vec<u8>) {
        let reader = WsReader::instance(instance_id.clone());
        let reader = reader.read().unwrap();
        reader.on_receive_(data);
    }
}