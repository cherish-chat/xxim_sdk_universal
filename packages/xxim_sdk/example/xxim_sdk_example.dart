import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

import 'package:xxim_sdk/src/bridge_generated.dart';
import 'package:xxim_sdk/xxim_sdk.dart';
import 'package:fixnum/fixnum.dart' as $fixnum;

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
    instanceId: instanceId,
    // net: 0, // 0是传统ws 1是p2p mesh 目前还在写
    // host: '127.0.0.1',
    // port: 34500,
    // ssl: false,
    net: 1,
    // 0是传统ws 1是p2p mesh 目前还在写
    host: 'imcloudx.cherish.chat',
    port: 80,
    ssl: false,
    appId: '1',

    platform: 0,
    deviceModel: 'Macos',
    osVersion: '10.15.7',
    requestTimeoutMillisecond: 20000,
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

  if (true) {
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
    while (true) {
      var apiResponse = ApiResult.fromString(await lib.setLoginInfo(
        instanceId: instanceId,
        userId: 'dart1',
        token:
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJleHAiOjQ4NDM4MDM3OTYsImp0aSI6ImRhcnQxIn0.X8AmDQx5Ug6yNerkN0PofEajKIrFe1v48GT0Xq-58oE',
      ));
      if (apiResponse.code != 0) {
        print('apiResponse: ${apiResponse.toString()}');
        sleep(Duration(seconds: 1));
      } else {
        if (apiResponse.data != "true") {
          print('apiResponse: ${apiResponse.toString()}');
          sleep(Duration(seconds: 1));
        } else {
          break;
        }
      }
    }
  }

  if (true) {
    var req = GroupCreateReq(
      name: 'dart1',
      avatar: 'dart1',
      memberList: ['dart1', '1', '2'],
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
    while (true) {
      var req = ListFriendApplyReq(
        cursor: $fixnum.Int64(0),
        limit: $fixnum.Int64(10),
        filter: ListFriendApplyReq_Filter(
          status: FriendApplyStatus.Applying,
        ),
        option: ListFriendApplyReq_Option(
          includeApplyByMe: true,
        ),
      );
      var apiResponse = ApiResult.fromString(await lib.listFriendApply(
          instanceId: instanceId, protobuf: req.writeToBuffer()));
      if (apiResponse.code != 0) {
        print('listFriendApplyResult: ${apiResponse.toString()}');
        sleep(Duration(seconds: 1));
        continue;
      } else {
        ListFriendApplyResp resp =
        ListFriendApplyResp.fromBuffer(base64Decode(apiResponse.data));
        print('listFriendApplyResp: ${resp.toProto3Json()}');
        for (var element in resp.friendApplyList) {
          var applyId = element.applyId;
          // 同意
          if (true) {
            var req = FriendApplyHandleReq(
              applyId: applyId,
              agree: true,
              firstMessage: 'hello',
            );
            var apiResponse = ApiResult.fromString(await lib.friendApplyHandle(
                instanceId: instanceId, protobuf: req.writeToBuffer()));
            if (apiResponse.code != 0) {
              print('friendApplyHandleResult: ${apiResponse.toString()}');
            } else {
              FriendApplyHandleResp resp =
              FriendApplyHandleResp.fromBuffer(base64Decode(apiResponse.data));
              print('friendApplyHandleResp: ${resp.toProto3Json()}');
            }
          }
        }
        break;
      }
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
