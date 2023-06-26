use crate::config::Config;
use crate::sdk::api::SdkApi;
use crate::sdk::imp;
use crate::sdk::imp::SdkImp;
use crate::tool::{log, json};

pub fn init(config_str: String) {
    SdkImp::instance().lock().unwrap().init(config_str);
}

pub fn set_user_token(token: String) {
    SdkImp::instance().lock().unwrap().set_user_token(token);
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn xxim_sdk_init() {
        init("{\"host\":\"127.0.0.1\",\"port\":34500,\"ssl\":false,\"encoding\":\"Json\",\"app_id\":\"\",\"install_id\":\"\",\"platform\":0,\"device_model\":\"MacOS\",\"os_version\":\"10.15.7\",\"language\":0,\"request_timeout_millisecond\":10,\"user_token\":\"\",\"custom_header\":\"\",\"keep_alive_second\":30,\"log_level\":\"Debug\"}".to_string());
    }

    #[test]
    fn xxim_sdk_set_user_token() {
        xxim_sdk_init();
        set_user_token("token".to_string());
    }

}