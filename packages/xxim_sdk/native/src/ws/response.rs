use std::sync::{Arc, RwLock};
use std::sync::mpsc::{Receiver};
use std::time::Duration;
use crate::pb::{common, gateway};
use crate::store::values::{WS_RESPONSE_SENDER_MAP};
use crate::tool::log;

pub struct WsResponse {}

impl WsResponse {
    pub fn new(uuid: String, timeout: Duration) -> Receiver<gateway::GatewayApiResponse> {
        let (sender, receiver) = std::sync::mpsc::sync_channel(1);
        let mut map = WS_RESPONSE_SENDER_MAP.write().unwrap();
        map.insert(uuid.clone(), Arc::new(RwLock::new(sender)));
        drop(map);
        // 延迟移除
        let uuid_ = uuid.clone();
        std::thread::spawn(move || {
            WsResponse::delay_remove(uuid_, timeout);
        });
        receiver
    }

    fn delay_remove(uuid: String, timeout: Duration) {
        std::thread::sleep(timeout);
        let mut map = WS_RESPONSE_SENDER_MAP.write().unwrap();
        // get
        match map.get(&uuid) {
            None => {}
            Some(sender) => {
                let sender = sender.read().unwrap();
                let timeout_header = common::ResponseHeader {
                    code: protobuf::EnumOrUnknown::from(common::ResponseCode::TIMEOUT),
                    actionType: Default::default(),
                    actionData: "".to_string(),
                    extra: "".to_string(),
                    special_fields: Default::default(),
                };
                match sender.send(gateway::GatewayApiResponse {
                    header: protobuf::MessageField::from(Some(timeout_header)),
                    requestId: uuid.clone(),
                    path: "".to_string(),
                    body: vec![],
                    special_fields: Default::default(),
                }) {
                    Ok(_) => {
                        log::debug(
                            format!("delay_remove: send timeout: {}", uuid).as_str()
                        );
                    }
                    Err(e) => {
                        log::warn(
                            format!("delay_remove: send timeout err: {}", e).as_str()
                        );
                    }
                };
                drop(sender);
            }
        };
        std::thread::sleep(Duration::from_millis(100));
        map.remove(&uuid);
    }

    pub fn on_response(uuid: String, data: gateway::GatewayApiResponse) {
        let map = WS_RESPONSE_SENDER_MAP.read().unwrap();
        match map.get(&uuid) {
            None => {}
            Some(sender) => {
                let sender = sender.read().unwrap();
                sender.send(data).unwrap();
                drop(sender);
            }
        };
        // 立即删除
        drop(map);
        let mut map = WS_RESPONSE_SENDER_MAP.write().unwrap();
        map.remove(&uuid);
        drop(map);
    }
}