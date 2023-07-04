use std::sync::{Arc, RwLock};
use std::thread::{sleep, spawn};
use std::time::Duration;
use crate::store::values::{Config, MESH_CLIENT_INSTANCE_MAP, MeshClient};
use crate::tool::log;

impl MeshClient {
    pub fn new(instance_id: String) -> Self {
        MeshClient {
            instance_id,
        }
    }

    pub fn instance(instance_id: String) -> Arc<RwLock<MeshClient>> {
        let map = MESH_CLIENT_INSTANCE_MAP.read().unwrap();
        let client = map.get(instance_id.as_str()).unwrap();
        client.clone()
    }

    pub(crate) fn loop_reconnect(instance_id: String) {
        spawn(move || {
            loop {
                match Config::get_config_or_none(instance_id.clone()) {
                    None => {
                        sleep(Duration::from_millis(50));
                        continue;
                    }
                    Some(config) => {
                        let config = config.read().unwrap();
                        if config.net != 1 {
                            return;
                        } else {
                            break;
                        }
                    }
                };
            }
            loop {
                let instance_id = instance_id.clone();
                log::info(format!("mesh client {} start connect", instance_id).as_str());
                sleep(Duration::from_secs(5));
            }
        });
    }
}