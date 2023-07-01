use crate::httpapi::httpapi::Error;
use crate::pb::user;
use crate::store::values::{HttpClient};
use crate::tool::proto;

impl HttpClient {
    /// UserRegister 用户注册
    pub fn user_register(&self, req: user::UserRegisterReq) -> Result<Vec<u8>, Error> {
        let http_client = HttpClient::instance(self.instance_id.clone());
        let http_client = http_client.read().unwrap();
        let box_req = Box::new(req);
        let result: Result<Box<user::UserRegisterResp>, Error> = http_client.request_sync(
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
    pub fn user_access_token(&self, req: user::UserAccessTokenReq) -> Result<Vec<u8>, Error> {
        let http_client = HttpClient::instance(self.instance_id.clone());
        let http_client = http_client.read().unwrap();
        let box_req = Box::new(req);
        let result: Result<Box<user::UserAccessTokenResp>, Error> = http_client.request_sync(
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
    pub fn create_robot(&self, req: user::CreateRobotReq) -> Result<Vec<u8>, Error> {
        let http_client = HttpClient::instance(self.instance_id.clone());
        let http_client = http_client.read().unwrap();
        let box_req = Box::new(req);
        let result: Result<Box<user::CreateRobotResp>, Error> = http_client.request_sync(
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
    pub fn refresh_user_access_token(&self, req: user::RefreshUserAccessTokenReq) -> Result<Vec<u8>, Error> {
        let http_client = HttpClient::instance(self.instance_id.clone());
        let http_client = http_client.read().unwrap();
        let box_req = Box::new(req);
        let result: Result<Box<user::RefreshUserAccessTokenResp>, Error> = http_client.request_sync(
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
    pub fn revoke_user_access_token(&self, req: user::RevokeUserAccessTokenReq) -> Result<Vec<u8>, Error> {
        let http_client = HttpClient::instance(self.instance_id.clone());
        let http_client = http_client.read().unwrap();
        let box_req = Box::new(req);
        let result: Result<Box<user::RevokeUserAccessTokenResp>, Error> = http_client.request_sync(
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

}