use std::sync::{Arc, RwLock};
use flutter_rust_bridge::{StreamSink};
use crate::store::values::{SDK_INSTANCE_MAP, CONFIG_INSTANCE_MAP, SdkApi, Config,
                           STREAM_INSTANCE_MAP, Sqlite, WEBSOCKET_CLIENT_INSTANCE_MAP,
                           API_READER_INSTANCE_MAP,
                           ApiReader, MeshClient, DEFAULT_ICE_SERVERS, WebsocketClient};
use crate::tool::{log};

const USER_INIT_SQL: &str = r#"CREATE TABLE IF NOT EXISTS `user_config` (
    `k` varchar(255) NOT NULL,
    `v` varchar(255) NOT NULL,
    PRIMARY KEY (`k`)
);"#;

impl SdkApi {
    pub fn new(
        &mut self,
        net: Option<i32>,// 0: websocket 直连peer；1: webrtc p2p连接peer；
        ice_servers: Option<Vec<String>>,
        host: String,
        port: u16,
        ssl: bool,
        app_id: Option<String>,
        install_id: Option<String>,
        platform: i32,
        device_model: String,
        os_version: String,
        request_timeout_millisecond: i32,
        db_dir: String,
        custom_header: Option<String>,
        keep_alive_second: i32,
        log_level: i32,
    ) -> bool {
        let config: Config = Config {
            instance_id: self.instance_id.clone(),
            host,
            port,
            ssl,
            net: match net.clone() {
                Some(net) => net,
                None => 0,
            },
            ice_servers: match net.clone() {
                None => { vec![] }
                Some(net) => {
                    match net {
                        1 => match ice_servers {
                            None => { DEFAULT_ICE_SERVERS.clone() }
                            Some(ice_servers) => {
                                if ice_servers.is_empty() {
                                    DEFAULT_ICE_SERVERS.clone()
                                } else {
                                    ice_servers
                                }
                            }
                        },
                        _ => vec![],
                    }
                }
            },
            app_id: app_id.unwrap_or_default(),
            install_id: install_id.unwrap_or_default(),
            platform,
            device_model,
            os_version,
            request_timeout_millisecond,
            user_token: None,
            user_id: None,
            db_dir,
            custom_header: custom_header.unwrap_or_default(),
            keep_alive_second,
            log_level,
        };
        {
            let validate_result = Config::validate(config);
            let res = match validate_result {
                Ok(config) => {
                    let mut map = CONFIG_INSTANCE_MAP.write().unwrap();
                    map.insert(self.instance_id.clone(), Arc::new(RwLock::new(config.clone())));
                    drop(map);
                    true
                }
                Err(e) => {
                    log::error("config validate error");
                    log::error(e.to_string().as_str());
                    false
                }
            };
            MeshClient::loop_heartbeat(self.instance_id.clone());
            res
        }
    }

    pub fn unset_login_info(&self) -> String {
        log::info("unset_user_token");
        let mut map = CONFIG_INSTANCE_MAP.write().unwrap();
        let config_lock = map.get_mut(&self.instance_id).unwrap();
        let mut config = config_lock.write().unwrap();
        let db_path = format!("{}{}-{}.db", config.db_dir, config.user_id.as_ref().unwrap(), config.app_id);
        config.user_token = None;
        config.user_id = None;
        log::debug(format!("config: {:?}", config).as_str());
        drop(config);
        drop(map);
        // TODO: 断开连接
        // WsClient::close_connect(self.instance_id.clone());
        Sqlite::sqlite_close(db_path.clone());
        Sqlite::sqlite_destroy(db_path);
        Sqlite::sqlite_all_debug();
        MeshClient::reset_user_id(self.instance_id.clone())
    }

    pub fn preset_stream(&self, stream: StreamSink<Vec<u8>>) {
        log::info("preset_stream");
        let mut map = STREAM_INSTANCE_MAP.write().unwrap();
        map.insert(self.instance_id.clone(), stream);
    }

    pub fn wait_stream_ready(&self) -> String {
        let id = self.instance_id.clone();
        loop {
            // 不一定能申请锁成功
            let map_lock_result = STREAM_INSTANCE_MAP.read();
            match map_lock_result {
                Ok(map) => {
                    let mut clone_map = map.clone();
                    let stream_sink_result = clone_map.get_mut(id.as_str());
                    if stream_sink_result.is_some() {
                        log::info("stream ready");
                        break;
                    } else {
                        // 睡眠 1ms
                        log::debug(format!("stream not ready, id: {}", id.clone()).as_str());
                        std::thread::sleep(std::time::Duration::from_millis(1));
                        continue;
                    }
                }
                Err(_) => {
                    // 睡眠 1ms
                    log::debug("lock map failed");
                    std::thread::sleep(std::time::Duration::from_millis(1));
                    continue;
                }
            }
        }
        return "ok".to_string();
    }

    pub fn set_login_info(&self, token: String, user_id: String) -> String {
        log::info(format!("set_user_token: {}, {}", token, user_id).as_str());
        let instance_id = self.instance_id.clone();
        let instance_id_clone = self.instance_id.clone();
        let mut map = CONFIG_INSTANCE_MAP.write().unwrap();
        let config = map.get_mut(&instance_id).unwrap();
        let mut config = config.write().unwrap();
        config.user_token = Some(token.clone());
        config.user_id = Some(user_id.clone());
        log::debug(format!("config: {:?}", config).as_str());
        // 初始化数据库
        let db_path = format!("{}{}-{}.db", config.db_dir, config.user_id.as_ref().unwrap(), config.app_id);
        drop(config);
        drop(map);
        Sqlite::get_connection(db_path, USER_INIT_SQL);
        Sqlite::sqlite_all_debug();
        MeshClient::reset_user_id(instance_id_clone.clone())
    }
}

impl SdkApi {
    pub fn instance(instance_id: String) -> Arc<RwLock<SdkApi>> {
        let map = SDK_INSTANCE_MAP.read().unwrap();
        let instance = map.get(&instance_id);
        match instance {
            Some(instance) => {
                return instance.clone();
            }
            None => {
                log::error(format!("instance not found: {}", instance_id).as_str());
                panic!();
            }
        }
    }

    pub fn new_instance(id: String) {
        log::debug(format!("new_instance: {}", id.clone()).as_str());
        let mut map = SDK_INSTANCE_MAP.write().unwrap();
        let sdk_api = SdkApi {
            instance_id: id.clone(),
        };
        map.insert(id.clone(), Arc::new(RwLock::new(sdk_api)));
        drop(map);

        // let mut map = WEBSOCKET_CLIENT_INSTANCE_MAP.write().unwrap();
        // map.insert(id.clone(), Arc::new(RwLock::new(WebsocketClient::new(id.clone()))));
        // drop(map);

        MeshClient::loop_reconnect(id.clone());

        let mut map = API_READER_INSTANCE_MAP.write().unwrap();
        map.insert(id.clone(), Arc::new(RwLock::new(ApiReader::new(id.clone()))));
        drop(map);
    }

    pub fn destroy_instance(instance_id: String) {
        let mut map = SDK_INSTANCE_MAP.write().unwrap();
        map.remove(&instance_id);

        let mut map = WEBSOCKET_CLIENT_INSTANCE_MAP.write().unwrap();
        map.remove(&instance_id);

        let mut map = API_READER_INSTANCE_MAP.write().unwrap();
        map.remove(&instance_id);
    }
}
