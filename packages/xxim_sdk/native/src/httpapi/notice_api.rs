use crate::httpapi::httpapi::Error;
use crate::pb::message as notice;
use crate::store::values::HttpClient;
use crate::tool::proto;

impl HttpClient {
    /// ListNotice 列出通知
    pub fn list_notice(&self, req: notice::ListNoticeReq) -> Result<Vec<u8>, Error> {
        let http_client = HttpClient::instance(self.instance_id.clone());
        let http_client = http_client.read().unwrap();
        let box_req = Box::new(req);
        let result: Result<Box<notice::ListNoticeResp>, Error> = http_client.request_sync(
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