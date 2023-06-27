use crate::sdk::api::SdkApi;
use crate::tool::{json};
use crate::param;
use crate::param::{ApiParam, ApiResult};

pub fn new_instance() -> String {
    let instance_id = SdkApi::new_instance();
    return json::marshal(&ApiResult::success(instance_id.as_str()));
}

pub fn init(param: String) -> String {
    let req: ApiParam = json::unmarshal(param.as_str()).unwrap();
    let ok = SdkApi::instance(req.instance_id).lock().unwrap().init(req.data);
    return json::marshal(&ApiResult::success(ok.to_string().as_str()));
}

pub fn set_login_info(param: String) -> String {
    let req: ApiParam = json::unmarshal(param.as_str()).unwrap();
    let data: param::SetLoginInfoParam = json::unmarshal(req.data.as_str()).unwrap();
    SdkApi::instance(req.instance_id).lock().unwrap().set_login_info(data.token, data.user_id);
    return json::marshal(&ApiResult::success(""));
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn xxim_sdk_new_instance() {
        let result = new_instance();
        println!("{}", result);
    }

    #[test]
    fn xxim_sdk_init() {
        let result = new_instance();
        println!("{}", result);
        let resp: ApiResult = json::unmarshal(result.as_str()).unwrap();
        let result = init(json::marshal(&ApiParam {
            instance_id: resp.data,
            data: "{\"host\":\"127.0.0.1\",\"port\":34500,\"ssl\":false,\"encoding\":\"Json\",\"app_id\":\"\",\"install_id\":\"\",\"platform\":0,\"device_model\":\"MacOS\",\"os_version\":\"10.15.7\",\"language\":0,\"request_timeout_millisecond\":10,\"user_token\":\"\",\"custom_header\":\"\",\"keep_alive_second\":30,\"log_level\":\"Debug\"}".to_string(),
        }));
        println!("{}", result);
        let result = new_instance();
        println!("{}", result);
        let resp: ApiResult = json::unmarshal(result.as_str()).unwrap();
        let result = init(json::marshal(&ApiParam {
            instance_id: resp.data,
            data: "{\"host\":\"192.168.1.1\",\"port\":34500,\"ssl\":false,\"encoding\":\"Json\",\"app_id\":\"\",\"install_id\":\"\",\"platform\":0,\"device_model\":\"MacOS\",\"os_version\":\"10.15.7\",\"language\":0,\"request_timeout_millisecond\":10,\"user_token\":\"\",\"custom_header\":\"\",\"keep_alive_second\":30,\"log_level\":\"Debug\"}".to_string(),
        }));
        println!("{}", result);
    }

    #[test]
    fn xxim_sdk_set_login_info() {
        let result = new_instance();
        println!("{}", result);
        let resp: ApiResult = json::unmarshal(result.as_str()).unwrap();
        let instance_id = resp.data;
        let result = init(json::marshal(&ApiParam {
            instance_id: instance_id.clone(),
            data: "{\"host\":\"127.0.0.1\",\"port\":34500,\"ssl\":false,\"encoding\":\"Json\",\"app_id\":\"app_id\",\"install_id\":\"\",\"platform\":0,\"device_model\":\"MacOS\",\"os_version\":\"10.15.7\",\"language\":0,\"request_timeout_millisecond\":10,\"user_token\":\"\",\"custom_header\":\"\",\"keep_alive_second\":30,\"log_level\":\"Debug\", \"db_dir\": \".\"}".to_string(),
        }));
        println!("{}", result);
        let result = set_login_info(json::marshal(&ApiParam {
            instance_id: instance_id.clone(),
            data: "{\"token\":\"\",\"user_id\":\"user_id\"}".to_string(),
        }));
        println!("{}", result);
    }
}