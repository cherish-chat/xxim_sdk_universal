import 'dart:convert';

import 'package:xxim_sdk/xxim_sdk.dart';

void main() {
  var lib = createLib();
  lib.init(
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

  lib.setUserToken(token: "j.w.t");
}
