use crate::config::Config;
use crate::tool::{log, json};

pub struct XximSdk {}

impl XximSdk {
    pub fn init(config_str: String) {
        let config_string = config_str.as_str();
        log::info(config_string);
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
    }
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn xxim_sdk_init() {
        XximSdk::init("{}".to_string());
    }
}