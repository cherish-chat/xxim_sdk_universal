use std::sync::{Arc, RwLock};
use std::thread::{sleep};
use crate::store::values::{Config, WS_CLIENT_INSTANCE_MAP, WsClient};
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
        loop {
            let config = Config::get_config(self.instance_id.clone()).lock().unwrap().clone();
            if config.user_id.is_none() {
                log::info(format!("ws client {} user_id is none, reconnect task stop", self.instance_id).as_str());
                return;
            }
            log::info(format!("ws client {} start connect", self.instance_id).as_str());
            let end_reason = self.reconnect();
            log::info(format!("ws client {} end connect, reason: {}", self.instance_id, end_reason).as_str());
            sleep(std::time::Duration::from_secs(1));
        }
    }

    pub fn loop_reconnect(instance_id: String) {
        std::thread::spawn(move || {
            let ws_client = WsClient::instance(instance_id.clone());
            let ws_client = ws_client.read().unwrap();
            ws_client.loop_reconnect_();
        });
    }

    pub fn reconnect(&self) -> String {
        let instance_id = self.instance_id.clone();
        let config = Config::get_config(instance_id.clone()).lock().unwrap().clone();
        if config.user_id.is_none() {
            return "logout".to_string();
        }
        for i in 0..10 {
            log::info(format!("ws client {} try connect, count: {}", instance_id, i).as_str());
            sleep(std::time::Duration::from_secs(1));
        }
        return "close".to_string();
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