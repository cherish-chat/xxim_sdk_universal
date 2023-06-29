import 'dart:async';
import 'dart:convert';

import 'package:xxim_sdk/xxim_sdk.dart';

class ApiResult {
  int code = 0;
  String message = '';
  String data = '';

  ApiResult.fromString(String str) {
    try {
      var map = jsonDecode(str);
      code = map['code'];
      message = map['message'];
      data = map['data'];
    } catch (e) {
      print(e);
    }
  }

  String toString() {
    return jsonEncode({
      'code': code,
      'message': message,
      'data': data,
    });
  }
}

Future<void> main1() async {
  var b = "AQIDBAU=";
  //base64解码
  var bytes = base64Decode(b);
  print(bytes);
}

Future<void> main() async {
  var lib = createLib();
  var newInstanceResult = ApiResult.fromString(await lib.newInstance());
  print('newInstanceResult: ${newInstanceResult}');
  var instance_id = newInstanceResult.data;

  /*
  jsonEncode({
      'host': '127.0.0.1',
      'port': 34500,
      'ssl': false,
      'encoding': 'Json',
      'app_id': 'appid',
      'install_id': '',
      'platform': 0,
      'device_model': 'MacOS',
      'os_version': '10.15.7',
      'language': 0,
      'request_timeout_millisecond': 1,
      'user_token': '',
      'custom_header': '',
      'keep_alive_second': 30,
      'log_level': 'Debug',
      'db_dir': './db/',
    }),
   */
  var initResult = ApiResult.fromString(await lib.initInstance(
    instanceId: instance_id,
    host: '127.0.0.1',
    port: 34500,
    ssl: false,
    platform: 0,
    deviceModel: 'Macos',
    osVersion: '10.15.7',
    language: 0,
    requestTimeoutMillisecond: 100,
    dbDir: './db/',
    keepAliveSecond: 30,
    logLevel: 0,
    // appId: '',
    // installId: '',
    // customHeader: '',
  ));

  print('initResult: ${initResult.toString()}');

  if (initResult.data != 'true') {
    return;
  }

  var setLoginInfoResult = ApiResult.fromString(await lib.setLoginInfo(
    instanceId: instance_id,
    userId: 'u',
    token: 't',
  ));
  print('setLoginInfoResult: ${setLoginInfoResult.toString()}');

  var unsetLoginInfoResult =
      ApiResult.fromString(await lib.unsetLoginInfo(instanceId: instance_id));
  print('unsetLoginInfoResult: ${unsetLoginInfoResult.toString()}');

  // var destroy_instanceResult = ApiResult.fromString(await lib.destroyInstance(
  //     param:
  //         ApiParam.build(instance_id: instance_id, data: {}).toJsonString()));
  // print("destroy_instanceResult: ${destroy_instanceResult.toString()}");

  {
    var req = UserRegisterReq(
      userId: 'dart1',
      nickname: 'dart1',
      avatar: 'dart1',
      accountMap: {
        'username': 'dart1',
        'passwordSalt': 'dart1',
        'password': 'dart1',
        'phone': '13700000001',
        'phoneCode': '86',
      },
      verifyMap: {
        'smsCode': '123456',
        'captchaId': '123456',
        'captchaCode': '123456',
      },
    );
    var userRegisterResult = ApiResult.fromString(await lib.userRegister(
      protobuf: req.writeToBuffer(),
      instanceId: instance_id,
    ));
    if (userRegisterResult.code != 0) {
      print('userRegisterResult: ${userRegisterResult.toString()}');
    }
    UserRegisterResp resp =
        UserRegisterResp.fromBuffer(base64Decode(userRegisterResult.data));
    ResponseHeader header = resp.getField(1);
    print('userRegisterResp.header: ${header.toProto3Json()}');
    print('userRegisterResp: ${resp.toProto3Json()}');
  }
}
