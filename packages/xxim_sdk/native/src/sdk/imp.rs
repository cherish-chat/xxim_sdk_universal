use std::fmt::format;
use std::sync::{Arc, Mutex};
use crate::config::Config;
use crate::sdk::api::SdkApi;
use lazy_static::lazy_static;
use crate::tool::{json, log};


pub struct SdkImp {
    config: Option<Config>,
}

impl SdkApi for SdkImp {
    fn init(&mut self, config_str: String) {
        // ONCE
        static ONCE: std::sync::Once = std::sync::Once::new();
        ONCE.call_once(|| {
            let config_string = config_str.as_str();
            log::info(format!("init: {}", config_string).as_str());
            let mut config: Config = json::unmarshal(config_string).unwrap_or_else(|e| {
                log::error("config unmarshal error");
                log::error(e.to_string().as_str());
                panic!();
            });
            config.validate().unwrap_or_else(|e| {
                log::error("config validate error");
                log::error(e.to_string().as_str());
                panic!();
            });
            log::debug(format!("config: {:?}", config).as_str());
            self.config = Some(config);
        });
    }

    fn set_user_token(&mut self, token: String) {
        log::info(format!("set_user_token: {}", token).as_str());
        let mut config = self.config.as_mut().unwrap_or_else(|| {
            log::error("config is None, please init first");
            panic!();
        });
        config.user_token = token;
        log::debug(format!("config: {:?}", config).as_str());
    }
}

lazy_static! {
    static ref SDK_INSTANCE: Arc<Mutex<SdkImp>> = Arc::new(Mutex::new(SdkImp {
        config: None,
    }));
}

impl SdkImp {
    pub fn instance() -> Arc<Mutex<SdkImp>> {
        SDK_INSTANCE.clone()
    }
}