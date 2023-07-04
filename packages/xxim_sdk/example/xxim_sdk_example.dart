import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

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
  const instanceId = '1';
  await lib.newInstance(instanceId: instanceId);

  var stream = lib.presetStream(instanceId: instanceId);
  stream.listen(onEvent);

  var initResult = ApiResult.fromString(await lib.initInstance(
    net: 0, // 0是传统ws 1是p2p mesh 目前还在写
    instanceId: instanceId,
    host: '127.0.0.1',
    port: 34500,
    ssl: false,
    platform: 0,
    deviceModel: 'Macos',
    osVersion: '10.15.7',
    language: 0,
    requestTimeoutMillisecond: 1000,
    dbDir: './db/',
    keepAliveSecond: 5,
    logLevel: 0,
    // appId: '',
    // installId: '',
    // customHeader: '',
  ));

  print('initResult: ${initResult.toString()}');

  if (initResult.data != 'true') {
    return;
  }

  var streamReadyResult =
      ApiResult.fromString(await lib.waitStreamReady(instanceId: instanceId));
  print('streamReadyResult: ${streamReadyResult.toString()}');
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

  if (false) {
    var unsetLoginInfoResult =
        ApiResult.fromString(await lib.unsetLoginInfo(instanceId: instanceId));
    print('unsetLoginInfoResult: ${unsetLoginInfoResult.toString()}');
  }
  // var destroy_instanceResult = ApiResult.fromString(await lib.destroyInstance(
  //     param:
  //         ApiParam.build(instanceId: instanceId, data: {}).toJsonString()));
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
      instanceId: instanceId,
    ));
    if (userRegisterResult.code != 0) {
      print('userRegisterResult: ${userRegisterResult.toString()}');
    }
    GatewayApiResponse apiResponse =
        GatewayApiResponse.fromBuffer(base64Decode(userRegisterResult.data));
    ResponseHeader header = apiResponse.getField(1);
    print('userRegisterResp.header: ${header.toProto3Json()}');
    UserRegisterResp resp = UserRegisterResp.fromBuffer(apiResponse.body);
    print('userRegisterResp: ${resp.toProto3Json()}');
  }

  if (false) {
    var req = UserAccessTokenReq(
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
    var userAccessTokenResult = ApiResult.fromString(await lib.userAccessToken(
      protobuf: req.writeToBuffer(),
      instanceId: instanceId,
    ));
    if (userAccessTokenResult.code != 0) {
      print('userAccessTokenResult: ${userAccessTokenResult.toString()}');
    }
    GatewayApiResponse apiResponse =
        GatewayApiResponse.fromBuffer(base64Decode(userAccessTokenResult.data));
    ResponseHeader header = apiResponse.getField(1);
    print('userAccessTokenResp.header: ${header.toProto3Json()}');
    UserAccessTokenResp resp = UserAccessTokenResp.fromBuffer(apiResponse.body);
    print('userAccessTokenResp: ${resp.toProto3Json()}');
  }

  {
    await lib.setLoginInfo(
      instanceId: instanceId,
      userId: 'dart1',
      token:
          'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJleHAiOjQ4NDM4MDM3OTYsImp0aSI6ImRhcnQxIn0.X8AmDQx5Ug6yNerkN0PofEajKIrFe1v48GT0Xq-58oE1',
    );
  }


  sleep(const Duration(seconds: 5));

  if (true) {
    await lib.unsetLoginInfo(instanceId: instanceId);
  }

  if (true) {
    await lib.setLoginInfo(
      instanceId: instanceId,
      userId: 'dart1',
      token:
      'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJleHAiOjQ4NDM4MDM3OTYsImp0aSI6ImRhcnQxIn0.X8AmDQx5Ug6yNerkN0PofEajKIrFe1v48GT0Xq-58oE',
    );
  }

  sleep(Duration(days: 1));
}

void onEvent(Uint8List event) {
  print('${DateTime.now()} event: $event');
}
