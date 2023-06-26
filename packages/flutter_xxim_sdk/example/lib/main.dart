import 'dart:convert';

import 'package:flutter/material.dart';
import 'dart:async';

import 'package:flutter_xxim_sdk/flutter_xxim_sdk.dart' as flutter_xxim_sdk;
import 'package:xxim_sdk/xxim_sdk.dart';

void main() {
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
  final sdk = createLib();

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
                TextButton(onPressed: onPressedInit, child: const Text('init')),
                spacerSmall,
                TextButton(onPressed: onPressedSetUserToken, child: const Text('set_user_token')),
                spacerSmall,
              ],
            ),
          ),
        ),
      ),
    );
  }

  void onPressedInit() {
    sdk.init(configStr: jsonEncode({
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

  void onPressedSetUserToken() {
    sdk.setUserToken(token: "j.w.t");
  }
}
