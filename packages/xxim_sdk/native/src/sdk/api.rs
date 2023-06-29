use std::collections::HashMap;
use std::sync::{Arc, Mutex};
use std::time::Duration;
use crate::config::Config;
use lazy_static::lazy_static;
use tokio::time;
use tokio_util::sync::CancellationToken;
use crate::client::client::{Client, Context};
use crate::pb::{common, user};
use crate::store::sqlite::{sqlite_connection, sqlite_close, sqlite_destroy, sqlite_all_debug, Sqlite};
use crate::tool::{json, log, uuid};

pub struct SdkApi {
    config: Option<Config>,
    client: Option<Client>,
    instance_id: String,
}

const USER_INIT_SQL: &str = r#"CREATE TABLE IF NOT EXISTS `user_config` (
    `k` varchar(255) NOT NULL,
    `v` varchar(255) NOT NULL,
    PRIMARY KEY (`k`)
);"#;

impl SdkApi {
    pub fn init(&mut self, config_str: String) -> bool {
        // ONCE
        let config_string = config_str.as_str();
        log::info(format!("init: {}", config_string).as_str());
        let config_result = json::unmarshal(config_string);
        match config_result {
            Ok(_) => {}
            Err(e) => {
                log::error("config unmarshal error");
                log::error(e.to_string().as_str());
                return false;
            }
        }
        let mut config: Config = config_result.unwrap();
        let validate_result = config.validate();
        match validate_result {
            Ok(_) => {}
            Err(e) => {
                log::error("config validate error");
                log::error(e.to_string().as_str());
                return false;
            }
        }
        log::debug(format!("config: {:?}", config).as_str());
        self.config = Some(config);
        self.client = Some(Client::new(
            self.config.as_ref().unwrap().clone(),
        ));
        return true;
    }

    pub fn set_login_info(&mut self, token: String, user_id: String) {
        log::info(format!("set_user_token: {}, {}", token, user_id).as_str());
        let mut config = self.config.as_mut().unwrap_or_else(|| {
            log::error("config is None, please init first");
            panic!();
        });
        config.user_token = Some(token);
        config.user_id = Some(user_id);
        log::debug(format!("config: {:?}", config).as_str());
        // 初始化数据库
        self.sqlite_connection();
        sqlite_all_debug();
    }

    fn sqlite_connection(&mut self) -> Arc<Mutex<Sqlite>> {
        sqlite_connection(self.db_path(), USER_INIT_SQL)
    }

    fn db_path(&mut self) -> String {
        let config = self.config.as_mut().unwrap_or_else(|| {
            log::error("config is None, please init first");
            panic!();
        });
        let db_path = format!("{}{}-{}.db", config.db_dir, config.user_id.as_ref().unwrap(), config.app_id);
        db_path
    }

    pub fn unset_login_info(&mut self) {
        log::info("unset_user_token");
        let db_path = self.db_path();
        let mut config = self.config.as_mut().unwrap_or_else(|| {
            log::error("config is None, please init first");
            panic!();
        });
        config.user_token = None;
        config.user_id = None;
        log::debug(format!("config: {:?}", config).as_str());
        sqlite_close(db_path.clone());
        sqlite_destroy(db_path);
        sqlite_all_debug();
    }
}

lazy_static! {
    static ref SDK_INSTANCE_MAP: Mutex<HashMap<String, Arc<Mutex<SdkApi>>>> = Mutex::new(HashMap::new());
}

impl SdkApi {
    pub fn instance(instance_id: String) -> Arc<Mutex<SdkApi>> {
        let map = SDK_INSTANCE_MAP.lock().unwrap();
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


    pub fn new_instance() -> String {
        let id = uuid::uuid();
        let id_copy1 = id.clone();
        let id_copy2 = id.clone();
        let mut map = SDK_INSTANCE_MAP.lock().unwrap();
        let sdk_api = SdkApi {
            config: None,
            instance_id: id,
            client: None,
        };
        map.insert(id_copy1, Arc::new(Mutex::new(sdk_api)));
        id_copy2
    }

    pub fn destroy_instance(instance_id: String) {
        let mut map = SDK_INSTANCE_MAP.lock().unwrap();
        map.remove(&instance_id);
    }
}

impl SdkApi {
    pub fn context_with_timeout(&self, timeout: i64) -> Context {
        self.client.as_ref().unwrap().context_with_timeout(timeout)
    }
}

impl SdkApi {
    pub async fn test_client(&self) {
        let req = common::RequestHeader {
            appId: "".to_string(),
            userId: "".to_string(),
            userToken: "".to_string(),
            clientIp: "".to_string(),
            installId: "".to_string(),
            platform: Default::default(),
            gatewayPodIp: "".to_string(),
            deviceModel: "".to_string(),
            osVersion: "".to_string(),
            appVersion: "".to_string(),
            language: Default::default(),
            connectTime: 0,
            encoding: Default::default(),
            extra: "".to_string(),
            special_fields: Default::default(),
        };
        let box_req = Box::new(req);
        let result = self.client.as_ref().unwrap().request_async(
            "/test".to_string(),
            box_req,
            |resp: Box<common::ResponseHeader>| {
                log::debug(format!("resp: {:?}", resp).as_str());
            },
            |err| {
                log::error(format!("err: {:?}", err).as_str());
            },
        ).await;
    }

    async fn mock_cancel(cancel_token: CancellationToken) {
        log::warn("cancel_token.cancel()");
        time::sleep(Duration::from_millis(1)).await;
        cancel_token.cancel();
    }

    pub fn user_register(&self, trace_id: String, req: user::UserRegisterReq) {
        let box_req = Box::new(req);
        // let (cancel_token, cancel_token_clone) = self.client.as_ref().unwrap().new_cancel_token();
        // 模拟 1ms 后取消了请求，此时会on_error: canceled
        // let cancel = SdkApi::mock_cancel(cancel_token);
        // tokio::spawn(cancel);
        self.client.as_ref().unwrap().block_on(async move {
            self.client.as_ref().unwrap().request_async_cancelable(
                "/v1/user/white/userRegister".to_string(),
                box_req,
                |resp: Box<user::UserRegisterResp>| {
                    log::debug(format!("resp: {:?}", resp).as_str());
                },
                |err| {
                    log::error(format!("err: {:?}", err).as_str());
                },
                trace_id,
            ).await;
        });
    }
}