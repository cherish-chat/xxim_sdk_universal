use crate::httpapi::httpapi::Error;
use crate::pb::message;
use crate::store::values::HttpClient;
use crate::tool::proto;

impl HttpClient {
    /// MessageBatchSend 批量发送消息
    pub fn message_batch_send(&self, req: message::MessageBatchSendReq) -> Result<Vec<u8>, Error> {
        let http_client = HttpClient::instance(self.instance_id.clone());
        let http_client = http_client.read().unwrap();
        let box_req = Box::new(req);
        let result: Result<Box<message::MessageBatchSendResp>, Error> = http_client.request_sync(
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
    pub fn message_send(&self, req: message::MessageSendReq) -> Result<Vec<u8>, Error> {
        let http_client = HttpClient::instance(self.instance_id.clone());
        let http_client = http_client.read().unwrap();
        let box_req = Box::new(req);
        let result: Result<Box<message::MessageSendResp>, Error> = http_client.request_sync(
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
}