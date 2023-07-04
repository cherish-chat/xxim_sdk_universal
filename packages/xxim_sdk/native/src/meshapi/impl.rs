use crate::pb::{user as user, conversation as friend, conversation as group, message as message, message as notice};
use crate::store::apihandler::{ApiHandler, Error};
use crate::store::values::{MeshClient};
use crate::tool::proto;

impl ApiHandler for MeshClient {
    /// UserRegister 用户注册
    fn user_register(&self, req: user::UserRegisterReq) -> Result<Vec<u8>, Error> {
        todo!();
    }

    /// UserAccessToken 获取用户token
    fn user_access_token(&self, req: user::UserAccessTokenReq) -> Result<Vec<u8>, Error> {
        todo!();
    }

    /// CreateRobot 创建机器人
    fn create_robot(&self, req: user::CreateRobotReq) -> Result<Vec<u8>, Error> {
        todo!();
    }

    /// RefreshUserAccessToken 刷新用户token
    fn refresh_user_access_token(&self, req: user::RefreshUserAccessTokenReq) -> Result<Vec<u8>, Error> {
        todo!();
    }

    /// RevokeUserAccessToken 注销用户token
    fn revoke_user_access_token(&self, req: user::RevokeUserAccessTokenReq) -> Result<Vec<u8>, Error> {
        todo!();
    }


    /// FriendApply 申请好友
    fn friend_apply(&self, req: friend::FriendApplyReq) -> Result<Vec<u8>, Error> {
        todo!();
    }

    /// ListFriendApply 获取好友申请列表
    fn list_friend_apply(&self, req: friend::ListFriendApplyReq) -> Result<Vec<u8>, Error> {
        todo!();
    }

    /// FriendApplyHandle 处理好友申请
    fn friend_apply_handle(&self, req: friend::FriendApplyHandleReq) -> Result<Vec<u8>, Error> {
        todo!();
    }


    /// GroupCreate 创建群
    fn group_create(&self, req: group::GroupCreateReq) -> Result<Vec<u8>, Error> {
        todo!();
    }

    /// MessageBatchSend 批量发送消息
    fn message_batch_send(&self, req: message::MessageBatchSendReq) -> Result<Vec<u8>, Error> {
        todo!();
    }

    /// MessageSend 发送消息
    fn message_send(&self, req: message::MessageSendReq) -> Result<Vec<u8>, Error> {
        todo!();
    }


    /// ListNotice 列出通知
    fn list_notice(&self, req: notice::ListNoticeReq) -> Result<Vec<u8>, Error> {
        todo!();
    }
}