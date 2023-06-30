use std::cell::{RefCell, RefMut};
use std::rc::Rc;
use crate::client::client::{Client, Error};
pub use std::net::TcpStream;
use tokio::sync::mpsc::{unbounded_channel, UnboundedReceiver, UnboundedSender};
use websocket::client::sync::{Client as WebSocketClient};
use native_tls::TlsStream;
use tokio_context::context::Context;
use crate::config::Config;
use crate::tool::log;
use std::sync::{Arc, Mutex, RwLock};
use std::collections::HashMap;
use std::fmt::Debug;
use std::ops::Deref;
use lazy_static::lazy_static;
use once_cell::sync::OnceCell;
use tokio::sync::mpsc::error::SendError;
use websocket::{CloseData, OwnedMessage, WebSocketResult};
use websocket::sender::Writer;
use crate::pb::common;
use crate::pb::common::Platform;

#[derive(Clone, Debug)]
pub enum ConnectEventType {
    //连接中
    Connecting,
    //连接成功
    Connected,
    //连接失败
    ConnectFailed,
    //连接关闭
    ConnectClosed,
}

#[derive(Clone, Debug)]
pub struct ConnectEvent {
    pub typ: ConnectEventType,
}

impl Client {
    pub fn before_logout(&self) {
        Stream::shutdown_find_cancel(self.uuid.clone());
    }
}

impl Client {
    pub fn connect(&self) {
        let (mut stream, mut shutdown_ctx, mut rx) = Stream::new(
            self.uuid.clone(),
            self.config.clone(),
            self.user_id.clone().unwrap(),
            self.user_token.clone().unwrap(),
        );
        // let (shutdown_tx, mut shutdown_rx) = unbounded_channel(); // 上层发送数据给底层
        self.rt.spawn(async move {
            loop {
                tokio::select! {
                    _ = shutdown_ctx.done() => {
                        log::warn("shutdown_ctx.done");
                        // shutdown_tx.send("shutdown_ctx.done".to_string()).unwrap();
                        break;
                    }
                    _ = stream.connect() => {
                        log::error("connect thread quit");
                        continue;
                    }
                }
            }
        });
        // self.rt.spawn(async move {
        //     loop {
        //         tokio::select! {
        //             message_result = rx.recv() => {
        //                 match message_result {
        //                     Some(message) => {
        //                         log::info(format!("recv message: {:?}", message).as_str());
        //                     }
        //                     _ => {}
        //                 }
        //                 continue;
        //             }
        //             _ = shutdown_rx.recv() => {
        //                 log::warn("shutdown_rx.recv");
        //                 break;
        //             }
        //         }
        //     }
        // });
    }
}

pub struct CtxHandle {
    pub uuid: String,
    pub handle: RefCell<Box<dyn FnOnce() + Send + Sync>>,
    pub tx: UnboundedSender<Vec<u8>>,
}

lazy_static! {
    static ref SHUTDOWN_CTX_HANDLE_MAP: Mutex<HashMap<String, CtxHandle>> = Mutex::new(HashMap::new());
    static ref RECONNECT_CTX_HANDLE_MAP: Mutex<HashMap<String, UnboundedSender<String>>> = Mutex::new(HashMap::new());
}

impl CtxHandle {
    pub fn call_handle(&mut self) {
        let handle = self.handle.replace(Box::new(|| {}));
        handle();
    }

    pub fn send(&self, data: Vec<u8>) -> Result<(), SendError<Vec<u8>>> {
        self.tx.send(data)
    }
}

pub struct Stream {
    pub tx: UnboundedSender<Vec<u8>>, // 接收到数据后使用该通道发送给上层

    pub config: Config,

    pub rx: UnboundedReceiver<Vec<u8>>,
    // 上层发送数据给底层使用该通道发送

    pub uuid: String,

    reconnect_ctx: UnboundedReceiver<String>,

    pub user_token: String,

    pub user_id: String,
}

impl Debug for CtxHandle {
    fn fmt(&self, f: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
        f.debug_struct("Stream")
            .field("uuid", &self.uuid)
            .finish()
    }
}

impl Stream {
    fn shutdown_find_cancel(uuid: String) {
        // find
        let mut map = SHUTDOWN_CTX_HANDLE_MAP.lock().unwrap();
        let once_call_stream_result = map.get_mut(&uuid);
        if once_call_stream_result.is_some() {
            let once_call_stream = once_call_stream_result.unwrap();
            once_call_stream.call_handle();
        }
    }
    fn reconnect_find_cancel(uuid: String) {
        // find
        let mut map = RECONNECT_CTX_HANDLE_MAP.lock().unwrap();
        let once_call_stream_result = map.get_mut(&uuid);
        if once_call_stream_result.is_some() {
            log::debug("reconnect_find_cancel");
            let once_call_stream = once_call_stream_result.unwrap();
            once_call_stream.send("".to_string()).expect("send reconnect cancel error");
            log::debug("reconnect_find_cancel send success");
        }
    }

    fn shutdown_remove_ctx_handle(uuid: String) {
        let mut map = SHUTDOWN_CTX_HANDLE_MAP.lock().unwrap();
        map.remove(&uuid);
    }

    fn reconnect_remove_ctx_handle(uuid: String) {
        let mut map = RECONNECT_CTX_HANDLE_MAP.lock().unwrap();
        map.remove(&uuid);
    }

    fn new(
        uuid: String,
        config: Config,
        user_id: String,
        user_token: String,
    ) -> (Self, Context, UnboundedReceiver<Vec<u8>>) {
        let (shutdown_ctx, shutdown_ctx_handle) = Context::new();
        let (tx, return_rx) = unbounded_channel(); // 该通道发送给上层
        let (return_tx, rx) = unbounded_channel(); // 上层发送数据给底层
        let (reconnect_handle, reconnect_ctx) = unbounded_channel(); // 上层发送数据给底层
        let stream = Self {
            tx,
            config,
            rx,
            uuid: uuid.clone(),
            reconnect_ctx,
            user_id,
            user_token,
        };
        // 存储 ctx_handle
        {
            let mut map = SHUTDOWN_CTX_HANDLE_MAP.lock().unwrap();
            let cancel_function = move || {
                shutdown_ctx_handle.cancel();
            };
            let handle = RefCell::new(Box::new(cancel_function));

            map.insert(uuid.clone(), CtxHandle {
                uuid: uuid.clone(),
                handle,
                tx: return_tx.clone(),
            });
        }
        // 存储 reconnect_ctx_handle
        {
            let mut map = RECONNECT_CTX_HANDLE_MAP.lock().unwrap();
            map.insert(uuid.clone(), reconnect_handle);
        }
        (
            stream,
            shutdown_ctx,
            return_rx,
        )
    }

    async fn receive(&mut self, ws_sender: Writer<TcpStream>) -> String {
        let mut ws_sender = ws_sender;
        loop {
            tokio::select! {
                data = self.rx.recv() => {
                    if data.is_none() {
                        return "stop".to_string();
                    }
                    let data = data.unwrap();
                    let message = OwnedMessage::Binary(data);
                    let send_result = ws_sender.send_message(&message);
                    if send_result.is_err() {
                        println!("send_message error: {:?}", send_result);
                        return "stop".to_string();
                    }
                    continue;
                }
                reconnect = self.reconnect_ctx.recv() => {
                    log::debug("reconnect_ctx recv");
                    return "continue".to_string();
                }
            }
        }
    }

    async fn connect(&mut self) {
        loop {
            let mut client_builder = websocket::ClientBuilder::new(self.build_ws_url().as_str())
                .unwrap();
            if self.config.ssl {
                let connect_result = client_builder.connect_secure(None);
                match connect_result {
                    Ok(ws_client) => {}
                    Err(e) => {
                        println!("connect_secure error: {:?}", e);
                    }
                }
            } else {
                let connect_result = client_builder.connect_insecure();
                match connect_result {
                    Ok(ws_client) => {
                        let (mut receiver, sender) = ws_client.split().unwrap();
                        // current runtime
                        let rt = tokio::runtime::Handle::current();
                        // let tx = self.tx.clone();
                        let uuid = self.uuid.clone();
                        rt.spawn(async move {
                            for message in receiver.incoming_messages() {
                                let message = match message {
                                    Ok(m) => m,
                                    Err(e) => {
                                        log::warn(format!("websocket error: {:?}", e).as_str());
                                        // tx.send("websocket error".to_string()).unwrap();
                                        break;
                                    }
                                };
                                match message {
                                    OwnedMessage::Text(data) => {
                                        log::debug(format!("websocket receive text: {:?}", data).as_str());
                                    }
                                    OwnedMessage::Binary(data) => {
                                        log::debug(format!("websocket receive binary: {:?}", data).as_str());
                                        // tx.send(data).unwrap();
                                    }
                                    OwnedMessage::Close(data) => {
                                        match data {
                                            None => {}
                                            Some(data) => {
                                                log::warn(format!("websocket close: {:?}", data).as_str());
                                            }
                                        };
                                        break;
                                    }
                                    OwnedMessage::Ping(_) => {
                                        log::debug("websocket ping")
                                    }
                                    OwnedMessage::Pong(_) => {
                                        log::debug("websocket pong")
                                    }
                                    _ => {
                                        log::warn("websocket other")
                                    }
                                }
                            }
                            log::warn("receive end, retry after 1s...");
                            tokio::time::sleep(tokio::time::Duration::from_secs(1)).await;
                            Stream::reconnect_find_cancel(uuid.clone());
                        });
                        // 一直读取 self.rx
                        let result = self.receive(sender).await;
                        tokio::time::sleep(tokio::time::Duration::from_secs(1)).await;
                        if result == "stop" {
                            break;
                        } else {
                            continue;
                        }
                    }
                    Err(e) => {
                        println!("connect_insecure error: {:?}", e);
                    }
                }
            }
        }


        // // for 循环 10次
        // for i in 0..1000 {
        //     // println!("i: {}", i);
        //     self.tx.send(format!("i: {}", i)).unwrap();
        //     tokio::time::sleep(tokio::time::Duration::from_secs(1)).await;
        // }
        // self.tx.send("end".to_string()).unwrap();
    }

    fn build_ws_url(&self) -> String {
        let config = self.config.clone();
        let platform: protobuf::EnumOrUnknown<common::Platform> = protobuf::EnumOrUnknown::from_i32(config.platform);
        let platform = platform.unwrap();
        let mut platform_str = match platform {
            Platform::IOS => { "ios" }
            Platform::ANDROID => { "android" }
            Platform::WEB => { "web" }
            Platform::WINDOWS => { "windows" }
            Platform::MAC => { "mac" }
            Platform::LINUX => { "linux" }
            Platform::Ipad => { "ipad" }
            Platform::AndroidPad => { "androidpad" }
        };
        format!("ws://{}:{}/ws?appId={}&userId={}&userToken={}&installId={}&platform={}&deviceModel={}&osVersion={}&appVersion={}&language={}&encoding=protobuf&extra={}",
                config.host, config.port,
                config.app_id,
                self.user_id,
                self.user_token,
                config.install_id,
                platform_str,
                config.device_model,
                config.os_version,
                env!("CARGO_PKG_VERSION").to_string(),
                config.language,
                config.custom_header,
        )
    }
}


#[cfg(test)]
mod tests {
    use super::*;

    macro_rules! aw {
        ($e:expr)=>{
            tokio_test::block_on($e)
        }
    }

    async fn test(
        mut ctx: Context,
        mut done_callback: impl FnMut(),
        loop_callback: impl FnMut(i32),
    ) {
        tokio::select! {
        _ = ctx.done() => {
            done_callback();
            println!("done");
        }
        _ = loop_test(loop_callback) => {
            println!("stop loop");
        }
    }
    }

    async fn loop_test(mut callback: impl FnMut(i32)) {
        let mut times = 0;
        loop {
            callback(times.clone());
            times += 1;
            tokio::time::sleep(std::time::Duration::from_secs(1)).await;
        }
    }

    fn callback(num: i32) {
        println!("callback num: {}", num);
    }

    #[test]
    fn test_1() {
        let rt = tokio::runtime::Runtime::new().unwrap();
        let (ctx, handle) = Context::new();
        let mut num = 1;
        rt.spawn(async move {
            test(
                ctx,
                move || {
                    num = 2;
                    println!("done callback");
                },
                callback).await;
        });
        let rt = tokio::runtime::Runtime::new().unwrap();
        rt.block_on(async move {
            tokio::time::sleep(std::time::Duration::from_secs(5)).await;
            handle.cancel();
        });
        aw!(async {
            tokio::time::sleep(std::time::Duration::from_secs(6)).await;
        });
    }
}