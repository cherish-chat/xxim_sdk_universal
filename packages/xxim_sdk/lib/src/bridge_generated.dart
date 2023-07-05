// AUTO GENERATED FILE, DO NOT EDIT.
// Generated by `flutter_rust_bridge`@ 1.62.1.
// ignore_for_file: non_constant_identifier_names, unused_element, duplicate_ignore, directives_ordering, curly_braces_in_flow_control_structures, unnecessary_lambdas, slash_for_doc_comments, prefer_const_literals_to_create_immutables, implicit_dynamic_list_literal, duplicate_import, unused_import, unnecessary_import, prefer_single_quotes, prefer_const_constructors, use_super_parameters, always_use_package_imports, annotate_overrides, invalid_use_of_protected_member, constant_identifier_names, invalid_use_of_internal_member

import 'dart:convert';
import 'dart:async';
import 'package:meta/meta.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge.dart';

import 'dart:convert';
import 'dart:async';
import 'package:meta/meta.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge.dart';
import 'bridge_generated.io.dart' if (dart.library.html) 'bridge_generated.web.dart';

abstract class XximSdk {
  /// sdk暴露的方法的调用结果
  /// new_instance: 创建sdk实例
  /// 你可以创建多个sdk实例，每个实例都有自己的独立的连接
  Future<void> newInstance({required String instanceId, dynamic hint});

  FlutterRustBridgeTaskConstMeta get kNewInstanceConstMeta;

  /// destroy_instance: 销毁sdk实例
  Future<String> destroyInstance({required String instanceId, dynamic hint});

  FlutterRustBridgeTaskConstMeta get kDestroyInstanceConstMeta;

  /// init_instance: 初始化sdk实例
  /// @param instance_id: sdk实例id
  /// @param host: 服务器地址 example: "im.xx.com"
  /// @param port: 服务器端口 example: 443
  /// @param ssl: 是否使用ssl example: true
  /// @param app_id: app id example: "xxim"
  /// @param install_id: 安装id example: "xxx"
  /// @param platform: 平台 example: 1; 请查看`proto`文档中 `common.proto` -> `Platform`
  /// @param device_model: 设备型号 example: "iPhone 11"
  /// @param os_version: 操作系统版本 example: "iOS 14"
  /// @param language: 语言 example: 1; 请查看 `proto`文档中 `common` -> `Ii8nLanguage`
  /// @param request_timeout_millisecond: 请求超时时间 example: 10000
  /// @param db_dir: 数据库目录 example: "/data/data/com.xx.xx"
  /// @param custom_header: 自定义请求头 example: "{\"xx\":\"xx\"}"
  /// @param keep_alive_second: 保持连接的时间 example: 60
  /// @param log_level: 日志级别 example: 1; | 0: debug | 1: info | 2: warn | 3: error |
  Future<String> initInstance({required String instanceId, int? net, required String host, required int port, required bool ssl, List<String>? iceServers, String? appId, String? installId, required int platform, required String deviceModel, required String osVersion, required int language, required int requestTimeoutMillisecond, required String dbDir, String? customHeader, required int keepAliveSecond, required int logLevel, dynamic hint});

  FlutterRustBridgeTaskConstMeta get kInitInstanceConstMeta;

  /// preset_stream: 预设一个数据流
  Stream<Uint8List> presetStream({required String instanceId, dynamic hint});

  FlutterRustBridgeTaskConstMeta get kPresetStreamConstMeta;

  /// wait_stream_ready: 等待数据流准备好
  Future<String> waitStreamReady({required String instanceId, dynamic hint});

  FlutterRustBridgeTaskConstMeta get kWaitStreamReadyConstMeta;

  /// set_login_info: 设置登录信息 一般用于app启动后，用户登录成功后调用
  /// @param instance_id: sdk实例id
  /// @param token: 用户token
  /// @param user_id: 用户id
  Future<String> setLoginInfo({required String instanceId, required String token, required String userId, dynamic hint});

  FlutterRustBridgeTaskConstMeta get kSetLoginInfoConstMeta;

  /// unset_login_info: 取消登录信息 一般用于app退出登录后调用
  /// @param instance_id: sdk实例id
  Future<String> unsetLoginInfo({required String instanceId, dynamic hint});

  FlutterRustBridgeTaskConstMeta get kUnsetLoginInfoConstMeta;

  /// 下面是 user 相关 api /// ///  /// ///  /// ///  /// ///  /// ///  /// ///  /// ///  /// ///
  /// user_register: 调用用户注册API
  /// @param instance_id: sdk实例id
  /// @param protobuf: protobuf编码的用户注册请求 详细请看 pb::user::UserRegisterReq
  Future<String> userRegister({required String instanceId, required Uint8List protobuf, dynamic hint});

  FlutterRustBridgeTaskConstMeta get kUserRegisterConstMeta;

  /// user_access_token: 调用用户访问token API
  /// @param instance_id: sdk实例id
  /// @param protobuf: protobuf编码的用户访问token请求 详细请看 pb::user::UserAccessTokenReq
  Future<String> userAccessToken({required String instanceId, required Uint8List protobuf, dynamic hint});

  FlutterRustBridgeTaskConstMeta get kUserAccessTokenConstMeta;

  /// create_robot: 调用创建机器人API
  /// @param instance_id: sdk实例id
  /// @param protobuf: protobuf编码的创建机器人请求 详细请看 pb::robot::CreateRobotReq
  Future<String> createRobot({required String instanceId, required Uint8List protobuf, dynamic hint});

  FlutterRustBridgeTaskConstMeta get kCreateRobotConstMeta;

  /// refresh_user_access_token: 调用刷新用户访问token API
  /// @param instance_id: sdk实例id
  /// @param protobuf: protobuf编码的刷新用户访问token请求 详细请看 pb::user::RefreshUserAccessTokenReq
  Future<String> refreshUserAccessToken({required String instanceId, required Uint8List protobuf, dynamic hint});

  FlutterRustBridgeTaskConstMeta get kRefreshUserAccessTokenConstMeta;

  /// revoke_user_access_token: 调用注销用户访问token API
  /// @param instance_id: sdk实例id
  /// @param protobuf: protobuf编码的注销用户访问token请求 详细请看 pb::user::RevokeUserAccessTokenReq
  Future<String> revokeUserAccessToken({required String instanceId, required Uint8List protobuf, dynamic hint});

  FlutterRustBridgeTaskConstMeta get kRevokeUserAccessTokenConstMeta;

  /// 下面是 friend 相关 api /// ///  /// ///  /// ///  /// ///  /// ///  /// ///  /// ///  /// ///
  /// friend_apply 请求添加好友
  /// @param instance_id: sdk实例id
  /// @param protobuf: protobuf编码的请求添加好友请求 详细请看 pb::friend::FriendApplyReq
  Future<String> friendApply({required String instanceId, required Uint8List protobuf, dynamic hint});

  FlutterRustBridgeTaskConstMeta get kFriendApplyConstMeta;

  /// list_friend_apply 获取好友申请列表
  /// @param instance_id: sdk实例id
  /// @param protobuf: protobuf编码的获取好友申请列表请求 详细请看 pb::friend::ListFriendApplyReq
  Future<String> listFriendApply({required String instanceId, required Uint8List protobuf, dynamic hint});

  FlutterRustBridgeTaskConstMeta get kListFriendApplyConstMeta;

  /// friend_apply_handle 处理好友申请
  /// @param instance_id: sdk实例id
  /// @param protobuf: protobuf编码的处理好友申请请求 详细请看 pb::friend::FriendApplyHandleReq
  Future<String> friendApplyHandle({required String instanceId, required Uint8List protobuf, dynamic hint});

  FlutterRustBridgeTaskConstMeta get kFriendApplyHandleConstMeta;

  /// 下面是 group 相关 api /// ///  /// ///  /// ///  /// ///  /// ///  /// ///  /// ///  /// ///
  /// group_create 创建群组
  /// @param instance_id: sdk实例id
  /// @param protobuf: protobuf编码的创建群组请求 详细请看 pb::group::GroupCreateReq
  Future<String> groupCreate({required String instanceId, required Uint8List protobuf, dynamic hint});

  FlutterRustBridgeTaskConstMeta get kGroupCreateConstMeta;

  /// 下面是 message 相关 api /// ///  /// ///  /// ///  /// ///  /// ///  /// ///  /// ///  /// ///
  /// message_send 发送消息
  /// @param instance_id: sdk实例id
  /// @param protobuf: protobuf编码的发送消息请求 详细请看 pb::message::MessageSendReq
  Future<String> messageSend({required String instanceId, required Uint8List protobuf, dynamic hint});

  FlutterRustBridgeTaskConstMeta get kMessageSendConstMeta;

  /// message_batch_send 批量发送消息
  /// @param instance_id: sdk实例id
  /// @param protobuf: protobuf编码的批量发送消息请求 详细请看 pb::message::MessageBatchSendReq
  Future<String> messageBatchSend({required String instanceId, required Uint8List protobuf, dynamic hint});

  FlutterRustBridgeTaskConstMeta get kMessageBatchSendConstMeta;

  /// 下面是 notice 相关 api /// ///  /// ///  /// ///  /// ///  /// ///  /// ///  /// ///  /// ///
  /// list_notice 获取通知列表
  /// @param instance_id: sdk实例id
  /// @param protobuf: protobuf编码的获取通知列表请求 详细请看 pb::notice::ListNoticeReq
  Future<String> listNotice({required String instanceId, required Uint8List protobuf, dynamic hint});

  FlutterRustBridgeTaskConstMeta get kListNoticeConstMeta;
}

class XximSdkImpl implements XximSdk {
  final XximSdkPlatform _platform;
  factory XximSdkImpl(ExternalLibrary dylib) => XximSdkImpl.raw(XximSdkPlatform(dylib));

  /// Only valid on web/WASM platforms.
  factory XximSdkImpl.wasm(FutureOr<WasmModule> module) => XximSdkImpl(module as ExternalLibrary);
  XximSdkImpl.raw(this._platform);
  Future<void> newInstance({required String instanceId, dynamic hint}) {
    var arg0 = _platform.api2wire_String(instanceId);
    return _platform.executeNormal(FlutterRustBridgeTask(
      callFfi: (port_) => _platform.inner.wire_new_instance(port_, arg0),
      parseSuccessData: _wire2api_unit,
      constMeta: kNewInstanceConstMeta,
      argValues: [
        instanceId
      ],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kNewInstanceConstMeta => const FlutterRustBridgeTaskConstMeta(
        debugName: "new_instance",
        argNames: [
          "instanceId"
        ],
      );

  Future<String> destroyInstance({required String instanceId, dynamic hint}) {
    var arg0 = _platform.api2wire_String(instanceId);
    return _platform.executeNormal(FlutterRustBridgeTask(
      callFfi: (port_) => _platform.inner.wire_destroy_instance(port_, arg0),
      parseSuccessData: _wire2api_String,
      constMeta: kDestroyInstanceConstMeta,
      argValues: [
        instanceId
      ],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kDestroyInstanceConstMeta => const FlutterRustBridgeTaskConstMeta(
        debugName: "destroy_instance",
        argNames: [
          "instanceId"
        ],
      );

  Future<String> initInstance({required String instanceId, int? net, required String host, required int port, required bool ssl, List<String>? iceServers, String? appId, String? installId, required int platform, required String deviceModel, required String osVersion, required int language, required int requestTimeoutMillisecond, required String dbDir, String? customHeader, required int keepAliveSecond, required int logLevel, dynamic hint}) {
    var arg0 = _platform.api2wire_String(instanceId);
    var arg1 = _platform.api2wire_opt_box_autoadd_i32(net);
    var arg2 = _platform.api2wire_String(host);
    var arg3 = api2wire_u16(port);
    var arg4 = ssl;
    var arg5 = _platform.api2wire_opt_StringList(iceServers);
    var arg6 = _platform.api2wire_opt_String(appId);
    var arg7 = _platform.api2wire_opt_String(installId);
    var arg8 = api2wire_i32(platform);
    var arg9 = _platform.api2wire_String(deviceModel);
    var arg10 = _platform.api2wire_String(osVersion);
    var arg11 = api2wire_i32(language);
    var arg12 = api2wire_i32(requestTimeoutMillisecond);
    var arg13 = _platform.api2wire_String(dbDir);
    var arg14 = _platform.api2wire_opt_String(customHeader);
    var arg15 = api2wire_i32(keepAliveSecond);
    var arg16 = api2wire_i32(logLevel);
    return _platform.executeNormal(FlutterRustBridgeTask(
      callFfi: (port_) => _platform.inner.wire_init_instance(port_, arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, arg13, arg14, arg15, arg16),
      parseSuccessData: _wire2api_String,
      constMeta: kInitInstanceConstMeta,
      argValues: [
        instanceId,
        net,
        host,
        port,
        ssl,
        iceServers,
        appId,
        installId,
        platform,
        deviceModel,
        osVersion,
        language,
        requestTimeoutMillisecond,
        dbDir,
        customHeader,
        keepAliveSecond,
        logLevel
      ],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kInitInstanceConstMeta => const FlutterRustBridgeTaskConstMeta(
        debugName: "init_instance",
        argNames: [
          "instanceId",
          "net",
          "host",
          "port",
          "ssl",
          "iceServers",
          "appId",
          "installId",
          "platform",
          "deviceModel",
          "osVersion",
          "language",
          "requestTimeoutMillisecond",
          "dbDir",
          "customHeader",
          "keepAliveSecond",
          "logLevel"
        ],
      );

  Stream<Uint8List> presetStream({required String instanceId, dynamic hint}) {
    var arg0 = _platform.api2wire_String(instanceId);
    return _platform.executeStream(FlutterRustBridgeTask(
      callFfi: (port_) => _platform.inner.wire_preset_stream(port_, arg0),
      parseSuccessData: _wire2api_uint_8_list,
      constMeta: kPresetStreamConstMeta,
      argValues: [
        instanceId
      ],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kPresetStreamConstMeta => const FlutterRustBridgeTaskConstMeta(
        debugName: "preset_stream",
        argNames: [
          "instanceId"
        ],
      );

  Future<String> waitStreamReady({required String instanceId, dynamic hint}) {
    var arg0 = _platform.api2wire_String(instanceId);
    return _platform.executeNormal(FlutterRustBridgeTask(
      callFfi: (port_) => _platform.inner.wire_wait_stream_ready(port_, arg0),
      parseSuccessData: _wire2api_String,
      constMeta: kWaitStreamReadyConstMeta,
      argValues: [
        instanceId
      ],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kWaitStreamReadyConstMeta => const FlutterRustBridgeTaskConstMeta(
        debugName: "wait_stream_ready",
        argNames: [
          "instanceId"
        ],
      );

  Future<String> setLoginInfo({required String instanceId, required String token, required String userId, dynamic hint}) {
    var arg0 = _platform.api2wire_String(instanceId);
    var arg1 = _platform.api2wire_String(token);
    var arg2 = _platform.api2wire_String(userId);
    return _platform.executeNormal(FlutterRustBridgeTask(
      callFfi: (port_) => _platform.inner.wire_set_login_info(port_, arg0, arg1, arg2),
      parseSuccessData: _wire2api_String,
      constMeta: kSetLoginInfoConstMeta,
      argValues: [
        instanceId,
        token,
        userId
      ],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kSetLoginInfoConstMeta => const FlutterRustBridgeTaskConstMeta(
        debugName: "set_login_info",
        argNames: [
          "instanceId",
          "token",
          "userId"
        ],
      );

  Future<String> unsetLoginInfo({required String instanceId, dynamic hint}) {
    var arg0 = _platform.api2wire_String(instanceId);
    return _platform.executeNormal(FlutterRustBridgeTask(
      callFfi: (port_) => _platform.inner.wire_unset_login_info(port_, arg0),
      parseSuccessData: _wire2api_String,
      constMeta: kUnsetLoginInfoConstMeta,
      argValues: [
        instanceId
      ],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kUnsetLoginInfoConstMeta => const FlutterRustBridgeTaskConstMeta(
        debugName: "unset_login_info",
        argNames: [
          "instanceId"
        ],
      );

  Future<String> userRegister({required String instanceId, required Uint8List protobuf, dynamic hint}) {
    var arg0 = _platform.api2wire_String(instanceId);
    var arg1 = _platform.api2wire_uint_8_list(protobuf);
    return _platform.executeNormal(FlutterRustBridgeTask(
      callFfi: (port_) => _platform.inner.wire_user_register(port_, arg0, arg1),
      parseSuccessData: _wire2api_String,
      constMeta: kUserRegisterConstMeta,
      argValues: [
        instanceId,
        protobuf
      ],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kUserRegisterConstMeta => const FlutterRustBridgeTaskConstMeta(
        debugName: "user_register",
        argNames: [
          "instanceId",
          "protobuf"
        ],
      );

  Future<String> userAccessToken({required String instanceId, required Uint8List protobuf, dynamic hint}) {
    var arg0 = _platform.api2wire_String(instanceId);
    var arg1 = _platform.api2wire_uint_8_list(protobuf);
    return _platform.executeNormal(FlutterRustBridgeTask(
      callFfi: (port_) => _platform.inner.wire_user_access_token(port_, arg0, arg1),
      parseSuccessData: _wire2api_String,
      constMeta: kUserAccessTokenConstMeta,
      argValues: [
        instanceId,
        protobuf
      ],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kUserAccessTokenConstMeta => const FlutterRustBridgeTaskConstMeta(
        debugName: "user_access_token",
        argNames: [
          "instanceId",
          "protobuf"
        ],
      );

  Future<String> createRobot({required String instanceId, required Uint8List protobuf, dynamic hint}) {
    var arg0 = _platform.api2wire_String(instanceId);
    var arg1 = _platform.api2wire_uint_8_list(protobuf);
    return _platform.executeNormal(FlutterRustBridgeTask(
      callFfi: (port_) => _platform.inner.wire_create_robot(port_, arg0, arg1),
      parseSuccessData: _wire2api_String,
      constMeta: kCreateRobotConstMeta,
      argValues: [
        instanceId,
        protobuf
      ],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kCreateRobotConstMeta => const FlutterRustBridgeTaskConstMeta(
        debugName: "create_robot",
        argNames: [
          "instanceId",
          "protobuf"
        ],
      );

  Future<String> refreshUserAccessToken({required String instanceId, required Uint8List protobuf, dynamic hint}) {
    var arg0 = _platform.api2wire_String(instanceId);
    var arg1 = _platform.api2wire_uint_8_list(protobuf);
    return _platform.executeNormal(FlutterRustBridgeTask(
      callFfi: (port_) => _platform.inner.wire_refresh_user_access_token(port_, arg0, arg1),
      parseSuccessData: _wire2api_String,
      constMeta: kRefreshUserAccessTokenConstMeta,
      argValues: [
        instanceId,
        protobuf
      ],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kRefreshUserAccessTokenConstMeta => const FlutterRustBridgeTaskConstMeta(
        debugName: "refresh_user_access_token",
        argNames: [
          "instanceId",
          "protobuf"
        ],
      );

  Future<String> revokeUserAccessToken({required String instanceId, required Uint8List protobuf, dynamic hint}) {
    var arg0 = _platform.api2wire_String(instanceId);
    var arg1 = _platform.api2wire_uint_8_list(protobuf);
    return _platform.executeNormal(FlutterRustBridgeTask(
      callFfi: (port_) => _platform.inner.wire_revoke_user_access_token(port_, arg0, arg1),
      parseSuccessData: _wire2api_String,
      constMeta: kRevokeUserAccessTokenConstMeta,
      argValues: [
        instanceId,
        protobuf
      ],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kRevokeUserAccessTokenConstMeta => const FlutterRustBridgeTaskConstMeta(
        debugName: "revoke_user_access_token",
        argNames: [
          "instanceId",
          "protobuf"
        ],
      );

  Future<String> friendApply({required String instanceId, required Uint8List protobuf, dynamic hint}) {
    var arg0 = _platform.api2wire_String(instanceId);
    var arg1 = _platform.api2wire_uint_8_list(protobuf);
    return _platform.executeNormal(FlutterRustBridgeTask(
      callFfi: (port_) => _platform.inner.wire_friend_apply(port_, arg0, arg1),
      parseSuccessData: _wire2api_String,
      constMeta: kFriendApplyConstMeta,
      argValues: [
        instanceId,
        protobuf
      ],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kFriendApplyConstMeta => const FlutterRustBridgeTaskConstMeta(
        debugName: "friend_apply",
        argNames: [
          "instanceId",
          "protobuf"
        ],
      );

  Future<String> listFriendApply({required String instanceId, required Uint8List protobuf, dynamic hint}) {
    var arg0 = _platform.api2wire_String(instanceId);
    var arg1 = _platform.api2wire_uint_8_list(protobuf);
    return _platform.executeNormal(FlutterRustBridgeTask(
      callFfi: (port_) => _platform.inner.wire_list_friend_apply(port_, arg0, arg1),
      parseSuccessData: _wire2api_String,
      constMeta: kListFriendApplyConstMeta,
      argValues: [
        instanceId,
        protobuf
      ],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kListFriendApplyConstMeta => const FlutterRustBridgeTaskConstMeta(
        debugName: "list_friend_apply",
        argNames: [
          "instanceId",
          "protobuf"
        ],
      );

  Future<String> friendApplyHandle({required String instanceId, required Uint8List protobuf, dynamic hint}) {
    var arg0 = _platform.api2wire_String(instanceId);
    var arg1 = _platform.api2wire_uint_8_list(protobuf);
    return _platform.executeNormal(FlutterRustBridgeTask(
      callFfi: (port_) => _platform.inner.wire_friend_apply_handle(port_, arg0, arg1),
      parseSuccessData: _wire2api_String,
      constMeta: kFriendApplyHandleConstMeta,
      argValues: [
        instanceId,
        protobuf
      ],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kFriendApplyHandleConstMeta => const FlutterRustBridgeTaskConstMeta(
        debugName: "friend_apply_handle",
        argNames: [
          "instanceId",
          "protobuf"
        ],
      );

  Future<String> groupCreate({required String instanceId, required Uint8List protobuf, dynamic hint}) {
    var arg0 = _platform.api2wire_String(instanceId);
    var arg1 = _platform.api2wire_uint_8_list(protobuf);
    return _platform.executeNormal(FlutterRustBridgeTask(
      callFfi: (port_) => _platform.inner.wire_group_create(port_, arg0, arg1),
      parseSuccessData: _wire2api_String,
      constMeta: kGroupCreateConstMeta,
      argValues: [
        instanceId,
        protobuf
      ],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kGroupCreateConstMeta => const FlutterRustBridgeTaskConstMeta(
        debugName: "group_create",
        argNames: [
          "instanceId",
          "protobuf"
        ],
      );

  Future<String> messageSend({required String instanceId, required Uint8List protobuf, dynamic hint}) {
    var arg0 = _platform.api2wire_String(instanceId);
    var arg1 = _platform.api2wire_uint_8_list(protobuf);
    return _platform.executeNormal(FlutterRustBridgeTask(
      callFfi: (port_) => _platform.inner.wire_message_send(port_, arg0, arg1),
      parseSuccessData: _wire2api_String,
      constMeta: kMessageSendConstMeta,
      argValues: [
        instanceId,
        protobuf
      ],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kMessageSendConstMeta => const FlutterRustBridgeTaskConstMeta(
        debugName: "message_send",
        argNames: [
          "instanceId",
          "protobuf"
        ],
      );

  Future<String> messageBatchSend({required String instanceId, required Uint8List protobuf, dynamic hint}) {
    var arg0 = _platform.api2wire_String(instanceId);
    var arg1 = _platform.api2wire_uint_8_list(protobuf);
    return _platform.executeNormal(FlutterRustBridgeTask(
      callFfi: (port_) => _platform.inner.wire_message_batch_send(port_, arg0, arg1),
      parseSuccessData: _wire2api_String,
      constMeta: kMessageBatchSendConstMeta,
      argValues: [
        instanceId,
        protobuf
      ],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kMessageBatchSendConstMeta => const FlutterRustBridgeTaskConstMeta(
        debugName: "message_batch_send",
        argNames: [
          "instanceId",
          "protobuf"
        ],
      );

  Future<String> listNotice({required String instanceId, required Uint8List protobuf, dynamic hint}) {
    var arg0 = _platform.api2wire_String(instanceId);
    var arg1 = _platform.api2wire_uint_8_list(protobuf);
    return _platform.executeNormal(FlutterRustBridgeTask(
      callFfi: (port_) => _platform.inner.wire_list_notice(port_, arg0, arg1),
      parseSuccessData: _wire2api_String,
      constMeta: kListNoticeConstMeta,
      argValues: [
        instanceId,
        protobuf
      ],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kListNoticeConstMeta => const FlutterRustBridgeTaskConstMeta(
        debugName: "list_notice",
        argNames: [
          "instanceId",
          "protobuf"
        ],
      );

  void dispose() {
    _platform.dispose();
  }
// Section: wire2api

  String _wire2api_String(dynamic raw) {
    return raw as String;
  }

  int _wire2api_u8(dynamic raw) {
    return raw as int;
  }

  Uint8List _wire2api_uint_8_list(dynamic raw) {
    return raw as Uint8List;
  }

  void _wire2api_unit(dynamic raw) {
    return;
  }
}

// Section: api2wire

@protected
bool api2wire_bool(bool raw) {
  return raw;
}

@protected
int api2wire_i32(int raw) {
  return raw;
}

@protected
int api2wire_u16(int raw) {
  return raw;
}

@protected
int api2wire_u8(int raw) {
  return raw;
}

// Section: finalizer
