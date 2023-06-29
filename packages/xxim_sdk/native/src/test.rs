#[cfg(test)]
#[allow(non_snake_case)]
mod tests {
    use std::collections::HashMap;
    use std::thread;
    use std::time::Duration;
    use crate::api::*;
    use crate::param::*;
    use crate::pb::user;
    use crate::tool::*;
    use super::*;
    use crate::sdk::api::*;

    macro_rules! aw {
        ($e:expr)=>{
            tokio_test::block_on($e)
        }
    }

    #[test]
    fn test_1() {
        let result = new_instance();
        println!("{}", result);
        let resp: ApiResult = json::unmarshal(result.as_str()).unwrap();
        let instance_id = resp.data;
        let result = init(instance_id.clone(), "{\"host\":\"127.0.0.1\",\"port\":34500,\"ssl\":false,\"encoding\":\"Json\",\"app_id\":\"app_id\",\"install_id\":\"\",\"platform\":0,\"device_model\":\"MacOS\",\"os_version\":\"10.15.7\",\"language\":0,\"request_timeout_millisecond\":60000,\"user_token\":\"\",\"custom_header\":\"\",\"keep_alive_second\":30,\"log_level\":\"Debug\", \"db_dir\": \".\"}".to_string());
        println!("{}", result);
        let result = set_login_info(instance_id.clone(),"{\"token\":\"xxx\",\"user_id\":\"user_id\"}".to_string());
        println!("{}", result);

        let result = unset_login_info(instance_id.clone());
        println!("{}", result);
        {
            let accountMap: HashMap<String, String> = HashMap::new();
            let profileMap: HashMap<String, String> = HashMap::new();
            let extraMap: HashMap<String, String> = HashMap::new();
            let verifyMap: HashMap<String, String> = HashMap::new();
            // aw! (SdkApi::instance(instance_id.clone()).lock().unwrap().test_client());
            let ctx = context_with_timeout(instance_id.clone(), 1);
            let req = user::UserRegisterReq {
                header: protobuf::MessageField::none(),
                userId: "rust1".to_string(),
                avatar: Some("avatar".to_string()),
                nickname: Some("rust1".to_string()),
                registerTime: None,
                accountMap,
                profileMap,
                extraMap,
                verifyMap,
                special_fields: protobuf::SpecialFields::default(),
            };
            user_register_api(instance_id.clone(), ctx, proto::marshal(&req));
        }

        // sleep 3s
        thread::sleep(Duration::from_secs(3));
    }
    //
    // #[test]
    // fn xxim_sdk_new_instance() {
    //     let result = new_instance();
    //     println!("{}", result);
    // }
    //
    // #[test]
    // fn xxim_sdk_init() {
    //     let result = new_instance();
    //     println!("{}", result);
    //     let resp: ApiResult = json::unmarshal(result.as_str()).unwrap();
    //     let result = init(json::marshal(&ApiParam {
    //         instance_id: resp.data,
    //         data: "{\"host\":\"127.0.0.1\",\"port\":34500,\"ssl\":false,\"encoding\":\"Json\",\"app_id\":\"\",\"install_id\":\"\",\"platform\":0,\"device_model\":\"MacOS\",\"os_version\":\"10.15.7\",\"language\":0,\"request_timeout_millisecond\":10,\"user_token\":\"\",\"custom_header\":\"\",\"keep_alive_second\":30,\"log_level\":\"Debug\"}".to_string(),
    //     }));
    //     println!("{}", result);
    //     let result = new_instance();
    //     println!("{}", result);
    //     let resp: ApiResult = json::unmarshal(result.as_str()).unwrap();
    //     let result = init(json::marshal(&ApiParam {
    //         instance_id: resp.data,
    //         data: "{\"host\":\"192.168.1.1\",\"port\":34500,\"ssl\":false,\"encoding\":\"Json\",\"app_id\":\"\",\"install_id\":\"\",\"platform\":0,\"device_model\":\"MacOS\",\"os_version\":\"10.15.7\",\"language\":0,\"request_timeout_millisecond\":10,\"user_token\":\"\",\"custom_header\":\"\",\"keep_alive_second\":30,\"log_level\":\"Debug\"}".to_string(),
    //     }));
    //     println!("{}", result);
    // }
    //
    // #[test]
    // fn xxim_sdk_set_login_info() {
    //     let result = new_instance();
    //     println!("{}", result);
    //     let resp: ApiResult = json::unmarshal(result.as_str()).unwrap();
    //     let instance_id = resp.data;
    //     let result = init(json::marshal(&ApiParam {
    //         instance_id: instance_id.clone(),
    //         data: "{\"host\":\"127.0.0.1\",\"port\":34500,\"ssl\":false,\"encoding\":\"Json\",\"app_id\":\"app_id\",\"install_id\":\"\",\"platform\":0,\"device_model\":\"MacOS\",\"os_version\":\"10.15.7\",\"language\":0,\"request_timeout_millisecond\":10,\"user_token\":\"\",\"custom_header\":\"\",\"keep_alive_second\":30,\"log_level\":\"Debug\", \"db_dir\": \".\"}".to_string(),
    //     }));
    //     println!("{}", result);
    //     let result = set_login_info(json::marshal(&ApiParam {
    //         instance_id: instance_id.clone(),
    //         data: "{\"token\":\"\",\"user_id\":\"user_id\"}".to_string(),
    //     }));
    //     println!("{}", result);
    //
    //     let result = unset_login_info(json::marshal(&ApiParam {
    //         instance_id: instance_id.clone(),
    //         data: "".to_string(),
    //     }));
    //     println!("{}", result);
    //
    //     let result = destroy_instance(json::marshal(&ApiParam {
    //         instance_id: instance_id.clone(),
    //         data: "".to_string(),
    //     }));
    //     println!("{}", result);
    //
    //     let result = init(json::marshal(&ApiParam {
    //         instance_id: instance_id.clone(),
    //         data: "{\"host\":\"127.0.0.1\",\"port\":34500,\"ssl\":false,\"encoding\":\"Json\",\"app_id\":\"app_id\",\"install_id\":\"\",\"platform\":0,\"device_model\":\"MacOS\",\"os_version\":\"10.15.7\",\"language\":0,\"request_timeout_millisecond\":10,\"user_token\":\"\",\"custom_header\":\"\",\"keep_alive_second\":30,\"log_level\":\"Debug\", \"db_dir\": \".\"}".to_string(),
    //     }));
    //     println!("{}", result);
    // }
    //
    // macro_rules! aw {
    //     ($e:expr)=>{
    //         tokio_test::block_on($e)
    //     }
    // }
    //
    // #[test]
    // fn test_client() {
    //     let result = new_instance();
    //     println!("{}", result);
    //     let resp: ApiResult = json::unmarshal(result.as_str()).unwrap();
    //     let instance_id = resp.data;
    //     let result = init(json::marshal(&ApiParam {
    //         instance_id: instance_id.clone(),
    //         data: "{\"host\":\"127.0.0.1\",\"port\":34500,\"ssl\":false,\"encoding\":\"Json\",\"app_id\":\"app_id\",\"install_id\":\"\",\"platform\":0,\"device_model\":\"MacOS\",\"os_version\":\"10.15.7\",\"language\":0,\"request_timeout_millisecond\":60000,\"user_token\":\"\",\"custom_header\":\"\",\"keep_alive_second\":30,\"log_level\":\"Debug\", \"db_dir\": \".\"}".to_string(),
    //     }));
    //     println!("{}", result);
    //     let result = set_login_info(json::marshal(&ApiParam {
    //         instance_id: instance_id.clone(),
    //         data: "{\"token\":\"xxx\",\"user_id\":\"user_id\"}".to_string(),
    //     }));
    //     println!("{}", result);
    //
    //     let result = unset_login_info(json::marshal(&ApiParam {
    //         instance_id: instance_id.clone(),
    //         data: "".to_string(),
    //     }));
    //     println!("{}", result);
    //     {
    //         let accountMap: HashMap<String, String> = HashMap::new();
    //         let profileMap: HashMap<String, String> = HashMap::new();
    //         let extraMap: HashMap<String, String> = HashMap::new();
    //         let verifyMap: HashMap<String, String> = HashMap::new();
    //         // aw! (SdkApi::instance(instance_id.clone()).lock().unwrap().test_client());
    //         SdkApi::instance(instance_id.clone()).lock().unwrap().user_register("".to_string(), user::UserRegisterReq{
    //             header: protobuf::MessageField::none(),
    //             userId: "rust1".to_string(),
    //             avatar: Some("avatar".to_string()),
    //             nickname: Some("rust1".to_string()),
    //             registerTime: None,
    //             accountMap,
    //             profileMap,
    //             extraMap,
    //             verifyMap,
    //             special_fields: protobuf::SpecialFields::default(),
    //         });
    //     }
    //
    //     // sleep 3s
    //     thread::sleep(Duration::from_secs(3));
    // }
}

