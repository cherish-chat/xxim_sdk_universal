import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

import 'package:xxim_sdk/src/bridge_generated.dart';
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

Future<void> main() async {
  var lib = createLib();
  const instanceId = '1';
  await lib.newInstance(instanceId: instanceId);

  var stream = lib.presetStream(instanceId: instanceId);
  stream.listen(onEvent);

  var initResult = ApiResult.fromString(await lib.initInstance(
    instanceId: instanceId,
    net: 0, // 0是传统ws 1是p2p mesh 目前还在写
    host: '127.0.0.1',
    port: 34500,
    ssl: false,
    // net: 1,
    // // 0是传统ws 1是p2p mesh 目前还在写
    // host: 'imcloudx.cherish.chat',
    // port: 80,
    // ssl: false,
    appId: '1',

    platform: 0,
    deviceModel: 'Macos',
    osVersion: '10.15.7',
    language: 0,
    requestTimeoutMillisecond: 2000,
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
      userId: 'dart3',
      nickname: 'dart3',
      avatar: 'dart3',
      accountMap: {
        'username': 'dart3',
        'passwordSalt': 'dart3',
        'password': 'dart3',
        'phone': '13700000003',
        'phoneCode': '86',
      },
      verifyMap: {
        'smsCode': '123456',
        'captchaId': '123456',
        'captchaCode': '123456',
      },
    );
    while (false) {
      var userRegisterResult = ApiResult.fromString(await lib.userRegister(
        protobuf: req.writeToBuffer(),
        instanceId: instanceId,
      ));
      print('userRegisterResult: ${userRegisterResult.toString()}');
      if (userRegisterResult.code != 0) {
        sleep(Duration(seconds: 1));
        continue;
      }
      GatewayApiResponse apiResponse =
          GatewayApiResponse.fromBuffer(base64Decode(userRegisterResult.data));
      ResponseHeader header = apiResponse.getField(1);
      print('userRegisterResp.header: ${header.toProto3Json()}');
      if (header.code != ResponseCode.SUCCESS) {
        sleep(Duration(seconds: 1));
        continue;
      }
      UserRegisterResp resp = UserRegisterResp.fromBuffer(apiResponse.body);
      print('userRegisterResp: ${resp.toProto3Json()}');
      break;
    }
  }

  if (true) {
    var req = UserAccessTokenReq(
      accountMap: {
        'username': 'dart3',
        'passwordSalt': 'dart3',
        'password': 'dart3',
        'phone': '13700000003',
        'phoneCode': '86',
      },
      verifyMap: {
        'smsCode': '123456',
        'captchaId': '123456',
        'captchaCode': '123456',
      },
    );
    while (true) {
      var userAccessTokenResult =
          ApiResult.fromString(await lib.userAccessToken(
        protobuf: req.writeToBuffer(),
        instanceId: instanceId,
      ));
      print('userAccessTokenResult: ${userAccessTokenResult.toString()}');
      if (userAccessTokenResult.code != 0) {
        sleep(Duration(seconds: 1));
        continue;
      }

      UserAccessTokenResp resp =
      UserAccessTokenResp.fromBuffer(base64Decode(userAccessTokenResult.data));
      print('userAccessTokenResp: ${resp.toProto3Json()}');
      if (resp.header.code != ResponseCode.SUCCESS) {
        exit(1);
      }

      await lib.setLoginInfo(
        instanceId: instanceId,
        userId: resp.userId,
        token: resp.accessToken,
      );
      break;
    }
  }

  if (true) {
    var req = GroupCreateReq(
      name: 'dart3',
      avatar: 'dart3',
      memberList: ['dart1', 'dart2', '1', '2'],
    );
    var apiResponse = ApiResult.fromString(await lib.groupCreate(
        instanceId: instanceId, protobuf: req.writeToBuffer()));
    if (apiResponse.code != 0) {
      print('groupCreateResult: ${apiResponse.toString()}');
    }
    GroupCreateResp resp =
        GroupCreateResp.fromBuffer(base64Decode(apiResponse.data));
    print('groupCreateResp: ${resp.toProto3Json()}');
  }

  if (true) {
    var req = FriendApplyReq(
      toUserId: 'dart1',
      message: '加我',
    );
    var apiResponse = ApiResult.fromString(await lib.friendApply(
        instanceId: instanceId, protobuf: req.writeToBuffer()));
    if (apiResponse.code != 0) {
      print('friendApplyResult: ${apiResponse.toString()}');
    } else {
      FriendApplyResp resp =
          FriendApplyResp.fromBuffer(base64Decode(apiResponse.data));
      print('friendApplyResp: ${resp.toProto3Json()}');
    }
  }

  if (true) {
    await getConn(instanceId: instanceId, lib: lib);
  }

  sleep(Duration(days: 1));
}

Future<void> getConn({required String instanceId, required XximSdk lib}) async {
  while (true) {
    var req = GatewayGetUserConnectionReq(
      userId: 'dart1',
    );
    var res = await lib.getUserConnection(
        instanceId: instanceId, protobuf: req.writeToBuffer());
    print('getUserConnection: $res');
    var apiResponse = ApiResult.fromString(res);
    if (apiResponse.code != 0) {
      print('getUserConnection: ${apiResponse.toString()}');
    }
    GatewayGetUserConnectionResp resp =
        GatewayGetUserConnectionResp.fromBuffer(base64Decode(apiResponse.data));
    print('getUserConnectionResp: ${resp.toProto3Json()}');
    sleep(const Duration(seconds: 5));
  }
}

void onEvent(Uint8List event) {
  print('${DateTime.now()} event: $event');
}
