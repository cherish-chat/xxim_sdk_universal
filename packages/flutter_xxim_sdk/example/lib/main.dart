import 'dart:convert';

import 'package:flutter/material.dart';
import 'dart:async';
import 'package:path_provider/path_provider.dart';

import 'package:flutter_xxim_sdk/flutter_xxim_sdk.dart' as flutter_xxim_sdk;
import 'package:xxim_sdk/xxim_sdk.dart';

var lib = createLib();
var instance_id = "";

Future<void> initInstanceId() async {
  var newInstanceResult = ApiResult.fromString(await lib.newInstance());
  print('newInstanceResult: ${newInstanceResult}');
  instance_id = newInstanceResult.data;
  print("initInstanceId: ${instance_id}");
}

Future<void> main() async {
  await initInstanceId();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late int sumResult;
  late Future<int> sumAsyncResult;


  @override
  void initState() {
    super.initState();
    sumResult = flutter_xxim_sdk.sum(1, 2);
    sumAsyncResult = flutter_xxim_sdk.sumAsync(3, 4);
  }

  @override
  Widget build(BuildContext context) {
    const textStyle = TextStyle(fontSize: 25);
    const spacerSmall = SizedBox(height: 10);
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Native Packages'),
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                TextButton(onPressed: (){
                  print('sumResult: 活着呢吗');
                }, child: const Text('活着呢吗')),
                spacerSmall,
                TextButton(onPressed: init, child: const Text('init')),
                spacerSmall,
                TextButton(
                    onPressed: setUserToken,
                    child: const Text('set_user_token')),
                spacerSmall,
                TextButton(
                    onPressed: unsetUserToken,
                    child: const Text('unset_user_token')),
                spacerSmall,
                TextButton(
                    onPressed: userRegister,
                    child: const Text('user_register')),
                spacerSmall,
              ],
            ),
          ),
        ),
      ),
    );
  }

  void init() async {
    var directory = (await getApplicationDocumentsDirectory()).path;
    var dbDir = directory + '/db';
    var initResult = ApiResult.fromString(await lib.initInstance(
      instanceId: instance_id,
      host: '192.168.2.3',
      // host: 'openapi.baidu.com',
      port: 34500,
      ssl: false,
      platform: 0,
      deviceModel: 'Macos',
      osVersion: '10.15.7',
      language: 0,
      requestTimeoutMillisecond: 100,
      dbDir: dbDir,
      keepAliveSecond: 30,
      logLevel: 0,
      // appId: '',
      // installId: '',
      // customHeader: '',
    ));

    print('initResult: ${initResult.toString()}');

    if (initResult.data != 'true') {
      throw Exception('init failed');
    }
  }

  void setUserToken() async {
    var setLoginInfoResult = ApiResult.fromString(await lib.setLoginInfo(
      instanceId: instance_id,
      userId: 'u',
      token: 't',
    ));
    print('setLoginInfoResult: ${setLoginInfoResult.toString()}');
  }

  void unsetUserToken() async {
    var unsetLoginInfoResult =
        ApiResult.fromString(await lib.unsetLoginInfo(instanceId: instance_id));
    print('unsetLoginInfoResult: ${unsetLoginInfoResult.toString()}');
  }

  void userRegister() async {
    {
      var userId = "dart2";
      var phone = "13700000002";
      var req = UserRegisterReq(
        userId: userId,
        nickname: userId,
        avatar: userId,
        accountMap: {
          'username': userId,
          'passwordSalt': userId,
          'password': userId,
          'phone': phone,
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
}

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
