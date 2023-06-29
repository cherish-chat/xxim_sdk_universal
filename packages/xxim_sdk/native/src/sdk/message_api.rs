use crate::client::client::Error;
use crate::pb::message;
use crate::sdk::api::SdkApi;
use crate::tool::proto;

impl SdkApi {
    /// MessageBatchSend 批量发送消息
    pub fn message_batch_send(&self, req: message::MessageBatchSendReq) -> Result<Vec<u8>, Error> {
        let box_req = Box::new(req);
        let result: Result<Box<message::MessageBatchSendResp>, Error> = self.client.as_ref().unwrap().request_sync(
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
        let box_req = Box::new(req);
        let result: Result<Box<message::MessageSendResp>, Error> = self.client.as_ref().unwrap().request_sync(
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