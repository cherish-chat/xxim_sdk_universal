use std::sync::{Arc, RwLock};
use prost::bytes::Bytes;
use crate::pb::{common, gateway};
use crate::pb::gateway::GatewayWriteDataType;
use crate::store::values::{WS_READER_INSTANCE_MAP, WsReader};
use crate::tool::{log, proto};
use crate::store::api_response::APIResponse;

impl WsReader {
    pub fn new(id: String) -> Self {
        WsReader {
            instance_id: id,
        }
    }

    pub fn instance(id: String) -> Arc<RwLock<WsReader>> {
        let map = WS_READER_INSTANCE_MAP.read().unwrap();
        let ws_reader = map.get(id.as_str()).unwrap();
        ws_reader.clone()
    }

    fn on_receive_(&self, data: Vec<u8>) {
        log::debug("on_receive: websocket receive binary");
        let result: Result<gateway::GatewayWriteDataContent, String> = proto::unmarshal_or_err(Bytes::from(data));
        match result {
            Ok(data_content) => {
                let data_content = data_content as gateway::GatewayWriteDataContent;
                match data_content.dataType.unwrap() {
                    GatewayWriteDataType::Response => {
                        self.on_receive_response(data_content.response.unwrap());
                    }
                    GatewayWriteDataType::PushMessage => {
                        self.on_receive_push_message(data_content.message.unwrap());
                    }
                    GatewayWriteDataType::PushNotice => {
                        self.on_receive_push_notice(data_content.notice.unwrap());
                    }
                }
            },
            Err(e) => {
                log::warn(format!("on_receive: unmarshal_or_err err: {}", e).as_str());
            }
        };
        // let data_content: gateway::GatewayWriteDataContent = proto::unmarshal_or_err(data)
    }

    fn on_receive_response(&self, response: gateway::GatewayApiResponse) {
        log::debug("on_receive_response");
        APIResponse::on_response(self.instance_id.clone(), response);
    }

    fn on_receive_push_message(&self, message: common::Message) {
        log::debug(format!("on_receive_push_message: {}", message).as_str());
    }

    fn on_receive_push_notice(&self, notice: common::Notice) {
        log::debug(format!("on_receive_push_notice: {}", notice).as_str());
    }

    pub fn on_receive(instance_id:String, data: Vec<u8>) {
        let reader = WsReader::instance(instance_id.clone());
        let reader = reader.read().unwrap();
        reader.on_receive_(data);
    }
}