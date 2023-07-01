use std::sync::{Arc, Mutex};

use crate::store;
use crate::store::values::{Config, CONFIG_INSTANCE_MAP};
use crate::tool;

const APP_CONFIG_GLOBAL_DB_FILENAME: &str = "xxim_sdk_core_global.db";

//Config.Validate 验证配置
impl Config {
    pub fn get_config(id: String) -> Arc<Mutex<Config>> {
        let map = CONFIG_INSTANCE_MAP.write().unwrap();
        let instance = map.get(&id);
        return match instance {
            Some(instance) => {
                instance.clone()
            }
            None => {
                panic!("config [{}] not found", id.clone())
            }
        };
    }
    
    pub fn validate(mut config: Config) -> Result<Config, String> {
        if config.host.is_empty() {
            return Err("host is empty".to_string());
        }
        if config.port == 0 {
            return Err("port is empty".to_string());
        }
        if config.db_dir.is_empty() {
            return Err("db_dir is empty".to_string());
        } else if !config.db_dir.ends_with("/") {
            config.db_dir.push_str("/");
        }
        // 判断 db_dir 是否存在 如果不存在则创建
        {
            let db_dir = config.db_dir.clone();
            let db_dir = db_dir.as_str();
            if !std::path::Path::new(db_dir).exists() {
                std::fs::create_dir_all(db_dir).unwrap();
            }
        }
        if config.install_id.is_empty() {
            let install_id_result = config.get_app_config().find_by_k("install_id");
            if install_id_result.is_err() {
                tool::log::info("install_id is empty, init install_id");
                let install_id = tool::uuid::uuid();
                config.get_app_config().save("install_id", install_id.as_str()).unwrap();
                config.install_id = install_id;
            } else {
                config.install_id = install_id_result.unwrap();
            }
        }
        if config.device_model.is_empty() {
            return Err("device_model is empty".to_string());
        }
        if config.os_version.is_empty() {
            return Err("os_version is empty".to_string());
        }
        if config.request_timeout_millisecond == 0 {
            config.request_timeout_millisecond = 10;
        }
        if config.keep_alive_second == 0 {
            config.keep_alive_second = 30;
        }
        tool::log::set_level(tool::log::Level::from_i32(config.log_level.clone()));
        tool::log::debug(format!("config: {:?}", config.clone()).as_str());
        Ok(config)
    }

    pub fn get_app_config(&self) -> store::app_config::AppConfig {
        store::app_config::AppConfig {
            db_path: format!("{}{}", self.db_dir, APP_CONFIG_GLOBAL_DB_FILENAME).to_string(),
        }
    }
}
