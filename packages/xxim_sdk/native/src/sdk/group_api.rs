use crate::client::client::Error;
use crate::pb::conversation as group;
use crate::sdk::api::SdkApi;
use crate::tool::proto;

impl SdkApi {
    /// GroupCreate 创建群
    pub fn group_create(&self, req: group::GroupCreateReq) -> Result<Vec<u8>, Error> {
        let box_req = Box::new(req);
        let result: Result<Box<group::GroupCreateResp>, Error> = self.client.as_ref().unwrap().request_sync(
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
}