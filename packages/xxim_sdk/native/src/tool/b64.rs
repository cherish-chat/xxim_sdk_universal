/*
b64.rs base64编解码
 */


use base64::Engine;

pub struct StdEncoding {}

impl StdEncoding {
    pub fn encode_to_string(data: Vec<u8>) -> String {
        base64::engine::general_purpose::STANDARD.encode(data)
    }

    pub fn decode_to_vec(data: String) -> Vec<u8> {
        base64::engine::general_purpose::STANDARD.decode(data.as_bytes()).unwrap()
    }
}

#[cfg(test)]
mod tests {
    use crate::tool::b64::StdEncoding;

    #[test]
    fn test_encode() {
        let data = vec![1, 2, 3, 4, 5];
        let encoded = StdEncoding::encode_to_string(data);
        println!("{}", encoded);
    }

    #[test]
    fn test_decode() {
        let data = "AQIDBAU=";
        let decoded = StdEncoding::decode_to_vec(data.to_string());
        println!("{:?}", decoded);
    }
}