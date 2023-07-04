use serde::{Deserialize, Serialize};
use crate::store::apihandler::Error;
use crate::tool::b64;

//ApiResult sdk暴露的方法的调用结果
#[derive(Serialize, Deserialize)]
pub struct ApiResult {
    pub code: i32,
    pub message: String,
    pub data: String,
}

impl ApiResult {
    pub fn success(data: &str) -> Self {
        return ApiResult {
            code: 0,
            message: "".to_string(),
            data: data.to_string(),
        };
    }

    pub fn error(code: i32, message: &str) -> Self {
        return ApiResult {
            code,
            message: message.to_string(),
            data: "".to_string(),
        };
    }

    pub fn from_api_result(result: Result<Vec<u8>, Error>) -> Self {
        return match result {
            Ok(data) => {
                //base64编码
                let data = b64::StdEncoding::encode_to_string(data);
                ApiResult::success(data.as_str())
            }
            Err(err) => {
                ApiResult::error(err.code_i32(), err.message_str())
            }
        };
    }
}
