use serde::{Deserialize, Serialize};

//ApiResult sdk暴露的方法的调用结果
#[derive(Serialize, Deserialize)]
pub struct ApiResult {
    pub code: i32,
    pub message: String,
    pub data: String,
}

//ApiParam sdk暴露的方法的调用参数
#[derive(Serialize, Deserialize)]
pub struct ApiParam {
    pub instance_id: String,
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
}

#[derive(Serialize, Deserialize)]
pub struct SetLoginInfoParam {
    pub token: String,
    pub user_id: String,
}


#[derive(Serialize, Deserialize)]
pub struct UserRegisterParam {
    pub trace_id: String,
    pub protobuf: Vec<u8>,
}

