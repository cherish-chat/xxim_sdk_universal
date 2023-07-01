use crate::httpapi::httpapi::Error;
use crate::pb::conversation as group;
use crate::store::values::HttpClient;
use crate::tool::proto;

impl HttpClient {
    /// GroupCreate 创建群
    pub fn group_create(&self, req: group::GroupCreateReq) -> Result<Vec<u8>, Error> {
        let http_client = HttpClient::instance(self.instance_id.clone());
        let http_client = http_client.read().unwrap();
        let box_req = Box::new(req);
        let result: Result<Box<group::GroupCreateResp>, Error> = http_client.request_sync(
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