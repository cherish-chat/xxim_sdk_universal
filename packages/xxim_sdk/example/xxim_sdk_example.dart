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

class ApiParam {
  String instance_id = '';
  String data = '';

  ApiParam.build({required this.instance_id, required dynamic data}) {
    this.data = jsonEncode(data);
  }

  String toJsonString() {
    return jsonEncode({
      'instance_id': instance_id,
      'data': data,
    });
  }

  String toString() {
    return jsonEncode({
      'instance_id': instance_id,
      'data': data,
    });
  }
}

Future<void> main() async {
  var lib = createLib();
  var newInstanceResult = ApiResult.fromString(await lib.newInstance());
  print('newInstanceResult: ${newInstanceResult}');
  var instance_id = newInstanceResult.data;

  var initResult = ApiResult.fromString(await lib.init(
    instanceId: instance_id,
    params: jsonEncode({
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
      'request_timeout_millisecond': 10,
      'user_token': '',
      'custom_header': '',
      'keep_alive_second': 30,
      'log_level': 'Debug',
      'db_dir': './db/',
    }),
  ));

  print('initResult: ${initResult.toString()}');

  if (initResult.data != 'true') {
    return;
  }

  var setLoginInfoResult = ApiResult.fromString(await lib.setLoginInfo(
    instanceId: instance_id,
    params: jsonEncode({
      'user_id': 'user_id',
      'token': 'user_token',
    }),
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
    var ctx = await lib.contextWithTimeout(instanceId:instance_id, timeoutMills: 1);
    var req = UserRegisterReq.create();
    req.mergeFromJsonMap({});
    var userRegisterResult = ApiResult.fromString(await lib.userRegisterApi(
      ctx: ctx,
      protobuf: req.writeToBuffer(),
      instanceId: instance_id,
    ));
    print('userRegisterResult: ${userRegisterResult.toString()}');
  }

}
