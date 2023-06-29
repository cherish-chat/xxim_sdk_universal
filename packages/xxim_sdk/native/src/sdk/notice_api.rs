use crate::client::client::Error;
use crate::pb::message as notice;
use crate::sdk::api::SdkApi;
use crate::tool::proto;

impl SdkApi {
    /// ListNotice 列出通知
    pub fn list_notice(&self, req: notice::ListNoticeReq) -> Result<Vec<u8>, Error> {
        let box_req = Box::new(req);
        let result: Result<Box<notice::ListNoticeResp>, Error> = self.client.as_ref().unwrap().request_sync(
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
}