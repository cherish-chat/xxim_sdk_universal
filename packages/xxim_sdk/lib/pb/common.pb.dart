///
//  Generated code. Do not modify.
//  source: common.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'common.pbenum.dart';

export 'common.pbenum.dart';

class RequestHeader extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'RequestHeader', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pb'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'appId', protoName: 'appId')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'userId', protoName: 'userId')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'clientIp', protoName: 'clientIp')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'installId', protoName: 'installId')
    ..e<Platform>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'platform', $pb.PbFieldType.OE, defaultOrMaker: Platform.IOS, valueOf: Platform.valueOf, enumValues: Platform.values)
    ..aOS(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'deviceModel', protoName: 'deviceModel')
    ..aOS(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'osVersion', protoName: 'osVersion')
    ..aOS(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'appVersion', protoName: 'appVersion')
    ..aOS(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'extra')
    ..hasRequiredFields = false
  ;

  RequestHeader._() : super();
  factory RequestHeader({
    $core.String? appId,
    $core.String? userId,
    $core.String? clientIp,
    $core.String? installId,
    Platform? platform,
    $core.String? deviceModel,
    $core.String? osVersion,
    $core.String? appVersion,
    $core.String? extra,
  }) {
    final _result = create();
    if (appId != null) {
      _result.appId = appId;
    }
    if (userId != null) {
      _result.userId = userId;
    }
    if (clientIp != null) {
      _result.clientIp = clientIp;
    }
    if (installId != null) {
      _result.installId = installId;
    }
    if (platform != null) {
      _result.platform = platform;
    }
    if (deviceModel != null) {
      _result.deviceModel = deviceModel;
    }
    if (osVersion != null) {
      _result.osVersion = osVersion;
    }
    if (appVersion != null) {
      _result.appVersion = appVersion;
    }
    if (extra != null) {
      _result.extra = extra;
    }
    return _result;
  }
  factory RequestHeader.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RequestHeader.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RequestHeader clone() => RequestHeader()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RequestHeader copyWith(void Function(RequestHeader) updates) => super.copyWith((message) => updates(message as RequestHeader)) as RequestHeader; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RequestHeader create() => RequestHeader._();
  RequestHeader createEmptyInstance() => create();
  static $pb.PbList<RequestHeader> createRepeated() => $pb.PbList<RequestHeader>();
  @$core.pragma('dart2js:noInline')
  static RequestHeader getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RequestHeader>(create);
  static RequestHeader? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get appId => $_getSZ(0);
  @$pb.TagNumber(1)
  set appId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAppId() => $_has(0);
  @$pb.TagNumber(1)
  void clearAppId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get userId => $_getSZ(1);
  @$pb.TagNumber(2)
  set userId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasUserId() => $_has(1);
  @$pb.TagNumber(2)
  void clearUserId() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get clientIp => $_getSZ(2);
  @$pb.TagNumber(3)
  set clientIp($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasClientIp() => $_has(2);
  @$pb.TagNumber(3)
  void clearClientIp() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get installId => $_getSZ(3);
  @$pb.TagNumber(4)
  set installId($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasInstallId() => $_has(3);
  @$pb.TagNumber(4)
  void clearInstallId() => clearField(4);

  @$pb.TagNumber(5)
  Platform get platform => $_getN(4);
  @$pb.TagNumber(5)
  set platform(Platform v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasPlatform() => $_has(4);
  @$pb.TagNumber(5)
  void clearPlatform() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get deviceModel => $_getSZ(5);
  @$pb.TagNumber(6)
  set deviceModel($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasDeviceModel() => $_has(5);
  @$pb.TagNumber(6)
  void clearDeviceModel() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get osVersion => $_getSZ(6);
  @$pb.TagNumber(7)
  set osVersion($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasOsVersion() => $_has(6);
  @$pb.TagNumber(7)
  void clearOsVersion() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get appVersion => $_getSZ(7);
  @$pb.TagNumber(8)
  set appVersion($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasAppVersion() => $_has(7);
  @$pb.TagNumber(8)
  void clearAppVersion() => clearField(8);

  @$pb.TagNumber(9)
  $core.String get extra => $_getSZ(8);
  @$pb.TagNumber(9)
  set extra($core.String v) { $_setString(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasExtra() => $_has(8);
  @$pb.TagNumber(9)
  void clearExtra() => clearField(9);
}

class ToastActionData extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ToastActionData', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pb'), createEmptyInstance: create)
    ..e<ToastActionData_Level>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'level', $pb.PbFieldType.OE, defaultOrMaker: ToastActionData_Level.INFO, valueOf: ToastActionData_Level.valueOf, enumValues: ToastActionData_Level.values)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'message')
    ..hasRequiredFields = false
  ;

  ToastActionData._() : super();
  factory ToastActionData({
    ToastActionData_Level? level,
    $core.String? message,
  }) {
    final _result = create();
    if (level != null) {
      _result.level = level;
    }
    if (message != null) {
      _result.message = message;
    }
    return _result;
  }
  factory ToastActionData.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ToastActionData.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ToastActionData clone() => ToastActionData()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ToastActionData copyWith(void Function(ToastActionData) updates) => super.copyWith((message) => updates(message as ToastActionData)) as ToastActionData; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ToastActionData create() => ToastActionData._();
  ToastActionData createEmptyInstance() => create();
  static $pb.PbList<ToastActionData> createRepeated() => $pb.PbList<ToastActionData>();
  @$core.pragma('dart2js:noInline')
  static ToastActionData getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ToastActionData>(create);
  static ToastActionData? _defaultInstance;

  @$pb.TagNumber(1)
  ToastActionData_Level get level => $_getN(0);
  @$pb.TagNumber(1)
  set level(ToastActionData_Level v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasLevel() => $_has(0);
  @$pb.TagNumber(1)
  void clearLevel() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get message => $_getSZ(1);
  @$pb.TagNumber(2)
  set message($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasMessage() => $_has(1);
  @$pb.TagNumber(2)
  void clearMessage() => clearField(2);
}

class AlertActionData extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AlertActionData', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pb'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'title')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'message')
    ..e<AlertActionData_ButtonType>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'buttonType', $pb.PbFieldType.OE, protoName: 'buttonType', defaultOrMaker: AlertActionData_ButtonType.NO_BUTTON, valueOf: AlertActionData_ButtonType.valueOf, enumValues: AlertActionData_ButtonType.values)
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'buttonLabel', protoName: 'buttonLabel')
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'buttonData', protoName: 'buttonData')
    ..hasRequiredFields = false
  ;

  AlertActionData._() : super();
  factory AlertActionData({
    $core.String? title,
    $core.String? message,
    AlertActionData_ButtonType? buttonType,
    $core.String? buttonLabel,
    $core.String? buttonData,
  }) {
    final _result = create();
    if (title != null) {
      _result.title = title;
    }
    if (message != null) {
      _result.message = message;
    }
    if (buttonType != null) {
      _result.buttonType = buttonType;
    }
    if (buttonLabel != null) {
      _result.buttonLabel = buttonLabel;
    }
    if (buttonData != null) {
      _result.buttonData = buttonData;
    }
    return _result;
  }
  factory AlertActionData.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AlertActionData.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AlertActionData clone() => AlertActionData()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AlertActionData copyWith(void Function(AlertActionData) updates) => super.copyWith((message) => updates(message as AlertActionData)) as AlertActionData; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AlertActionData create() => AlertActionData._();
  AlertActionData createEmptyInstance() => create();
  static $pb.PbList<AlertActionData> createRepeated() => $pb.PbList<AlertActionData>();
  @$core.pragma('dart2js:noInline')
  static AlertActionData getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AlertActionData>(create);
  static AlertActionData? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get title => $_getSZ(0);
  @$pb.TagNumber(1)
  set title($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTitle() => $_has(0);
  @$pb.TagNumber(1)
  void clearTitle() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get message => $_getSZ(1);
  @$pb.TagNumber(2)
  set message($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasMessage() => $_has(1);
  @$pb.TagNumber(2)
  void clearMessage() => clearField(2);

  @$pb.TagNumber(3)
  AlertActionData_ButtonType get buttonType => $_getN(2);
  @$pb.TagNumber(3)
  set buttonType(AlertActionData_ButtonType v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasButtonType() => $_has(2);
  @$pb.TagNumber(3)
  void clearButtonType() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get buttonLabel => $_getSZ(3);
  @$pb.TagNumber(4)
  set buttonLabel($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasButtonLabel() => $_has(3);
  @$pb.TagNumber(4)
  void clearButtonLabel() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get buttonData => $_getSZ(4);
  @$pb.TagNumber(5)
  set buttonData($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasButtonData() => $_has(4);
  @$pb.TagNumber(5)
  void clearButtonData() => clearField(5);
}

class ResponseHeader extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ResponseHeader', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pb'), createEmptyInstance: create)
    ..e<ResponseCode>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'code', $pb.PbFieldType.OE, defaultOrMaker: ResponseCode.SUCCESS, valueOf: ResponseCode.valueOf, enumValues: ResponseCode.values)
    ..e<ResponseActionType>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'actionType', $pb.PbFieldType.OE, protoName: 'actionType', defaultOrMaker: ResponseActionType.NONE_ACTION, valueOf: ResponseActionType.valueOf, enumValues: ResponseActionType.values)
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'actionData', protoName: 'actionData')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'extra')
    ..hasRequiredFields = false
  ;

  ResponseHeader._() : super();
  factory ResponseHeader({
    ResponseCode? code,
    ResponseActionType? actionType,
    $core.String? actionData,
    $core.String? extra,
  }) {
    final _result = create();
    if (code != null) {
      _result.code = code;
    }
    if (actionType != null) {
      _result.actionType = actionType;
    }
    if (actionData != null) {
      _result.actionData = actionData;
    }
    if (extra != null) {
      _result.extra = extra;
    }
    return _result;
  }
  factory ResponseHeader.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ResponseHeader.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ResponseHeader clone() => ResponseHeader()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ResponseHeader copyWith(void Function(ResponseHeader) updates) => super.copyWith((message) => updates(message as ResponseHeader)) as ResponseHeader; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ResponseHeader create() => ResponseHeader._();
  ResponseHeader createEmptyInstance() => create();
  static $pb.PbList<ResponseHeader> createRepeated() => $pb.PbList<ResponseHeader>();
  @$core.pragma('dart2js:noInline')
  static ResponseHeader getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ResponseHeader>(create);
  static ResponseHeader? _defaultInstance;

  @$pb.TagNumber(1)
  ResponseCode get code => $_getN(0);
  @$pb.TagNumber(1)
  set code(ResponseCode v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasCode() => $_has(0);
  @$pb.TagNumber(1)
  void clearCode() => clearField(1);

  @$pb.TagNumber(2)
  ResponseActionType get actionType => $_getN(1);
  @$pb.TagNumber(2)
  set actionType(ResponseActionType v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasActionType() => $_has(1);
  @$pb.TagNumber(2)
  void clearActionType() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get actionData => $_getSZ(2);
  @$pb.TagNumber(3)
  set actionData($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasActionData() => $_has(2);
  @$pb.TagNumber(3)
  void clearActionData() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get extra => $_getSZ(3);
  @$pb.TagNumber(4)
  set extra($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasExtra() => $_has(3);
  @$pb.TagNumber(4)
  void clearExtra() => clearField(4);
}

class Message_Sender extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Message.Sender', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pb'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'avatar')
    ..aOS(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'extra')
    ..hasRequiredFields = false
  ;

  Message_Sender._() : super();
  factory Message_Sender({
    $core.String? id,
    $core.String? name,
    $core.String? avatar,
    $core.String? extra,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (name != null) {
      _result.name = name;
    }
    if (avatar != null) {
      _result.avatar = avatar;
    }
    if (extra != null) {
      _result.extra = extra;
    }
    return _result;
  }
  factory Message_Sender.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Message_Sender.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Message_Sender clone() => Message_Sender()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Message_Sender copyWith(void Function(Message_Sender) updates) => super.copyWith((message) => updates(message as Message_Sender)) as Message_Sender; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Message_Sender create() => Message_Sender._();
  Message_Sender createEmptyInstance() => create();
  static $pb.PbList<Message_Sender> createRepeated() => $pb.PbList<Message_Sender>();
  @$core.pragma('dart2js:noInline')
  static Message_Sender getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Message_Sender>(create);
  static Message_Sender? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get avatar => $_getSZ(2);
  @$pb.TagNumber(3)
  set avatar($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasAvatar() => $_has(2);
  @$pb.TagNumber(3)
  void clearAvatar() => clearField(3);

  @$pb.TagNumber(11)
  $core.String get extra => $_getSZ(3);
  @$pb.TagNumber(11)
  set extra($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(11)
  $core.bool hasExtra() => $_has(3);
  @$pb.TagNumber(11)
  void clearExtra() => clearField(11);
}

class Message_Option extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Message.Option', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pb'), createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'storageForServer', protoName: 'storageForServer')
    ..aOB(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'storageForClient', protoName: 'storageForClient')
    ..aOB(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'needDecrypt', protoName: 'needDecrypt')
    ..aOB(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'countUnread', protoName: 'countUnread')
    ..hasRequiredFields = false
  ;

  Message_Option._() : super();
  factory Message_Option({
    $core.bool? storageForServer,
    $core.bool? storageForClient,
    $core.bool? needDecrypt,
    $core.bool? countUnread,
  }) {
    final _result = create();
    if (storageForServer != null) {
      _result.storageForServer = storageForServer;
    }
    if (storageForClient != null) {
      _result.storageForClient = storageForClient;
    }
    if (needDecrypt != null) {
      _result.needDecrypt = needDecrypt;
    }
    if (countUnread != null) {
      _result.countUnread = countUnread;
    }
    return _result;
  }
  factory Message_Option.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Message_Option.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Message_Option clone() => Message_Option()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Message_Option copyWith(void Function(Message_Option) updates) => super.copyWith((message) => updates(message as Message_Option)) as Message_Option; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Message_Option create() => Message_Option._();
  Message_Option createEmptyInstance() => create();
  static $pb.PbList<Message_Option> createRepeated() => $pb.PbList<Message_Option>();
  @$core.pragma('dart2js:noInline')
  static Message_Option getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Message_Option>(create);
  static Message_Option? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get storageForServer => $_getBF(0);
  @$pb.TagNumber(1)
  set storageForServer($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasStorageForServer() => $_has(0);
  @$pb.TagNumber(1)
  void clearStorageForServer() => clearField(1);

  @$pb.TagNumber(2)
  $core.bool get storageForClient => $_getBF(1);
  @$pb.TagNumber(2)
  set storageForClient($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasStorageForClient() => $_has(1);
  @$pb.TagNumber(2)
  void clearStorageForClient() => clearField(2);

  @$pb.TagNumber(3)
  $core.bool get needDecrypt => $_getBF(2);
  @$pb.TagNumber(3)
  set needDecrypt($core.bool v) { $_setBool(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasNeedDecrypt() => $_has(2);
  @$pb.TagNumber(3)
  void clearNeedDecrypt() => clearField(3);

  @$pb.TagNumber(4)
  $core.bool get countUnread => $_getBF(3);
  @$pb.TagNumber(4)
  set countUnread($core.bool v) { $_setBool(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasCountUnread() => $_has(3);
  @$pb.TagNumber(4)
  void clearCountUnread() => clearField(4);
}

class Message extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Message', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pb'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'messageId', protoName: 'messageId')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'uuid')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'conversationId', protoName: 'conversationId')
    ..e<ConversationType>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'conversationType', $pb.PbFieldType.OE, protoName: 'conversationType', defaultOrMaker: ConversationType.Single, valueOf: ConversationType.valueOf, enumValues: ConversationType.values)
    ..aOM<Message_Sender>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'sender', subBuilder: Message_Sender.create)
    ..a<$core.List<$core.int>>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'content', $pb.PbFieldType.OY)
    ..e<MessageContentType>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'contentType', $pb.PbFieldType.OE, protoName: 'contentType', defaultOrMaker: MessageContentType.Text, valueOf: MessageContentType.valueOf, enumValues: MessageContentType.values)
    ..aInt64(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'sendTime', protoName: 'sendTime')
    ..aInt64(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'insertTime', protoName: 'insertTime')
    ..aInt64(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'seq')
    ..aOM<Message_Option>(16, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'option', subBuilder: Message_Option.create)
    ..m<$core.String, $core.String>(17, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'extraMap', protoName: 'extraMap', entryClassName: 'Message.ExtraMapEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OS, packageName: const $pb.PackageName('pb'))
    ..hasRequiredFields = false
  ;

  Message._() : super();
  factory Message({
    $core.String? messageId,
    $core.String? uuid,
    $core.String? conversationId,
    ConversationType? conversationType,
    Message_Sender? sender,
    $core.List<$core.int>? content,
    MessageContentType? contentType,
    $fixnum.Int64? sendTime,
    $fixnum.Int64? insertTime,
    $fixnum.Int64? seq,
    Message_Option? option,
    $core.Map<$core.String, $core.String>? extraMap,
  }) {
    final _result = create();
    if (messageId != null) {
      _result.messageId = messageId;
    }
    if (uuid != null) {
      _result.uuid = uuid;
    }
    if (conversationId != null) {
      _result.conversationId = conversationId;
    }
    if (conversationType != null) {
      _result.conversationType = conversationType;
    }
    if (sender != null) {
      _result.sender = sender;
    }
    if (content != null) {
      _result.content = content;
    }
    if (contentType != null) {
      _result.contentType = contentType;
    }
    if (sendTime != null) {
      _result.sendTime = sendTime;
    }
    if (insertTime != null) {
      _result.insertTime = insertTime;
    }
    if (seq != null) {
      _result.seq = seq;
    }
    if (option != null) {
      _result.option = option;
    }
    if (extraMap != null) {
      _result.extraMap.addAll(extraMap);
    }
    return _result;
  }
  factory Message.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Message.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Message clone() => Message()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Message copyWith(void Function(Message) updates) => super.copyWith((message) => updates(message as Message)) as Message; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Message create() => Message._();
  Message createEmptyInstance() => create();
  static $pb.PbList<Message> createRepeated() => $pb.PbList<Message>();
  @$core.pragma('dart2js:noInline')
  static Message getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Message>(create);
  static Message? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get messageId => $_getSZ(0);
  @$pb.TagNumber(1)
  set messageId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasMessageId() => $_has(0);
  @$pb.TagNumber(1)
  void clearMessageId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get uuid => $_getSZ(1);
  @$pb.TagNumber(2)
  set uuid($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasUuid() => $_has(1);
  @$pb.TagNumber(2)
  void clearUuid() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get conversationId => $_getSZ(2);
  @$pb.TagNumber(3)
  set conversationId($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasConversationId() => $_has(2);
  @$pb.TagNumber(3)
  void clearConversationId() => clearField(3);

  @$pb.TagNumber(4)
  ConversationType get conversationType => $_getN(3);
  @$pb.TagNumber(4)
  set conversationType(ConversationType v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasConversationType() => $_has(3);
  @$pb.TagNumber(4)
  void clearConversationType() => clearField(4);

  @$pb.TagNumber(5)
  Message_Sender get sender => $_getN(4);
  @$pb.TagNumber(5)
  set sender(Message_Sender v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasSender() => $_has(4);
  @$pb.TagNumber(5)
  void clearSender() => clearField(5);
  @$pb.TagNumber(5)
  Message_Sender ensureSender() => $_ensure(4);

  @$pb.TagNumber(6)
  $core.List<$core.int> get content => $_getN(5);
  @$pb.TagNumber(6)
  set content($core.List<$core.int> v) { $_setBytes(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasContent() => $_has(5);
  @$pb.TagNumber(6)
  void clearContent() => clearField(6);

  @$pb.TagNumber(7)
  MessageContentType get contentType => $_getN(6);
  @$pb.TagNumber(7)
  set contentType(MessageContentType v) { setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasContentType() => $_has(6);
  @$pb.TagNumber(7)
  void clearContentType() => clearField(7);

  @$pb.TagNumber(8)
  $fixnum.Int64 get sendTime => $_getI64(7);
  @$pb.TagNumber(8)
  set sendTime($fixnum.Int64 v) { $_setInt64(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasSendTime() => $_has(7);
  @$pb.TagNumber(8)
  void clearSendTime() => clearField(8);

  @$pb.TagNumber(9)
  $fixnum.Int64 get insertTime => $_getI64(8);
  @$pb.TagNumber(9)
  set insertTime($fixnum.Int64 v) { $_setInt64(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasInsertTime() => $_has(8);
  @$pb.TagNumber(9)
  void clearInsertTime() => clearField(9);

  @$pb.TagNumber(10)
  $fixnum.Int64 get seq => $_getI64(9);
  @$pb.TagNumber(10)
  set seq($fixnum.Int64 v) { $_setInt64(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasSeq() => $_has(9);
  @$pb.TagNumber(10)
  void clearSeq() => clearField(10);

  @$pb.TagNumber(16)
  Message_Option get option => $_getN(10);
  @$pb.TagNumber(16)
  set option(Message_Option v) { setField(16, v); }
  @$pb.TagNumber(16)
  $core.bool hasOption() => $_has(10);
  @$pb.TagNumber(16)
  void clearOption() => clearField(16);
  @$pb.TagNumber(16)
  Message_Option ensureOption() => $_ensure(10);

  @$pb.TagNumber(17)
  $core.Map<$core.String, $core.String> get extraMap => $_getMap(11);
}

class Notice extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Notice', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pb'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'noticeId', protoName: 'noticeId')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'conversationId', protoName: 'conversationId')
    ..e<ConversationType>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'conversationType', $pb.PbFieldType.OE, protoName: 'conversationType', defaultOrMaker: ConversationType.Single, valueOf: ConversationType.valueOf, enumValues: ConversationType.values)
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'content')
    ..e<NoticeContentType>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'contentType', $pb.PbFieldType.OE, protoName: 'contentType', defaultOrMaker: NoticeContentType.NewFriendRequest, valueOf: NoticeContentType.valueOf, enumValues: NoticeContentType.values)
    ..aInt64(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'updateTime', protoName: 'updateTime')
    ..aInt64(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'sort')
    ..hasRequiredFields = false
  ;

  Notice._() : super();
  factory Notice({
    $core.String? noticeId,
    $core.String? conversationId,
    ConversationType? conversationType,
    $core.String? content,
    NoticeContentType? contentType,
    $fixnum.Int64? updateTime,
    $fixnum.Int64? sort,
  }) {
    final _result = create();
    if (noticeId != null) {
      _result.noticeId = noticeId;
    }
    if (conversationId != null) {
      _result.conversationId = conversationId;
    }
    if (conversationType != null) {
      _result.conversationType = conversationType;
    }
    if (content != null) {
      _result.content = content;
    }
    if (contentType != null) {
      _result.contentType = contentType;
    }
    if (updateTime != null) {
      _result.updateTime = updateTime;
    }
    if (sort != null) {
      _result.sort = sort;
    }
    return _result;
  }
  factory Notice.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Notice.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Notice clone() => Notice()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Notice copyWith(void Function(Notice) updates) => super.copyWith((message) => updates(message as Notice)) as Notice; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Notice create() => Notice._();
  Notice createEmptyInstance() => create();
  static $pb.PbList<Notice> createRepeated() => $pb.PbList<Notice>();
  @$core.pragma('dart2js:noInline')
  static Notice getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Notice>(create);
  static Notice? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get noticeId => $_getSZ(0);
  @$pb.TagNumber(1)
  set noticeId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasNoticeId() => $_has(0);
  @$pb.TagNumber(1)
  void clearNoticeId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get conversationId => $_getSZ(1);
  @$pb.TagNumber(2)
  set conversationId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasConversationId() => $_has(1);
  @$pb.TagNumber(2)
  void clearConversationId() => clearField(2);

  @$pb.TagNumber(3)
  ConversationType get conversationType => $_getN(2);
  @$pb.TagNumber(3)
  set conversationType(ConversationType v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasConversationType() => $_has(2);
  @$pb.TagNumber(3)
  void clearConversationType() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get content => $_getSZ(3);
  @$pb.TagNumber(4)
  set content($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasContent() => $_has(3);
  @$pb.TagNumber(4)
  void clearContent() => clearField(4);

  @$pb.TagNumber(5)
  NoticeContentType get contentType => $_getN(4);
  @$pb.TagNumber(5)
  set contentType(NoticeContentType v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasContentType() => $_has(4);
  @$pb.TagNumber(5)
  void clearContentType() => clearField(5);

  @$pb.TagNumber(6)
  $fixnum.Int64 get updateTime => $_getI64(5);
  @$pb.TagNumber(6)
  set updateTime($fixnum.Int64 v) { $_setInt64(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasUpdateTime() => $_has(5);
  @$pb.TagNumber(6)
  void clearUpdateTime() => clearField(6);

  @$pb.TagNumber(7)
  $fixnum.Int64 get sort => $_getI64(6);
  @$pb.TagNumber(7)
  set sort($fixnum.Int64 v) { $_setInt64(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasSort() => $_has(6);
  @$pb.TagNumber(7)
  void clearSort() => clearField(7);
}

