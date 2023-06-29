use prost::bytes::Bytes;
use crate::sdk::api::SdkApi;
use crate::tool::{json, log, proto};
use crate::param::*;
use crate::pb::user;

pub fn new_instance() -> String {
    let instance_id = SdkApi::new_instance();
    return json::marshal(&ApiResult::success(instance_id.as_str()));
}

pub fn destroy_instance(instance_id: String) -> String {
    SdkApi::destroy_instance(instance_id);
    return json::marshal(&ApiResult::success(""));
}

pub fn init(instance_id: String, params: String) -> String {
    let ok = SdkApi::instance(instance_id).lock().unwrap().init(params);
    return json::marshal(&ApiResult::success(ok.to_string().as_str()));
}

pub fn set_login_info(instance_id: String, params: String) -> String {
    let data: SetLoginInfoParam = json::unmarshal(params.as_str()).unwrap();
    SdkApi::instance(instance_id).lock().unwrap().set_login_info(data.token, data.user_id);
    return json::marshal(&ApiResult::success(""));
}

pub fn unset_login_info(instance_id: String) -> String {
    SdkApi::instance(instance_id).lock().unwrap().unset_login_info();
    return json::marshal(&ApiResult::success(""));
}

pub fn context_with_timeout(instance_id: String, timeout_mills: i64) -> String {
    log::debug(format!("context_with_timeout: {}", timeout_mills).as_str());
    let context = SdkApi::instance(instance_id).lock().unwrap().context_with_timeout(timeout_mills);
    context.trace_id
}

pub fn user_register_api(instance_id: String, ctx: String, protobuf: Vec<u8>) -> String {
    let pb: user::UserRegisterReq = proto::unmarshal(Bytes::from(protobuf));
    let x = SdkApi::instance(instance_id).lock().unwrap().user_register(ctx, pb);
    return json::marshal(&ApiResult::success(""));
}
