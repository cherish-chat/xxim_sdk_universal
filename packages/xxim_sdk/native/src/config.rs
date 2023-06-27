use std::time;

use serde::{Deserialize, Serialize};

use crate::store;
use crate::tool;

//Encoding 数据序列化方式
#[derive(PartialEq, Serialize, Deserialize, Debug)]
pub enum Encoding {
    Json,
    Protobuf,
}

//Config 配置
#[derive(Serialize, Deserialize, Debug)]
pub struct Config {
    // host 服务器IP或域名，必填
    pub host: String,
    // port 服务器端口，必填
    pub port: u16,
    // ssl 是否使用SSL，选填，默认为false
    pub ssl: bool,
    // encoding 数据序列化方式，选填，默认为json，可选json、protobuf
    pub encoding: Encoding,
    // appId 应用ID，选填，默认为空
    pub app_id: String,
    // installId 安装ID，选填，默认会生成一个随机id
    pub install_id: String,
    // platform 平台，必填，可选android、ios、web、win、mac、linux，请查看pb.Platform
    pub platform: i32,
    // deviceModel 设备型号，选填，默认为空
    pub device_model: String,
    // osVersion 操作系统版本，选填，默认为空
    pub os_version: String,
    // language 语言，选填，默认为中文。请查看pb.I18nLanguage
    pub language: i32,
    // requestTimeout 请求超时时间，选填，默认为10秒
    pub request_timeout_millisecond: i32,
    // userToken 用户Token，选填，默认为空
    pub user_token: Option<String>,
    // userId 用户ID，选填，默认为空
    pub user_id: Option<String>,
    // dbDir 数据库目录，必填
    pub db_dir: String,
    // customHeader 自定义请求头，选填，默认为空
    pub custom_header: String,
    // keepAliveSecond 保持连接时间，选填，默认为30s
    pub keep_alive_second: i32,
    // logLevel 日志级别，选填，默认为info，可选debug、info、warn、error
    pub log_level: tool::log::Level,
}
const APP_CONFIG_GLOBAL_DB_FILENAME: &str = "xxim_sdk_core_global.db";

//Config.Validate 验证配置
impl Config {
    pub fn validate(&mut self) -> Result<(), String> {
        if self.host.is_empty() {
            return Err("host is empty".to_string());
        }
        if self.port == 0 {
            return Err("port is empty".to_string());
        }
        if self.db_dir.is_empty() {
            return Err("db_dir is empty".to_string());
        } else if !self.db_dir.ends_with("/") {
            self.db_dir.push_str("/");
        }
        // 判断 db_dir 是否存在 如果不存在则创建
        {
            let db_dir = self.db_dir.clone();
            let db_dir = db_dir.as_str();
            if !std::path::Path::new(db_dir).exists() {
                std::fs::create_dir_all(db_dir).unwrap();
            }
        }
        if self.install_id.is_empty() {
            let install_id_result = self.get_app_config().find_by_k("install_id");
            if install_id_result.is_err() {
                tool::log::info("install_id is empty, init install_id");
                let install_id = tool::uuid::uuid();
                self.get_app_config().save("install_id", install_id.as_str()).unwrap();
                self.install_id = install_id;
            } else {
                self.install_id = install_id_result.unwrap();
            }
        }
        if self.device_model.is_empty() {
            return Err("device_model is empty".to_string());
        }
        if self.os_version.is_empty() {
            return Err("os_version is empty".to_string());
        }
        if self.request_timeout_millisecond == 0 {
            self.request_timeout_millisecond = 10;
        }
        if self.keep_alive_second == 0 {
            self.keep_alive_second = 30;
        }
        tool::log::set_level(self.log_level);
        Ok(())
    }

    pub fn get_app_config(&self) -> store::app_config::AppConfig {
        store::app_config::AppConfig {
            db_path: format!("{}{}", self.db_dir, APP_CONFIG_GLOBAL_DB_FILENAME).to_string(),
        }
    }
}
