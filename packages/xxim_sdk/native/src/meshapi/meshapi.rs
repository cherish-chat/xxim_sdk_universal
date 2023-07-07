use std::sync::{Arc, RwLock};
use std::thread::{sleep, spawn};
use std::time::Duration;
use crate::store::values::{Config, MeshClient, ApiReader, LongConnection, LONG_CONNECTION_INSTANCE_MAP};
use datachannel::{DataChannelHandler, DataChannelInfo, PeerConnectionHandler, RtcConfig, RtcDataChannel, RtcPeerConnection, SessionDescription, SdpType, ConnectionState};
use datachannel::sdp::SdpSession;
use reqwest::blocking::Response;
use crate::tool::{log, proto};
use serde::{Deserialize, Serialize};
use webrtc_sdp::{parse_sdp, SdpOrigin};
use crate::meshapi::request::MeshRequest;
use crate::pb::{common, gateway};
use crate::store::api_response::APIResponse;
use prost::bytes::Bytes;
use crate::pb::common::RequestHeader;
use crate::pb::gateway::GatewayKeepAliveResp;
use crate::store::api_handler::{Error, ErrorCode};
use crate::tool::crypto::{aes_decrypt, generate_key};
use crate::tool::uuid::uuid;


impl MeshClient {
    pub fn request_sync<Q: protobuf::Message, P: protobuf::Message>(
        instance_id: String,
        path: String,
        req: Box<Q>,
    ) -> Result<Box<P>, Error> {
        let request_id = uuid();
        let body = proto::marshal_box(req);
        let api_request = gateway::GatewayApiRequest {
            header: protobuf::MessageField::none(),
            requestId: request_id.clone(),
            path: path.clone(),
            body,
            special_fields: Default::default(),
        };
        let timeout_mills = match Config::get_config_or_none(instance_id.clone()) {
            None => {
                10 as u64
            }
            Some(config) => {
                let config = config.read().unwrap().clone();
                config.request_timeout_millisecond.clone() as u64
            }
        };

        let receiver = APIResponse::new(request_id.clone(), Duration::from_millis(timeout_mills));

        log::info(format!("mesh request: {}", path.clone()).as_str());
        let mesh_request = MeshRequest::request(instance_id.clone(), api_request);
        if mesh_request.is_err() {
            let err = mesh_request.err().unwrap();
            log::warn(format!("mesh request error: {}", err.message.clone()).as_str());
            return Err(err);
        }

        let recv_result = receiver.recv();
        if recv_result.is_err() {
            let err = recv_result.err().unwrap();
            log::warn(format!("mesh request error: {}", err.clone()).as_str());
            return Err(Error { code: ErrorCode::Timeout, message: err.to_string() });
        }
        let response = recv_result.unwrap();
        let body = response.body;
        let res: Result<P, String> = proto::unmarshal_or_err(Bytes::from(body));
        if res.is_err() {
            let err = res.err().unwrap().clone();
            log::warn(format!("mesh request error: {}", err.clone()).as_str());
            return Err(Error { code: ErrorCode::ResponseError, message: err });
        }
        let res = res.unwrap();
        log::info(format!("mesh request success: {}", path.clone()).as_str());
        Ok(Box::new(res))
    }

    pub fn request_sync_with_header<Q: protobuf::Message, P: protobuf::Message>(
        instance_id: String,
        path: String,
        req: Box<Q>,
        header: protobuf::MessageField<RequestHeader>,
    ) -> Result<Box<P>, Error> {
        let request_id = uuid();
        let body = proto::marshal_box(req);
        let api_request = gateway::GatewayApiRequest {
            header,
            requestId: request_id.clone(),
            path: path.clone(),
            body,
            special_fields: Default::default(),
        };
        let timeout_mills = match Config::get_config_or_none(instance_id.clone()) {
            None => {
                10 as u64
            }
            Some(config) => {
                let config = config.read().unwrap().clone();
                config.request_timeout_millisecond.clone() as u64
            }
        };

        let receiver = APIResponse::new(request_id.clone(), Duration::from_millis(timeout_mills));

        log::info(format!("mesh request: {}", path.clone()).as_str());
        let mesh_request = MeshRequest::request(instance_id.clone(), api_request);
        if mesh_request.is_err() {
            let err = mesh_request.err().unwrap();
            log::warn(format!("mesh request error: {}", err.message.clone()).as_str());
            return Err(err);
        }

        let recv_result = receiver.recv();
        if recv_result.is_err() {
            let err = recv_result.err().unwrap();
            log::warn(format!("mesh request error: {}", err.clone()).as_str());
            return Err(Error { code: ErrorCode::Timeout, message: err.to_string() });
        }
        let response = recv_result.unwrap();
        let body = response.body;
        let res: Result<P, String> = proto::unmarshal_or_err(Bytes::from(body));
        if res.is_err() {
            let err = res.err().unwrap().clone();
            log::warn(format!("mesh request error: {}", err.clone()).as_str());
            return Err(Error { code: ErrorCode::ResponseError, message: err });
        }
        let res = res.unwrap();
        log::info(format!("mesh request success: {}", path.clone()).as_str());
        Ok(Box::new(res))
    }
}

impl MeshClient {
    pub fn loop_heartbeat(instance_id: String) {
        spawn(move || {
            loop {
                let config_or_none = Config::get_config_or_none(instance_id.clone());
                if config_or_none.is_none() {
                    sleep(Duration::from_millis(50));
                    continue;
                }
                let config = config_or_none.unwrap();
                let conf = config.read().unwrap().clone();
                drop(config);
                if conf.net != 1 {
                    return;
                }
                MeshClient::heartbeat(instance_id.clone(), None);
                sleep(Duration::from_secs(conf.keep_alive_second.clone() as u64));
                continue;
            }
        });
    }

    fn heartbeat(instance_id: String, header: Option<RequestHeader>) {
        let mut retry_count = 0 as u64;
        let header = match header {
            None => { Default::default() }
            Some(mut header) => {
                header.extra = r#"{"resetHeader":"true"}"#.to_string();
                protobuf::MessageField::some(header)
            }
        };
        loop {
            let req = gateway::GatewayKeepAliveReq {
                header: header.clone(),
                special_fields: Default::default(),
            };
            let result: Result<Box<GatewayKeepAliveResp>, Error> = MeshClient::request_sync_with_header(instance_id.clone(), "/v1/gateway/white/keepAlive".to_string(), Box::new(req), header.clone());
            match result {
                Ok(_) => {
                    log::info("mesh heartbeat success");
                    return;
                }
                Err(err) => {
                    log::warn(format!("mesh heartbeat error: {}", err.message).as_str());
                    retry_count += 1;
                    sleep(Duration::from_millis((retry_count.clone() % 10) * 100));
                    continue;
                }
            };
        }
    }

    pub fn reset_header(instance_id: String) {
        let config = Config::get_config(instance_id.clone()).read().unwrap().clone();
        if config.net.clone() != 1 {
            return;
        }
        let conf = config.clone();
        drop(config);
        log::debug("mesh reset header");
        MeshClient::heartbeat(instance_id.clone(), Some(RequestHeader {
            appId: conf.app_id.clone(),
            userId: conf.user_id.unwrap_or_default(),
            userToken: conf.user_token.unwrap_or_default(),
            clientIp: "".to_string(),
            installId: conf.install_id.clone(),
            platform: protobuf::EnumOrUnknown::from_i32(conf.platform),
            gatewayPodIp: "".to_string(),
            deviceModel: conf.device_model.to_string(),
            osVersion: conf.os_version.to_string(),
            appVersion: env!("CARGO_PKG_VERSION").to_string(),
            language: protobuf::EnumOrUnknown::from_i32(conf.language),
            connectTime: 0,
            encoding: protobuf::EnumOrUnknown::from_i32(0),
            extra: conf.custom_header.to_string(),
            special_fields: Default::default(),
        }));
        log::info("mesh reset header success");
    }
}

impl MeshClient {
    pub fn loop_reconnect(instance_id: String) {
        spawn(move || {
            loop {
                match Config::get_config_or_none(instance_id.clone()) {
                    None => {
                        sleep(Duration::from_millis(50));
                        continue;
                    }
                    Some(config) => {
                        let config = config.read().unwrap();
                        if config.net != 1 {
                            drop(config);
                            return;
                        } else {
                            drop(config);
                            break;
                        }
                    }
                };
            }
            loop {
                let instance_id = instance_id.clone();
                MeshClient::loop_reconnect_(instance_id.clone());
            }
        });
    }
}

impl MeshClient {
    fn loop_reconnect_(instance_id: String) -> () {
        let mut reconnect_count = 0;
        loop {
            log::info(format!("mesh client {} start connect", instance_id.clone()).as_str());
            let end_reason = MeshClient::reconnect(instance_id.clone());
            log::info(format!("mesh client {} end connect, reason: {}", instance_id.clone(), end_reason).as_str());
            reconnect_count += 1;
            let after_seconds = reconnect_count.clone() % 10;
            log::info(format!("mesh client {} reconnect after {} seconds", instance_id.clone(), after_seconds).as_str());
            sleep(Duration::from_secs(after_seconds));
        }
    }

    fn reconnect(instance_id: String) -> String {
        log::debug(format!("mesh client {} reconnect", instance_id.clone()).as_str());
        let config = Config::get_config(instance_id.clone()).read().unwrap().clone();
        let ice_servers = config.ice_servers.clone();
        log::debug(format!("mesh client {} ice servers: {:?}", instance_id.clone(), ice_servers.clone()).as_str());
        let rtc_config = RtcConfig::new(&ice_servers);

        let mut peer_connection = RtcPeerConnection::new(&rtc_config, ConnectionListener {
            instance_id: instance_id.clone(),
        }).unwrap();

        let long_connection_id = uuid();
        let (p, k) = generate_key();
        let long_connection = LongConnection {
            instance_id: instance_id.clone(),
            connection_id: long_connection_id.clone(),
            private_key: p,
            public_key: k,
            aes_key: None,
        };
        let mut map = LONG_CONNECTION_INSTANCE_MAP.write().unwrap();
        map.insert(instance_id.clone(), Arc::new(RwLock::new(long_connection)));
        drop(map);

        let mut data_channel = peer_connection.create_data_channel("data", DataChannelListener {
            instance_id: instance_id.clone(),
            long_connection_id: long_connection_id.clone(),
        }).unwrap();

        // 交换信令
        match peer_connection.set_local_description(SdpType::Offer) {
            Ok(_) => {
                log::info(format!("mesh client {} set local description success", instance_id.clone()).as_str())
            }
            Err(err) => {
                log::error(format!("mesh client {} set local description error: {}", instance_id.clone(), err).as_str());
                return format!("set local description error");
            }
        };
        let offer: SessionDescription;
        match peer_connection.local_description() {
            Some(o) => {
                offer = o;
                log::info(format!("mesh client {} local description: {}", instance_id.clone(), offer.sdp.clone()).as_str());
            }
            None => {
                log::error(format!("mesh client {} local description is none", instance_id.clone()).as_str());
                return format!("local description is none");
            }
        };

        let http_client = reqwest::blocking::Client::new();
        let mut url = "http".to_string();
        {
            if config.ssl {
                url.push_str("s");
            }
            url.push_str("://");
            url.push_str(config.host.as_str());
            url.push_str(":");
            url.push_str(config.port.to_string().as_str());
            url.push_str("/offer");
        }
        let mut builder = http_client.post(url);
        {
            builder = builder.header("Content-Type", "application/json");
            builder = builder.body(serde_json::to_string(
                &OfferReq::new(config.app_id.clone(), offer.sdp.to_string()),
            ).unwrap());
        }
        let resp: Response;
        match builder.send() {
            Ok(r) => {
                resp = r;
                log::info(format!("mesh client {} get answer success", instance_id.clone()).as_str());
            }
            Err(err) => {
                log::error(format!("mesh client {} send offer error: {}", instance_id.clone(), err).as_str());
                return format!("send offer error");
            }
        };
        // status code
        if resp.status().is_success() {
            let resp_text: String;
            match resp.text() {
                Ok(t) => {
                    resp_text = t;
                    log::info(format!("mesh client {} get answer resp text: {}", instance_id.clone(), resp_text.as_str()).as_str());
                }
                Err(err) => {
                    log::error(format!("mesh client {} get offer resp text error: {}", instance_id.clone(), err).as_str());
                    return format!("get offer resp text error");
                }
            };
            let resp: OfferResp = serde_json::from_str(resp_text.as_str()).unwrap_or_default();
            if resp.code != 0 {
                return format!("http code: {}, msg: {}", resp.code, resp.msg);
            }
            let resp: AnswerResp = resp.data;
            if resp.r#type.is_empty() {
                // 有问题
                log::error(format!("unmarshal answer resp error, resp text: {}", resp_text.as_str()).as_str());
                return format!("unmarshal answer resp error");
            }
            match parse_sdp(resp.sdp.as_str(), false) {
                Ok(session) => {
                    let session = SdpSession {
                        version: session.version,
                        origin: SdpOrigin {
                            username: session.origin.username,
                            session_id: session.origin.session_id,
                            session_version: session.origin.session_version,
                            unicast_addr: session.origin.unicast_addr,
                        },
                        session: session.session,
                        connection: session.connection,
                        bandwidth: session.bandwidth,
                        timing: session.timing,
                        attribute: session.attribute,
                        media: session.media,
                        warnings: session.warnings,
                    };
                    let answer = SessionDescription { sdp: session, sdp_type: SdpType::Answer };
                    peer_connection.set_remote_description(&answer).unwrap();
                    let (sender, receiver) = std::sync::mpsc::channel();
                    MeshRequest::set_sender(instance_id.clone(), sender);
                    loop {
                        match receiver.recv() {
                            Ok(req) => {
                                let uuid = req.requestId.clone();
                                let path = req.path.clone();
                                let mut buf = proto::marshal(&req);
                                // 是否加密
                                log::debug("on_receive: websocket receive binary");
                                let map = LONG_CONNECTION_INSTANCE_MAP.read().unwrap();
                                let connection_id = long_connection_id.clone();
                                let connection_id = connection_id.as_str();
                                let long_connection = map.get(connection_id).unwrap();
                                let long_connection = long_connection.read().unwrap();
                                let aes_key = long_connection.aes_key.clone();
                                drop(long_connection);
                                drop(map);
                                if aes_key.is_some() {
                                    let aes_key = aes_key.unwrap();
                                    // iv 取中间16位
                                    let iv: Vec<u8> = aes_key[8..24].to_vec();
                                    match aes_decrypt(aes_key, iv, Vec::from(buf)) {
                                        Ok(data) => {
                                            buf = data;
                                        }
                                        Err(err) => {
                                            log::error(err.as_str());
                                            break;
                                        }
                                    };
                                }
                                match data_channel.send(&buf) {
                                    Ok(_) => {}
                                    Err(e) => {
                                        log::error(format!("mesh client {} send error: {}", instance_id.clone(), e).as_str());
                                        APIResponse::on_response(uuid.clone(), gateway::GatewayApiResponse {
                                            header: protobuf::MessageField::some(common::ResponseHeader {
                                                code: protobuf::EnumOrUnknown::from(common::ResponseCode::TIMEOUT),
                                                actionType: Default::default(),
                                                actionData: "".to_string(),
                                                extra: "".to_string(),
                                                special_fields: Default::default(),
                                            }),
                                            requestId: uuid.clone().to_string(),
                                            path: path.to_string(),
                                            body: vec![],
                                            special_fields: Default::default(),
                                        });
                                    }
                                };
                            }
                            Err(_) => {
                                log::warn("channel closed, reconnect");
                                break;
                            }
                        };
                    }
                }
                Err(err) => {
                    log::error(format!("parse sdp error: {}", err.clone()).as_str());
                    return format!("parse sdp error: {}", err);
                }
            };
        } else {
            return format!("http status code: {}", resp.status().as_u16());
        }
        sleep(Duration::from_secs(10));
        return "".to_string();
    }
}

#[derive(Serialize, Deserialize)]
struct OfferReq {
    // 驼峰
    #[serde(rename = "appId")]
    app_id: String,
    sdp: String,
    r#type: String, // 1: offer, 2: pranswer, 3: answer 4: rollback
}

impl OfferReq {
    fn new(app_id: String, sdp: String) -> Self {
        OfferReq {
            app_id,
            sdp,
            r#type: "offer".to_string(),
        }
    }
}

#[derive(Serialize, Deserialize, Default)]
struct OfferResp {
    msg: String,
    code: i32,
    data: AnswerResp,
}

#[derive(Serialize, Deserialize, Default)]
struct AnswerResp {
    sdp: String,
    r#type: String, // 1: offer, 2: pranswer, 3: answer 4: rollback
}

struct ConnectionListener {
    instance_id: String,
}

impl PeerConnectionHandler for ConnectionListener {
    type DCH = DataChannelListener;

    /// Used to create the `RtcDataChannel` received through `on_data_channel`.
    fn data_channel_handler(&mut self, _info: DataChannelInfo) -> Self::DCH {
        DataChannelListener {
            instance_id: self.instance_id.clone(),
            long_connection_id: "".to_string(),
        }
    }

    fn on_connection_state_change(&mut self, _: ConnectionState) {}

    fn on_data_channel(&mut self, _: Box<RtcDataChannel<Self::DCH>>) {
        // TODO: store `dc` to keep receiving its messages (otherwise it will be dropped)
    }
}

struct DataChannelListener {
    instance_id: String,
    long_connection_id: String,
}

impl DataChannelHandler for DataChannelListener {
    fn on_open(&mut self) {
        let instance_id = self.instance_id.clone();
        spawn(move || {
            log::info(format!("mesh client {} data channel open, reset header", instance_id.clone()).as_str());
            MeshClient::reset_header(instance_id.clone());
            log::info(format!("mesh client {} data channel open, reset header success", instance_id.clone()).as_str());
        });
    }

    fn on_closed(&mut self) {
        log::warn(format!("mesh client {} data channel closed", self.instance_id.clone()).as_str());
        MeshRequest::remove_sender(self.instance_id.clone());
    }
    fn on_error(&mut self, _: &str) {}
    fn on_message(&mut self, data: &[u8]) {
        log::debug("on_receive: websocket receive binary");
        let map = LONG_CONNECTION_INSTANCE_MAP.read().unwrap();
        let connection_id = self.long_connection_id.clone();
        let connection_id = connection_id.as_str();
        let long_connection = map.get(connection_id).unwrap();
        let long_connection = long_connection.read().unwrap();
        let aes_key = long_connection.aes_key.clone();
        drop(long_connection);
        drop(map);
        if aes_key.is_some() {
            let aes_key = aes_key.unwrap();
            // iv 取中间16位
            let iv: Vec<u8> = aes_key[8..24].to_vec();
            match aes_decrypt(aes_key, iv, Vec::from(data)) {
                Ok(data) => {
                    ApiReader::on_receive(self.instance_id.clone(), Vec::from(data));
                }
                Err(err) => {
                    log::error(err.as_str());
                }
            };
        } else {
            ApiReader::on_receive(self.instance_id.clone(), Vec::from(data));
        }
    }
}
