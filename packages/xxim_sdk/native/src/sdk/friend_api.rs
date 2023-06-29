use crate::client::client::Error;
use crate::pb::conversation as friend;
use crate::sdk::api::SdkApi;
use crate::tool::proto;

impl SdkApi {
    /// FriendApply 申请好友
    pub fn friend_apply(&self, req: friend::FriendApplyReq) -> Result<Vec<u8>, Error> {
        let box_req = Box::new(req);
        let result: Result<Box<friend::FriendApplyResp>, Error> = self.client.as_ref().unwrap().request_sync(
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
    pub fn list_friend_apply(&self, req: friend::ListFriendApplyReq) -> Result<Vec<u8>, Error> {
        let box_req = Box::new(req);
        let result: Result<Box<friend::ListFriendApplyResp>, Error> = self.client.as_ref().unwrap().request_sync(
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
    pub fn friend_apply_handle(&self, req: friend::FriendApplyHandleReq) -> Result<Vec<u8>, Error> {
        let box_req = Box::new(req);
        let result: Result<Box<friend::FriendApplyHandleResp>, Error> = self.client.as_ref().unwrap().request_sync(
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
}