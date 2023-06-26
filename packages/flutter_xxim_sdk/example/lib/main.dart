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
                const Text(
                  'This calls a native function through FFI that is shipped as source in the package. '
                  'The native code is built as part of the Flutter Runner build.',
                  style: textStyle,
                  textAlign: TextAlign.center,
                ),
                TextButton(onPressed: onPressedInit, child: const Text('init')),
                spacerSmall,
                Text(
                  'sum(1, 2) = $sumResult',
                  style: textStyle,
                  textAlign: TextAlign.center,
                ),
                spacerSmall,
                FutureBuilder<int>(
                  future: sumAsyncResult,
                  builder: (BuildContext context, AsyncSnapshot<int> value) {
                    final displayValue =
                        (value.hasData) ? value.data : 'loading';
                    return Text(
                      'await sumAsync(3, 4) = $displayValue',
                      style: textStyle,
                      textAlign: TextAlign.center,
                    );
                  },
                ),
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
}
