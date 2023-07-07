use std::sync::{Arc, RwLock};
use std::sync::mpsc::{Sender};
use crate::pb::gateway::GatewayApiRequest;
use crate::store::api_handler::{Error, ErrorCode};
use crate::store::values::MESH_REQUEST_CHANNEL_MAP;

pub struct MeshRequest {}

impl MeshRequest {
    pub fn set_sender(instance_id: String, sender: Sender<GatewayApiRequest>) {
        let mut map = MESH_REQUEST_CHANNEL_MAP.write().unwrap();
        // 判断之前的sender是否存在，如果存在则关闭
        match map.get(instance_id.as_str()) {
            None => {}
            Some(_sender) => {
                map.remove(instance_id.as_str());
            }
        };
        map.insert(instance_id, Arc::new(RwLock::new(sender)));
    }

    pub fn remove_sender(instance_id: String) {
        let mut map = MESH_REQUEST_CHANNEL_MAP.write().unwrap();
        // 判断之前的sender是否存在，如果存在则关闭
        match map.get(instance_id.as_str()) {
            None => {}
            Some(_sender) => {
                map.remove(instance_id.as_str());
            }
        };
    }

    pub fn request(instance_id: String, request: GatewayApiRequest) -> Result<(), Error> {
        let map = MESH_REQUEST_CHANNEL_MAP.read().unwrap();
        let result = match map.get(instance_id.as_str()) {
            None => {
                return Err(Error { code: ErrorCode::RequestError, message: "no connecton".to_string() });
            }
            Some(sender) => {
                let res = match sender.read().unwrap().send(request) {
                    Ok(_) => {
                        Ok(())
                    }
                    Err(err) => {
                        Err(Error { code: ErrorCode::RequestError, message: err.to_string() })
                    }
                };
                res
            }
        };
        result
    }
}