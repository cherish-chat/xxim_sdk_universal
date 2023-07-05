use lazy_static::lazy_static;
use rusqlite::{Connection};
use std::sync::{Arc, Mutex, RwLock};
use std::collections::HashMap;
use std::net::TcpStream;
use serde::{Deserialize, Serialize};
use flutter_rust_bridge::{StreamSink};
use native_tls::TlsStream;
use std::sync::mpsc::SyncSender;
use crate::pb::gateway;

// Sqlite实例缓存
lazy_static! {
    pub static ref SQLITE_INSTANCE_MAP: Mutex<HashMap<String, Arc<Mutex<Sqlite>>>> = Mutex::new(HashMap::new());
}

pub struct Sqlite {
    pub file_name: String,
    pub c: Option<Connection>,
}

// Config实例缓存
lazy_static! {
    pub static ref CONFIG_INSTANCE_MAP: RwLock<HashMap<String, Arc<RwLock<Config>>>> = RwLock::new(HashMap::new());
    pub static ref DEFAULT_ICE_SERVERS: Vec<String> = vec!["stun:stun.l.google.com:19302".to_string()];
}

//Config 配置
#[derive(Serialize, Deserialize, Debug, Clone)]
pub struct Config {
    // instance_id
    pub instance_id: String,
    // host 服务器IP或域名，必填
    pub host: String,
    // port 服务器端口，必填
    pub port: u16,
    // ssl 是否使用SSL，选填，默认为false
    pub ssl: bool,
    // 网络选择 0: websocket 直连peer；1: webrtc p2p连接peer；
    pub net: i32,
    // ice_servers ice服务器列表，选填，默认为空
    pub ice_servers: Vec<String>,
    // appId 应用ID，选填，默认为空
    pub app_id: String,
    // installId 安装ID，选填，默认会生成一个随机id
    pub install_id: String,
    // platform 平台，必填，可选android、ios、web、win、mac、linux，请查看pb.Platform
    pub platform: i32,
    // deviceModel 设备型号，选填，默认为空
    pub device_model: String,
    // osVersion 操作系统版本，选填，默认为空
    pub os_version: String,
    // language 语言，选填，默认为中文。请查看pb.I18nLanguage
    pub language: i32,
    // requestTimeout 请求超时时间，选填，默认为10秒
    pub request_timeout_millisecond: i32,
    // userToken 用户Token，选填，默认为空
    pub user_token: Option<String>,
    // userId 用户ID，选填，默认为空
    pub user_id: Option<String>,
    // dbDir 数据库目录，必填
    pub db_dir: String,
    // customHeader 自定义请求头，选填，默认为空
    pub custom_header: String,
    // keepAliveSecond 保持连接时间，选填，默认为30s
    pub keep_alive_second: i32,
    // logLevel 日志级别，选填，默认为info，可选debug、info、warn、error
    pub log_level: i32,
}


// SdkApi实例缓存
lazy_static! {
    pub static ref SDK_INSTANCE_MAP: RwLock<HashMap<String, Arc<RwLock<SdkApi>>>> = RwLock::new(HashMap::new());
}

pub struct SdkApi {
    pub instance_id: String,
}

//Stream实例缓存
lazy_static! {
    pub static ref STREAM_INSTANCE_MAP: RwLock<HashMap<String, StreamSink<Vec<u8>>>> = RwLock::new(HashMap::new());
}

//HttpClient实例缓存
lazy_static! {
    pub static ref HTTP_CLIENT_INSTANCE_MAP: RwLock<HashMap<String, Arc<RwLock<HttpClient>>>> = RwLock::new(HashMap::new());
}

pub struct HttpClient {
    pub instance_id: String,
    pub http_client: reqwest::blocking::Client,
}

//MeshClient实例缓存
lazy_static! {
    pub static ref MESH_REQUEST_CHANNEL_MAP: RwLock<HashMap<String, Arc<RwLock<SyncSender<gateway::GatewayApiRequest>>>>> = RwLock::new(HashMap::new());
}

pub struct MeshClient {
    pub instance_id: String,
}


//WsClient实例缓存
lazy_static! {
    pub static ref WS_CLIENT_INSTANCE_MAP: RwLock<HashMap<String, Arc<RwLock<WsClient>>>> = RwLock::new(HashMap::new());
}

pub struct WsClient {
    pub instance_id: String,
}

//WsWriter实例缓存
lazy_static! {
    pub static ref WS_WRITER_INSTANCE_MAP: RwLock<HashMap<String, Arc<RwLock<WsWriter>>>> = RwLock::new(HashMap::new());
}

pub struct WsWriter {
    pub instance_id: String,
    // no tls
    pub ws_writer: Option<websocket::sender::Writer<TcpStream>>,
    // tls
    pub ws_writer_tls: Option<websocket::sender::Writer<TlsStream<TcpStream>>>,
}

//WsReader实例缓存
lazy_static! {
    pub static ref WS_READER_INSTANCE_MAP: RwLock<HashMap<String, Arc<RwLock<ApiReader >>>> = RwLock::new(HashMap::new());
}

pub struct ApiReader {
    pub instance_id: String,
}

//WsResponse实例缓存 key=uuid value=channel Sender
lazy_static! {
    pub static ref API_RESPONSE_SENDER_MAP: RwLock<HashMap<String, Arc<RwLock<SyncSender<gateway::GatewayApiResponse>>>>> = RwLock::new(HashMap::new());
}
