/*
json.rs
1.实现json字符串反序列化为任意结构体
2.实现任意结构体序列化为json字符串
 */

use serde_json;

pub fn marshal<T>(v: &T) -> String
    where
        T: serde::Serialize,
{
    serde_json::to_string(v).unwrap()
}

pub fn unmarshal<'a, T>(s: &'a str) -> Result<T, serde_json::Error>
    where
        T: serde::de::Deserialize<'a>,
{
    serde_json::from_str(s)
}
