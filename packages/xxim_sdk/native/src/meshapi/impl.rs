use crate::pb::{user as user, conversation as friend, conversation as group, message as message, message as notice};
use crate::pb::gateway::{GatewayGetUserConnectionReq, GatewayGetUserConnectionResp};
use crate::store::api_handler::{ApiHandler, Error};
use crate::store::values::{MeshClient};
use crate::tool::{proto};

impl ApiHandler for MeshClient {
    /// UserRegister 用户注册
    fn user_register(&self, req: user::UserRegisterReq) -> Result<Vec<u8>, Error> {
        let box_req = Box::new(req);
        let result: Result<Box<user::UserRegisterResp>, Error> = MeshClient::request_sync(
            self.instance_id.clone(),
            "/v1/user/white/userRegister".to_string(),
            box_req,
        );
        match result {
            Ok(response) => {
                let bytes = proto::marshal_box(response);
                return Ok(bytes);
            }
            Err(e) => Err(e)
        }
    }

    /// UserAccessToken 获取用户token
    fn user_access_token(&self, req: user::UserAccessTokenReq) -> Result<Vec<u8>, Error> {
        let box_req = Box::new(req);
        let result: Result<Box<user::UserAccessTokenResp>, Error> = MeshClient::request_sync(
            self.instance_id.clone(),
            "/v1/user/white/userAccessToken".to_string(),
            box_req,
        );
        match result {
            Ok(response) => {
                let bytes = proto::marshal_box(response);
                return Ok(bytes);
            }
            Err(e) => Err(e)
        }
    }

    /// CreateRobot 创建机器人
    fn create_robot(&self, req: user::CreateRobotReq) -> Result<Vec<u8>, Error> {
        let box_req = Box::new(req);
        let result: Result<Box<user::CreateRobotResp>, Error> = MeshClient::request_sync(
            self.instance_id.clone(),
            "/v1/user/createRobot".to_string(),
            box_req,
        );
        match result {
            Ok(response) => {
                let bytes = proto::marshal_box(response);
                return Ok(bytes);
            }
            Err(e) => Err(e)
        }
    }

    /// RefreshUserAccessToken 刷新用户token
    fn refresh_user_access_token(&self, req: user::RefreshUserAccessTokenReq) -> Result<Vec<u8>, Error> {
        let box_req = Box::new(req);
        let result: Result<Box<user::RefreshUserAccessTokenResp>, Error> = MeshClient::request_sync(
            self.instance_id.clone(),
            "/v1/user/refreshUserAccessToken".to_string(),
            box_req,
        );
        match result {
            Ok(response) => {
                let bytes = proto::marshal_box(response);
                return Ok(bytes);
            }
            Err(e) => Err(e)
        }
    }

    /// RevokeUserAccessToken 注销用户token
    fn revoke_user_access_token(&self, req: user::RevokeUserAccessTokenReq) -> Result<Vec<u8>, Error> {
        let box_req = Box::new(req);
        let result: Result<Box<user::RevokeUserAccessTokenResp>, Error> = MeshClient::request_sync(
            self.instance_id.clone(),
            "/v1/user/revokeUserAccessToken".to_string(),
            box_req,
        );
        match result {
            Ok(response) => {
                let bytes = proto::marshal_box(response);
                return Ok(bytes);
            }
            Err(e) => Err(e)
        }
    }


    /// FriendApply 申请好友
    fn friend_apply(&self, req: friend::FriendApplyReq) -> Result<Vec<u8>, Error> {
        let box_req = Box::new(req);
        let result: Result<Box<friend::FriendApplyResp>, Error> = MeshClient::request_sync(
            self.instance_id.clone(),
            "/v1/friend/friendApply".to_string(),
            box_req,
        );
        match result {
            Ok(response) => {
                let bytes = proto::marshal_box(response);
                return Ok(bytes);
            }
            Err(e) => Err(e)
        }
    }

    /// ListFriendApply 获取好友申请列表
    fn list_friend_apply(&self, req: friend::ListFriendApplyReq) -> Result<Vec<u8>, Error> {
        let box_req = Box::new(req);
        let result: Result<Box<friend::ListFriendApplyResp>, Error> = MeshClient::request_sync(
            self.instance_id.clone(),
            "/v1/friend/listFriendApply".to_string(),
            box_req,
        );
        match result {
            Ok(response) => {
                let bytes = proto::marshal_box(response);
                return Ok(bytes);
            }
            Err(e) => Err(e)
        }
    }

    /// FriendApplyHandle 处理好友申请
    fn friend_apply_handle(&self, req: friend::FriendApplyHandleReq) -> Result<Vec<u8>, Error> {
        let box_req = Box::new(req);
        let result: Result<Box<friend::FriendApplyHandleResp>, Error> = MeshClient::request_sync(
            self.instance_id.clone(),
            "/v1/friend/friendApplyHandle".to_string(),
            box_req,
        );
        match result {
            Ok(response) => {
                let bytes = proto::marshal_box(response);
                return Ok(bytes);
            }
            Err(e) => Err(e)
        }
    }


    /// GroupCreate 创建群
    fn group_create(&self, req: group::GroupCreateReq) -> Result<Vec<u8>, Error> {
        let box_req = Box::new(req);
        let result: Result<Box<group::GroupCreateResp>, Error> = MeshClient::request_sync(
            self.instance_id.clone(),
            "/v1/group/groupCreate".to_string(),
            box_req,
        );
        match result {
            Ok(response) => {
                let bytes = proto::marshal_box(response);
                return Ok(bytes);
            }
            Err(e) => Err(e)
        }
    }

    /// MessageBatchSend 批量发送消息
    fn message_batch_send(&self, req: message::MessageBatchSendReq) -> Result<Vec<u8>, Error> {
        let box_req = Box::new(req);
        let result: Result<Box<message::MessageBatchSendResp>, Error> = MeshClient::request_sync(
            self.instance_id.clone(),
            "/v1/message/messageBatchSend".to_string(),
            box_req,
        );
        match result {
            Ok(response) => {
                let bytes = proto::marshal_box(response);
                return Ok(bytes);
            }
            Err(e) => Err(e)
        }
    }

    /// MessageSend 发送消息
    fn message_send(&self, req: message::MessageSendReq) -> Result<Vec<u8>, Error> {
        let box_req = Box::new(req);
        let result: Result<Box<message::MessageSendResp>, Error> = MeshClient::request_sync(
            self.instance_id.clone(),
            "/v1/message/messageSend".to_string(),
            box_req,
        );
        match result {
            Ok(response) => {
                let bytes = proto::marshal_box(response);
                return Ok(bytes);
            }
            Err(e) => Err(e)
        }
    }


    /// ListNotice 列出通知
    fn list_notice(&self, req: notice::ListNoticeReq) -> Result<Vec<u8>, Error> {
        let box_req = Box::new(req);
        let result: Result<Box<notice::ListNoticeResp>, Error> = MeshClient::request_sync(
            self.instance_id.clone(),
            "/v1/notice/listNotice".to_string(),
            box_req,
        );
        match result {
            Ok(response) => {
                let bytes = proto::marshal_box(response);
                return Ok(bytes);
            }
            Err(e) => Err(e)
        }
    }

    fn get_user_connection(&self, req: GatewayGetUserConnectionReq) -> Result<Vec<u8>, Error> {
        let box_req = Box::new(req);
        let result: Result<Box<GatewayGetUserConnectionResp>, Error> = MeshClient::request_sync(
            self.instance_id.clone(),
            "/v1/gateway/getUserConnection".to_string(),
            box_req,
        );
        match result {
            Ok(response) => {
                let bytes = proto::marshal_box(response);
                Ok(bytes)
            }
            Err(e) => Err(e)
        }
    }
}