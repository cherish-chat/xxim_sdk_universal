use std::sync::{Arc, RwLock};
use crate::pb::{user as user, conversation as friend, conversation as group, message as message, message as notice};
use crate::store::values::{Config, HttpClient, MeshClient};

#[derive(Debug)]
pub enum ErrorCode {
    NoError,
    Timeout,
    Cancelled,
    HttpError,
    RequestError,
}

#[derive(Debug)]
pub struct Error {
    pub(crate) code: ErrorCode,
    pub(crate) message: String,
}

impl Error {
    pub fn code_i32(&self) -> i32 {
        match self.code {
            ErrorCode::NoError => 0,
            ErrorCode::Timeout => 1,
            ErrorCode::Cancelled => 2,
            ErrorCode::HttpError => 3,
            ErrorCode::RequestError => 4,
        }
    }

    pub fn message_str(&self) -> &str {
        self.message.as_str()
    }
}


pub trait ApiHandler {
    //user_register
    fn user_register(&self, req: user::UserRegisterReq) -> Result<Vec<u8>, Error>;
    //user_access_token
    fn user_access_token(&self, req: user::UserAccessTokenReq) -> Result<Vec<u8>, Error>;
    //create_robot
    fn create_robot(&self, req: user::CreateRobotReq) -> Result<Vec<u8>, Error>;
    //refresh_user_access_token
    fn refresh_user_access_token(&self, req: user::RefreshUserAccessTokenReq) -> Result<Vec<u8>, Error>;
    //revoke_user_access_token
    fn revoke_user_access_token(&self, req: user::RevokeUserAccessTokenReq) -> Result<Vec<u8>, Error>;

    //friend_apply
    fn friend_apply(&self, req: friend::FriendApplyReq) -> Result<Vec<u8>, Error>;
    //list_friend_apply
    fn list_friend_apply(&self, req: friend::ListFriendApplyReq) -> Result<Vec<u8>, Error>;
    //friend_apply_handle
    fn friend_apply_handle(&self, req: friend::FriendApplyHandleReq) -> Result<Vec<u8>, Error>;

    //group_create
    fn group_create(&self, req: group::GroupCreateReq) -> Result<Vec<u8>, Error>;

    //message_batch_send
    fn message_batch_send(&self, req: message::MessageBatchSendReq) -> Result<Vec<u8>, Error>;
    //message_send
    fn message_send(&self, req: message::MessageSendReq) -> Result<Vec<u8>, Error>;

    //list_notice
    fn list_notice(&self, req: notice::ListNoticeReq) -> Result<Vec<u8>, Error>;
}

pub struct ApiClient {
}


impl ApiClient {
    pub fn instance(instance_id: String) -> Arc<RwLock<dyn ApiHandler>> {
        let config = Config::get_config(instance_id.clone()).read().unwrap().clone();
        return if config.net == 0 {
            // 传统 http
            HttpClient::instance(instance_id.clone())
        } else {
            MeshClient::instance(instance_id.clone())
        }
    }
}