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
  print("newInstanceResult: ${newInstanceResult}");
  var instance_id = newInstanceResult.data;

  var initResult = ApiResult.fromString(await lib.init(
      param: ApiParam.build(instance_id: instance_id, data: {
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
  }).toJsonString()));

  print("initResult: ${initResult.toString()}");

  if (initResult.data != 'true') {
    return;
  }

  var setLoginInfoResult = ApiResult.fromString(await lib.setLoginInfo(
      param: ApiParam.build(instance_id: instance_id, data: {
    "token": "user_token",
    "user_id": "user_id",
  }).toJsonString()));
  print("setLoginInfoResult: ${setLoginInfoResult.toString()}");
}
