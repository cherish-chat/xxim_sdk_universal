import 'dart:convert';

import 'package:xxim_sdk/xxim_sdk.dart';

void main() {
  var awesome = Awesome();
  print('awesome: ${awesome.isAwesome}');

  var lib = createLib();
  /*
  Config {
    // host 服务器IP或域名，必填
    pub host: String,
    // port 服务器端口，必填
    pub port: u16,
    // ssl 是否使用SSL，选填，默认为false
    pub ssl: bool,
    // encoding 数据序列化方式，选填，默认为json，可选json、protobuf
    pub encoding: Encoding,
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
    pub request_timeout: time::Duration,
    // userToken 用户Token，选填，默认为空
    pub user_token: String,
    // customHeader 自定义请求头，选填，默认为空
    pub custom_header: String,
    // keepAliveSecond 保持连接时间，选填，默认为30s
    pub keep_alive_second: time::Duration,
    // logLevel 日志级别，选填，默认为info，可选debug、info、warn、error
    pub log_level: tool::log::Level,
}
   */
  lib.initStaticMethodXximSdk(
      configStr: jsonEncode({
    'host': '127.0.0.1',
    'port': 34500,
    'ssl': false,
    'encoding': 'Json',
    'app_id': '',
    'install_id': '',
    'platform': 0,
    'device_model': 'MacOS',
    'os_version': '10.15.7',
    'language': 0,
    'request_timeout_millisecond': 10,
    'user_token': '',
    'custom_header': '',
    'keep_alive_second': 30,
    'log_level': 'Debug',
  }));
}
