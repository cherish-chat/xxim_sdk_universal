use flutter_rust_bridge::{StreamSink};
use prost::bytes::Bytes;
use crate::tool::{json, proto};
use crate::param::*;
use crate::pb::{user, conversation as friend, conversation as group, message as message, message as notice, gateway};
use crate::store::api_handler::ApiClient;
use crate::store::values::{SdkApi};


/// sdk暴露的方法的调用结果

/// new_instance: 创建sdk实例
/// 你可以创建多个sdk实例，每个实例都有自己的独立的连接
pub fn new_instance(instance_id: String) {
    SdkApi::new_instance(instance_id.clone());
}

/// destroy_instance: 销毁sdk实例
pub fn destroy_instance(instance_id: String) -> String {
    SdkApi::destroy_instance(instance_id);
    return json::marshal(&ApiResult::success(""));
}

/// init_instance: 初始化sdk实例
/// @param instance_id: sdk实例id
/// @param host: 服务器地址 example: "im.xx.com"
/// @param port: 服务器端口 example: 443
/// @param ssl: 是否使用ssl example: true
/// @param app_id: app id example: "xxim"
/// @param install_id: 安装id example: "xxx"
/// @param platform: 平台 example: 1; 请查看`proto`文档中 `common.proto` -> `Platform`
/// @param device_model: 设备型号 example: "iPhone 11"
/// @param os_version: 操作系统版本 example: "iOS 14"
/// @param language: 语言 example: 1; 请查看 `proto`文档中 `common` -> `Ii8nLanguage`
/// @param request_timeout_millisecond: 请求超时时间 example: 10000
/// @param db_dir: 数据库目录 example: "/data/data/com.xx.xx"
/// @param custom_header: 自定义请求头 example: "{\"xx\":\"xx\"}"
/// @param keep_alive_second: 保持连接的时间 example: 60
/// @param log_level: 日志级别 example: 1; | 0: debug | 1: info | 2: warn | 3: error |
pub fn init_instance(
    instance_id: String,
    net: Option<i32>,// 0: websocket 直连peer；1: webrtc p2p连接peer；
    host: String,
    port: u16,
    ssl: bool,
    ice_servers: Option<Vec<String>>,
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
) -> String {
    // let api = SdkApi::instance(instance_id).read().unwrap();
    let ok = SdkApi::instance(instance_id).write().unwrap().new(
        net, ice_servers,
        host, port, ssl,
        app_id, install_id, platform, device_model, os_version,
        request_timeout_millisecond, db_dir, custom_header, keep_alive_second, log_level,
    );
    return json::marshal(&ApiResult::success(ok.to_string().as_str()));
}

/// preset_stream: 预设一个数据流
pub fn preset_stream(instance_id: String, stream: StreamSink<Vec<u8>>) {
    let api = SdkApi::instance(instance_id);
    let api = api.read().unwrap();
    api.preset_stream(stream);
}

/// wait_stream_ready: 等待数据流准备好
pub fn wait_stream_ready(instance_id: String) -> String {
    let api = SdkApi::instance(instance_id);
    let api = api.read().unwrap();
    return json::marshal(&ApiResult::success(api.wait_stream_ready().as_str()));
}

/// set_login_info: 设置登录信息 一般用于app启动后，用户登录成功后调用
/// @param instance_id: sdk实例id
/// @param token: 用户token
/// @param user_id: 用户id
pub fn set_login_info(instance_id: String, token: String, user_id: String) -> String {
    let api = SdkApi::instance(instance_id);
    let api = api.read().unwrap();
    let res = api.set_login_info(token, user_id);
    return json::marshal(&ApiResult::success(res.as_str()));
}

/// unset_login_info: 取消登录信息 一般用于app退出登录后调用
/// @param instance_id: sdk实例id
pub fn unset_login_info(instance_id: String) -> String {
    let api = SdkApi::instance(instance_id);
    let api = api.read().unwrap();
    let res = api.unset_login_info();
    return json::marshal(&ApiResult::success(res.as_str()));
}

/// 下面是 user 相关 api /// ///  /// ///  /// ///  /// ///  /// ///  /// ///  /// ///  /// ///

/// user_register: 调用用户注册API
/// @param instance_id: sdk实例id
/// @param protobuf: protobuf编码的用户注册请求 详细请看 pb::user::UserRegisterReq
pub fn user_register(instance_id: String, protobuf: Vec<u8>) -> String {
    let api = ApiClient::instance(instance_id);
    let api = api.read().unwrap();
    let pb: user::UserRegisterReq = proto::unmarshal(Bytes::from(protobuf));
    return json::marshal(&ApiResult::from_api_result(api.user_register(pb)));
}

/// user_access_token: 调用用户访问token API
/// @param instance_id: sdk实例id
/// @param protobuf: protobuf编码的用户访问token请求 详细请看 pb::user::UserAccessTokenReq
pub fn user_access_token(instance_id: String, protobuf: Vec<u8>) -> String {
    let api = ApiClient::instance(instance_id);
    let api = api.read().unwrap();
    let pb: user::UserAccessTokenReq = proto::unmarshal(Bytes::from(protobuf));
    return json::marshal(&ApiResult::from_api_result(api.user_access_token(pb)));
}

/// create_robot: 调用创建机器人API
/// @param instance_id: sdk实例id
/// @param protobuf: protobuf编码的创建机器人请求 详细请看 pb::robot::CreateRobotReq
pub fn create_robot(instance_id: String, protobuf: Vec<u8>) -> String {
    let api = ApiClient::instance(instance_id);
    let api = api.read().unwrap();
    let pb: user::CreateRobotReq = proto::unmarshal(Bytes::from(protobuf));
    return json::marshal(&ApiResult::from_api_result(api.create_robot(pb)));
}

/// refresh_user_access_token: 调用刷新用户访问token API
/// @param instance_id: sdk实例id
/// @param protobuf: protobuf编码的刷新用户访问token请求 详细请看 pb::user::RefreshUserAccessTokenReq
pub fn refresh_user_access_token(instance_id: String, protobuf: Vec<u8>) -> String {
    let api = ApiClient::instance(instance_id);
    let api = api.read().unwrap();
    let pb: user::RefreshUserAccessTokenReq = proto::unmarshal(Bytes::from(protobuf));
    return json::marshal(&ApiResult::from_api_result(api.refresh_user_access_token(pb)));
}

/// revoke_user_access_token: 调用注销用户访问token API
/// @param instance_id: sdk实例id
/// @param protobuf: protobuf编码的注销用户访问token请求 详细请看 pb::user::RevokeUserAccessTokenReq
pub fn revoke_user_access_token(instance_id: String, protobuf: Vec<u8>) -> String {
    let api = ApiClient::instance(instance_id);
    let api = api.read().unwrap();
    let pb: user::RevokeUserAccessTokenReq = proto::unmarshal(Bytes::from(protobuf));
    return json::marshal(&ApiResult::from_api_result(api.revoke_user_access_token(pb)));
}

/// 下面是 friend 相关 api /// ///  /// ///  /// ///  /// ///  /// ///  /// ///  /// ///  /// ///

/// friend_apply 请求添加好友
/// @param instance_id: sdk实例id
/// @param protobuf: protobuf编码的请求添加好友请求 详细请看 pb::friend::FriendApplyReq
pub fn friend_apply(instance_id: String, protobuf: Vec<u8>) -> String {
    let api = ApiClient::instance(instance_id);
    let api = api.read().unwrap();
    let pb: friend::FriendApplyReq = proto::unmarshal(Bytes::from(protobuf));
    return json::marshal(&ApiResult::from_api_result(api.friend_apply(pb)));
}

/// list_friend_apply 获取好友申请列表
/// @param instance_id: sdk实例id
/// @param protobuf: protobuf编码的获取好友申请列表请求 详细请看 pb::friend::ListFriendApplyReq
pub fn list_friend_apply(instance_id: String, protobuf: Vec<u8>) -> String {
    let api = ApiClient::instance(instance_id);
    let api = api.read().unwrap();
    let pb: friend::ListFriendApplyReq = proto::unmarshal(Bytes::from(protobuf));
    return json::marshal(&ApiResult::from_api_result(api.list_friend_apply(pb)));
}

/// friend_apply_handle 处理好友申请
/// @param instance_id: sdk实例id
/// @param protobuf: protobuf编码的处理好友申请请求 详细请看 pb::friend::FriendApplyHandleReq
pub fn friend_apply_handle(instance_id: String, protobuf: Vec<u8>) -> String {
    let api = ApiClient::instance(instance_id);
    let api = api.read().unwrap();
    let pb: friend::FriendApplyHandleReq = proto::unmarshal(Bytes::from(protobuf));
    return json::marshal(&ApiResult::from_api_result(api.friend_apply_handle(pb)));
}

/// 下面是 group 相关 api /// ///  /// ///  /// ///  /// ///  /// ///  /// ///  /// ///  /// ///

/// group_create 创建群组
/// @param instance_id: sdk实例id
/// @param protobuf: protobuf编码的创建群组请求 详细请看 pb::group::GroupCreateReq
pub fn group_create(instance_id: String, protobuf: Vec<u8>) -> String {
    let api = ApiClient::instance(instance_id);
    let api = api.read().unwrap();
    let pb: group::GroupCreateReq = proto::unmarshal(Bytes::from(protobuf));
    return json::marshal(&ApiResult::from_api_result(api.group_create(pb)));
}

/// 下面是 message 相关 api /// ///  /// ///  /// ///  /// ///  /// ///  /// ///  /// ///  /// ///

/// message_send 发送消息
/// @param instance_id: sdk实例id
/// @param protobuf: protobuf编码的发送消息请求 详细请看 pb::message::MessageSendReq
pub fn message_send(instance_id: String, protobuf: Vec<u8>) -> String {
    let api = ApiClient::instance(instance_id);
    let api = api.read().unwrap();
    let pb: message::MessageSendReq = proto::unmarshal(Bytes::from(protobuf));
    return json::marshal(&ApiResult::from_api_result(api.message_send(pb)));
}

/// message_batch_send 批量发送消息
/// @param instance_id: sdk实例id
/// @param protobuf: protobuf编码的批量发送消息请求 详细请看 pb::message::MessageBatchSendReq
pub fn message_batch_send(instance_id: String, protobuf: Vec<u8>) -> String {
    let api = ApiClient::instance(instance_id);
    let api = api.read().unwrap();
    let pb: message::MessageBatchSendReq = proto::unmarshal(Bytes::from(protobuf));
    return json::marshal(&ApiResult::from_api_result(api.message_batch_send(pb)));
}

/// 下面是 notice 相关 api /// ///  /// ///  /// ///  /// ///  /// ///  /// ///  /// ///  /// ///

/// list_notice 获取通知列表
/// @param instance_id: sdk实例id
/// @param protobuf: protobuf编码的获取通知列表请求 详细请看 pb::notice::ListNoticeReq
pub fn list_notice(instance_id: String, protobuf: Vec<u8>) -> String {
    let api = ApiClient::instance(instance_id);
    let api = api.read().unwrap();
    let pb: notice::ListNoticeReq = proto::unmarshal(Bytes::from(protobuf));
    return json::marshal(&ApiResult::from_api_result(api.list_notice(pb)));
}

/// 下面是 gateway 相关 api /// ///  /// ///  /// ///  /// ///  /// ///  /// ///  /// ///  /// ///

/// get_user_connection 获取用户连接信息
/// @param instance_id: sdk实例id
/// @param protobuf: protobuf编码的获取用户连接信息请求 详细请看 pb::gateway::GetUserConnectionReq
pub fn get_user_connection(instance_id: String, protobuf: Vec<u8>) -> String {
    let api = ApiClient::instance(instance_id);
    let api = api.read().unwrap();
    let pb: gateway::GatewayGetUserConnectionReq = proto::unmarshal(Bytes::from(protobuf));
    return json::marshal(&ApiResult::from_api_result(api.get_user_connection(pb)));
}
