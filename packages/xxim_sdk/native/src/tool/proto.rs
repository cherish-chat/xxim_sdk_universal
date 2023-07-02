/*
proto.rs
此文件用于实现protobuf的序列化和反序列化
 */

use prost::bytes::Bytes;

pub fn marshal<T>(v: &T) -> Vec<u8>
    where
        T: protobuf::Message, {
    let mut buf = Vec::new();
    v.write_to_vec(&mut buf).unwrap();
    buf
}

pub fn marshal_box<T> (v: Box<T>) -> Vec<u8>
    where
        T: protobuf::Message, {
    let mut buf = Vec::new();
    v.write_to_vec(&mut buf).unwrap();
    buf
}

pub fn unmarshal<T>(buf: Bytes) -> T
    where
        T: protobuf::Message, {
    let mut v = T::new();
    v.merge_from_bytes(&*buf).unwrap();
    v
}

pub fn unmarshal_or_err<T>(buf: Bytes) -> Result<T, String>
    where
        T: protobuf::Message, {
    let mut v = T::new();
    match v.merge_from_bytes(&*buf) {
        Ok(_) => Ok(v),
        Err(err) => Err(err.to_string()),
    }
}

#[cfg(test)]
mod tests {
    use prost::bytes::Bytes;
    use crate::tool::proto::{marshal, unmarshal};
    use crate::pb::common::{RequestHeader};

    #[test]
    fn test_marshal() {
        let mut msg = RequestHeader{
            appId: "".to_string(),
            userId: "".to_string(),
            userToken: "".to_string(),
            clientIp: "".to_string(),
            installId: "".to_string(),
            platform: Default::default(),
            gatewayPodIp: "".to_string(),
            deviceModel: "".to_string(),
            osVersion: "".to_string(),
            appVersion: "".to_string(),
            language: Default::default(),
            connectTime: 0,
            encoding: Default::default(),
            extra: "".to_string(),
            special_fields: Default::default()
        };
        msg.appId = "123".to_string();
        let buf = marshal(&msg);
        println!("{:?}", buf);
        let msg2: RequestHeader = unmarshal(Bytes::from(buf));
        println!("{:?}", msg2);
    }
}