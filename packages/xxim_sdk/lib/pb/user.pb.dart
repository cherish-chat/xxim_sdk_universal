///
//  Generated code. Do not modify.
//  source: user.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'common.pb.dart' as $0;

import 'user.pbenum.dart';
import 'common.pbenum.dart' as $0;

export 'user.pbenum.dart';

class UserRegisterReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UserRegisterReq', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pb'), createEmptyInstance: create)
    ..aOM<$0.RequestHeader>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'header', subBuilder: $0.RequestHeader.create)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'userId', protoName: 'userId')
    ..aInt64(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'registerTime', protoName: 'registerTime')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'nickname')
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'avatar')
    ..m<$core.String, $core.String>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accountMap', protoName: 'accountMap', entryClassName: 'UserRegisterReq.AccountMapEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OS, packageName: const $pb.PackageName('pb'))
    ..m<$core.String, $core.String>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'profileMap', protoName: 'profileMap', entryClassName: 'UserRegisterReq.ProfileMapEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OS, packageName: const $pb.PackageName('pb'))
    ..m<$core.String, $core.String>(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'extraMap', protoName: 'extraMap', entryClassName: 'UserRegisterReq.ExtraMapEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OS, packageName: const $pb.PackageName('pb'))
    ..m<$core.String, $core.String>(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'verifyMap', protoName: 'verifyMap', entryClassName: 'UserRegisterReq.VerifyMapEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OS, packageName: const $pb.PackageName('pb'))
    ..hasRequiredFields = false
  ;

  UserRegisterReq._() : super();
  factory UserRegisterReq({
    $0.RequestHeader? header,
    $core.String? userId,
    $fixnum.Int64? registerTime,
    $core.String? nickname,
    $core.String? avatar,
    $core.Map<$core.String, $core.String>? accountMap,
    $core.Map<$core.String, $core.String>? profileMap,
    $core.Map<$core.String, $core.String>? extraMap,
    $core.Map<$core.String, $core.String>? verifyMap,
  }) {
    final _result = create();
    if (header != null) {
      _result.header = header;
    }
    if (userId != null) {
      _result.userId = userId;
    }
    if (registerTime != null) {
      _result.registerTime = registerTime;
    }
    if (nickname != null) {
      _result.nickname = nickname;
    }
    if (avatar != null) {
      _result.avatar = avatar;
    }
    if (accountMap != null) {
      _result.accountMap.addAll(accountMap);
    }
    if (profileMap != null) {
      _result.profileMap.addAll(profileMap);
    }
    if (extraMap != null) {
      _result.extraMap.addAll(extraMap);
    }
    if (verifyMap != null) {
      _result.verifyMap.addAll(verifyMap);
    }
    return _result;
  }
  factory UserRegisterReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserRegisterReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UserRegisterReq clone() => UserRegisterReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UserRegisterReq copyWith(void Function(UserRegisterReq) updates) => super.copyWith((message) => updates(message as UserRegisterReq)) as UserRegisterReq; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UserRegisterReq create() => UserRegisterReq._();
  UserRegisterReq createEmptyInstance() => create();
  static $pb.PbList<UserRegisterReq> createRepeated() => $pb.PbList<UserRegisterReq>();
  @$core.pragma('dart2js:noInline')
  static UserRegisterReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserRegisterReq>(create);
  static UserRegisterReq? _defaultInstance;

  @$pb.TagNumber(1)
  $0.RequestHeader get header => $_getN(0);
  @$pb.TagNumber(1)
  set header($0.RequestHeader v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasHeader() => $_has(0);
  @$pb.TagNumber(1)
  void clearHeader() => clearField(1);
  @$pb.TagNumber(1)
  $0.RequestHeader ensureHeader() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get userId => $_getSZ(1);
  @$pb.TagNumber(2)
  set userId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasUserId() => $_has(1);
  @$pb.TagNumber(2)
  void clearUserId() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get registerTime => $_getI64(2);
  @$pb.TagNumber(3)
  set registerTime($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasRegisterTime() => $_has(2);
  @$pb.TagNumber(3)
  void clearRegisterTime() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get nickname => $_getSZ(3);
  @$pb.TagNumber(4)
  set nickname($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasNickname() => $_has(3);
  @$pb.TagNumber(4)
  void clearNickname() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get avatar => $_getSZ(4);
  @$pb.TagNumber(5)
  set avatar($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasAvatar() => $_has(4);
  @$pb.TagNumber(5)
  void clearAvatar() => clearField(5);

  @$pb.TagNumber(6)
  $core.Map<$core.String, $core.String> get accountMap => $_getMap(5);

  @$pb.TagNumber(7)
  $core.Map<$core.String, $core.String> get profileMap => $_getMap(6);

  @$pb.TagNumber(8)
  $core.Map<$core.String, $core.String> get extraMap => $_getMap(7);

  @$pb.TagNumber(9)
  $core.Map<$core.String, $core.String> get verifyMap => $_getMap(8);
}

class UserRegisterResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UserRegisterResp', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pb'), createEmptyInstance: create)
    ..aOM<$0.ResponseHeader>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'header', subBuilder: $0.ResponseHeader.create)
    ..hasRequiredFields = false
  ;

  UserRegisterResp._() : super();
  factory UserRegisterResp({
    $0.ResponseHeader? header,
  }) {
    final _result = create();
    if (header != null) {
      _result.header = header;
    }
    return _result;
  }
  factory UserRegisterResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserRegisterResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UserRegisterResp clone() => UserRegisterResp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UserRegisterResp copyWith(void Function(UserRegisterResp) updates) => super.copyWith((message) => updates(message as UserRegisterResp)) as UserRegisterResp; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UserRegisterResp create() => UserRegisterResp._();
  UserRegisterResp createEmptyInstance() => create();
  static $pb.PbList<UserRegisterResp> createRepeated() => $pb.PbList<UserRegisterResp>();
  @$core.pragma('dart2js:noInline')
  static UserRegisterResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserRegisterResp>(create);
  static UserRegisterResp? _defaultInstance;

  @$pb.TagNumber(1)
  $0.ResponseHeader get header => $_getN(0);
  @$pb.TagNumber(1)
  set header($0.ResponseHeader v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasHeader() => $_has(0);
  @$pb.TagNumber(1)
  void clearHeader() => clearField(1);
  @$pb.TagNumber(1)
  $0.ResponseHeader ensureHeader() => $_ensure(0);
}

class UserDestroyReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UserDestroyReq', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pb'), createEmptyInstance: create)
    ..aOM<$0.RequestHeader>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'header', subBuilder: $0.RequestHeader.create)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'userId', protoName: 'userId')
    ..hasRequiredFields = false
  ;

  UserDestroyReq._() : super();
  factory UserDestroyReq({
    $0.RequestHeader? header,
    $core.String? userId,
  }) {
    final _result = create();
    if (header != null) {
      _result.header = header;
    }
    if (userId != null) {
      _result.userId = userId;
    }
    return _result;
  }
  factory UserDestroyReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserDestroyReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UserDestroyReq clone() => UserDestroyReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UserDestroyReq copyWith(void Function(UserDestroyReq) updates) => super.copyWith((message) => updates(message as UserDestroyReq)) as UserDestroyReq; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UserDestroyReq create() => UserDestroyReq._();
  UserDestroyReq createEmptyInstance() => create();
  static $pb.PbList<UserDestroyReq> createRepeated() => $pb.PbList<UserDestroyReq>();
  @$core.pragma('dart2js:noInline')
  static UserDestroyReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserDestroyReq>(create);
  static UserDestroyReq? _defaultInstance;

  @$pb.TagNumber(1)
  $0.RequestHeader get header => $_getN(0);
  @$pb.TagNumber(1)
  set header($0.RequestHeader v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasHeader() => $_has(0);
  @$pb.TagNumber(1)
  void clearHeader() => clearField(1);
  @$pb.TagNumber(1)
  $0.RequestHeader ensureHeader() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get userId => $_getSZ(1);
  @$pb.TagNumber(2)
  set userId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasUserId() => $_has(1);
  @$pb.TagNumber(2)
  void clearUserId() => clearField(2);
}

class UserDestroyResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UserDestroyResp', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pb'), createEmptyInstance: create)
    ..aOM<$0.ResponseHeader>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'header', subBuilder: $0.ResponseHeader.create)
    ..hasRequiredFields = false
  ;

  UserDestroyResp._() : super();
  factory UserDestroyResp({
    $0.ResponseHeader? header,
  }) {
    final _result = create();
    if (header != null) {
      _result.header = header;
    }
    return _result;
  }
  factory UserDestroyResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserDestroyResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UserDestroyResp clone() => UserDestroyResp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UserDestroyResp copyWith(void Function(UserDestroyResp) updates) => super.copyWith((message) => updates(message as UserDestroyResp)) as UserDestroyResp; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UserDestroyResp create() => UserDestroyResp._();
  UserDestroyResp createEmptyInstance() => create();
  static $pb.PbList<UserDestroyResp> createRepeated() => $pb.PbList<UserDestroyResp>();
  @$core.pragma('dart2js:noInline')
  static UserDestroyResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserDestroyResp>(create);
  static UserDestroyResp? _defaultInstance;

  @$pb.TagNumber(1)
  $0.ResponseHeader get header => $_getN(0);
  @$pb.TagNumber(1)
  set header($0.ResponseHeader v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasHeader() => $_has(0);
  @$pb.TagNumber(1)
  void clearHeader() => clearField(1);
  @$pb.TagNumber(1)
  $0.ResponseHeader ensureHeader() => $_ensure(0);
}

class UserAccessTokenReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UserAccessTokenReq', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pb'), createEmptyInstance: create)
    ..aOM<$0.RequestHeader>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'header', subBuilder: $0.RequestHeader.create)
    ..m<$core.String, $core.String>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accountMap', protoName: 'accountMap', entryClassName: 'UserAccessTokenReq.AccountMapEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OS, packageName: const $pb.PackageName('pb'))
    ..m<$core.String, $core.String>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'verifyMap', protoName: 'verifyMap', entryClassName: 'UserAccessTokenReq.VerifyMapEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OS, packageName: const $pb.PackageName('pb'))
    ..aInt64(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'expireTime', protoName: 'expireTime')
    ..hasRequiredFields = false
  ;

  UserAccessTokenReq._() : super();
  factory UserAccessTokenReq({
    $0.RequestHeader? header,
    $core.Map<$core.String, $core.String>? accountMap,
    $core.Map<$core.String, $core.String>? verifyMap,
    $fixnum.Int64? expireTime,
  }) {
    final _result = create();
    if (header != null) {
      _result.header = header;
    }
    if (accountMap != null) {
      _result.accountMap.addAll(accountMap);
    }
    if (verifyMap != null) {
      _result.verifyMap.addAll(verifyMap);
    }
    if (expireTime != null) {
      _result.expireTime = expireTime;
    }
    return _result;
  }
  factory UserAccessTokenReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserAccessTokenReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UserAccessTokenReq clone() => UserAccessTokenReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UserAccessTokenReq copyWith(void Function(UserAccessTokenReq) updates) => super.copyWith((message) => updates(message as UserAccessTokenReq)) as UserAccessTokenReq; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UserAccessTokenReq create() => UserAccessTokenReq._();
  UserAccessTokenReq createEmptyInstance() => create();
  static $pb.PbList<UserAccessTokenReq> createRepeated() => $pb.PbList<UserAccessTokenReq>();
  @$core.pragma('dart2js:noInline')
  static UserAccessTokenReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserAccessTokenReq>(create);
  static UserAccessTokenReq? _defaultInstance;

  @$pb.TagNumber(1)
  $0.RequestHeader get header => $_getN(0);
  @$pb.TagNumber(1)
  set header($0.RequestHeader v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasHeader() => $_has(0);
  @$pb.TagNumber(1)
  void clearHeader() => clearField(1);
  @$pb.TagNumber(1)
  $0.RequestHeader ensureHeader() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.Map<$core.String, $core.String> get accountMap => $_getMap(1);

  @$pb.TagNumber(3)
  $core.Map<$core.String, $core.String> get verifyMap => $_getMap(2);

  @$pb.TagNumber(4)
  $fixnum.Int64 get expireTime => $_getI64(3);
  @$pb.TagNumber(4)
  set expireTime($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasExpireTime() => $_has(3);
  @$pb.TagNumber(4)
  void clearExpireTime() => clearField(4);
}

class UserAccessTokenResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UserAccessTokenResp', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pb'), createEmptyInstance: create)
    ..aOM<$0.ResponseHeader>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'header', subBuilder: $0.ResponseHeader.create)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'userId', protoName: 'userId')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accessToken', protoName: 'accessToken')
    ..hasRequiredFields = false
  ;

  UserAccessTokenResp._() : super();
  factory UserAccessTokenResp({
    $0.ResponseHeader? header,
    $core.String? userId,
    $core.String? accessToken,
  }) {
    final _result = create();
    if (header != null) {
      _result.header = header;
    }
    if (userId != null) {
      _result.userId = userId;
    }
    if (accessToken != null) {
      _result.accessToken = accessToken;
    }
    return _result;
  }
  factory UserAccessTokenResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserAccessTokenResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UserAccessTokenResp clone() => UserAccessTokenResp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UserAccessTokenResp copyWith(void Function(UserAccessTokenResp) updates) => super.copyWith((message) => updates(message as UserAccessTokenResp)) as UserAccessTokenResp; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UserAccessTokenResp create() => UserAccessTokenResp._();
  UserAccessTokenResp createEmptyInstance() => create();
  static $pb.PbList<UserAccessTokenResp> createRepeated() => $pb.PbList<UserAccessTokenResp>();
  @$core.pragma('dart2js:noInline')
  static UserAccessTokenResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserAccessTokenResp>(create);
  static UserAccessTokenResp? _defaultInstance;

  @$pb.TagNumber(1)
  $0.ResponseHeader get header => $_getN(0);
  @$pb.TagNumber(1)
  set header($0.ResponseHeader v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasHeader() => $_has(0);
  @$pb.TagNumber(1)
  void clearHeader() => clearField(1);
  @$pb.TagNumber(1)
  $0.ResponseHeader ensureHeader() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get userId => $_getSZ(1);
  @$pb.TagNumber(2)
  set userId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasUserId() => $_has(1);
  @$pb.TagNumber(2)
  void clearUserId() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get accessToken => $_getSZ(2);
  @$pb.TagNumber(3)
  set accessToken($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasAccessToken() => $_has(2);
  @$pb.TagNumber(3)
  void clearAccessToken() => clearField(3);
}

class RefreshUserAccessTokenReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'RefreshUserAccessTokenReq', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pb'), createEmptyInstance: create)
    ..aOM<$0.RequestHeader>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'header', subBuilder: $0.RequestHeader.create)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'userId', protoName: 'userId')
    ..hasRequiredFields = false
  ;

  RefreshUserAccessTokenReq._() : super();
  factory RefreshUserAccessTokenReq({
    $0.RequestHeader? header,
    $core.String? userId,
  }) {
    final _result = create();
    if (header != null) {
      _result.header = header;
    }
    if (userId != null) {
      _result.userId = userId;
    }
    return _result;
  }
  factory RefreshUserAccessTokenReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RefreshUserAccessTokenReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RefreshUserAccessTokenReq clone() => RefreshUserAccessTokenReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RefreshUserAccessTokenReq copyWith(void Function(RefreshUserAccessTokenReq) updates) => super.copyWith((message) => updates(message as RefreshUserAccessTokenReq)) as RefreshUserAccessTokenReq; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RefreshUserAccessTokenReq create() => RefreshUserAccessTokenReq._();
  RefreshUserAccessTokenReq createEmptyInstance() => create();
  static $pb.PbList<RefreshUserAccessTokenReq> createRepeated() => $pb.PbList<RefreshUserAccessTokenReq>();
  @$core.pragma('dart2js:noInline')
  static RefreshUserAccessTokenReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RefreshUserAccessTokenReq>(create);
  static RefreshUserAccessTokenReq? _defaultInstance;

  @$pb.TagNumber(1)
  $0.RequestHeader get header => $_getN(0);
  @$pb.TagNumber(1)
  set header($0.RequestHeader v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasHeader() => $_has(0);
  @$pb.TagNumber(1)
  void clearHeader() => clearField(1);
  @$pb.TagNumber(1)
  $0.RequestHeader ensureHeader() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get userId => $_getSZ(1);
  @$pb.TagNumber(2)
  set userId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasUserId() => $_has(1);
  @$pb.TagNumber(2)
  void clearUserId() => clearField(2);
}

class RefreshUserAccessTokenResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'RefreshUserAccessTokenResp', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pb'), createEmptyInstance: create)
    ..aOM<$0.ResponseHeader>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'header', subBuilder: $0.ResponseHeader.create)
    ..hasRequiredFields = false
  ;

  RefreshUserAccessTokenResp._() : super();
  factory RefreshUserAccessTokenResp({
    $0.ResponseHeader? header,
  }) {
    final _result = create();
    if (header != null) {
      _result.header = header;
    }
    return _result;
  }
  factory RefreshUserAccessTokenResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RefreshUserAccessTokenResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RefreshUserAccessTokenResp clone() => RefreshUserAccessTokenResp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RefreshUserAccessTokenResp copyWith(void Function(RefreshUserAccessTokenResp) updates) => super.copyWith((message) => updates(message as RefreshUserAccessTokenResp)) as RefreshUserAccessTokenResp; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RefreshUserAccessTokenResp create() => RefreshUserAccessTokenResp._();
  RefreshUserAccessTokenResp createEmptyInstance() => create();
  static $pb.PbList<RefreshUserAccessTokenResp> createRepeated() => $pb.PbList<RefreshUserAccessTokenResp>();
  @$core.pragma('dart2js:noInline')
  static RefreshUserAccessTokenResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RefreshUserAccessTokenResp>(create);
  static RefreshUserAccessTokenResp? _defaultInstance;

  @$pb.TagNumber(1)
  $0.ResponseHeader get header => $_getN(0);
  @$pb.TagNumber(1)
  set header($0.ResponseHeader v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasHeader() => $_has(0);
  @$pb.TagNumber(1)
  void clearHeader() => clearField(1);
  @$pb.TagNumber(1)
  $0.ResponseHeader ensureHeader() => $_ensure(0);
}

class RevokeUserAccessTokenReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'RevokeUserAccessTokenReq', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pb'), createEmptyInstance: create)
    ..aOM<$0.RequestHeader>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'header', subBuilder: $0.RequestHeader.create)
    ..hasRequiredFields = false
  ;

  RevokeUserAccessTokenReq._() : super();
  factory RevokeUserAccessTokenReq({
    $0.RequestHeader? header,
  }) {
    final _result = create();
    if (header != null) {
      _result.header = header;
    }
    return _result;
  }
  factory RevokeUserAccessTokenReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RevokeUserAccessTokenReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RevokeUserAccessTokenReq clone() => RevokeUserAccessTokenReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RevokeUserAccessTokenReq copyWith(void Function(RevokeUserAccessTokenReq) updates) => super.copyWith((message) => updates(message as RevokeUserAccessTokenReq)) as RevokeUserAccessTokenReq; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RevokeUserAccessTokenReq create() => RevokeUserAccessTokenReq._();
  RevokeUserAccessTokenReq createEmptyInstance() => create();
  static $pb.PbList<RevokeUserAccessTokenReq> createRepeated() => $pb.PbList<RevokeUserAccessTokenReq>();
  @$core.pragma('dart2js:noInline')
  static RevokeUserAccessTokenReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RevokeUserAccessTokenReq>(create);
  static RevokeUserAccessTokenReq? _defaultInstance;

  @$pb.TagNumber(1)
  $0.RequestHeader get header => $_getN(0);
  @$pb.TagNumber(1)
  set header($0.RequestHeader v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasHeader() => $_has(0);
  @$pb.TagNumber(1)
  void clearHeader() => clearField(1);
  @$pb.TagNumber(1)
  $0.RequestHeader ensureHeader() => $_ensure(0);
}

class RevokeUserAccessTokenResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'RevokeUserAccessTokenResp', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pb'), createEmptyInstance: create)
    ..aOM<$0.ResponseHeader>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'header', subBuilder: $0.ResponseHeader.create)
    ..hasRequiredFields = false
  ;

  RevokeUserAccessTokenResp._() : super();
  factory RevokeUserAccessTokenResp({
    $0.ResponseHeader? header,
  }) {
    final _result = create();
    if (header != null) {
      _result.header = header;
    }
    return _result;
  }
  factory RevokeUserAccessTokenResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RevokeUserAccessTokenResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RevokeUserAccessTokenResp clone() => RevokeUserAccessTokenResp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RevokeUserAccessTokenResp copyWith(void Function(RevokeUserAccessTokenResp) updates) => super.copyWith((message) => updates(message as RevokeUserAccessTokenResp)) as RevokeUserAccessTokenResp; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RevokeUserAccessTokenResp create() => RevokeUserAccessTokenResp._();
  RevokeUserAccessTokenResp createEmptyInstance() => create();
  static $pb.PbList<RevokeUserAccessTokenResp> createRepeated() => $pb.PbList<RevokeUserAccessTokenResp>();
  @$core.pragma('dart2js:noInline')
  static RevokeUserAccessTokenResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RevokeUserAccessTokenResp>(create);
  static RevokeUserAccessTokenResp? _defaultInstance;

  @$pb.TagNumber(1)
  $0.ResponseHeader get header => $_getN(0);
  @$pb.TagNumber(1)
  set header($0.ResponseHeader v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasHeader() => $_has(0);
  @$pb.TagNumber(1)
  void clearHeader() => clearField(1);
  @$pb.TagNumber(1)
  $0.ResponseHeader ensureHeader() => $_ensure(0);
}

class UpdateUserAccountMapReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UpdateUserAccountMapReq', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pb'), createEmptyInstance: create)
    ..aOM<$0.RequestHeader>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'header', subBuilder: $0.RequestHeader.create)
    ..m<$core.String, $core.String>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accountMap', protoName: 'accountMap', entryClassName: 'UpdateUserAccountMapReq.AccountMapEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OS, packageName: const $pb.PackageName('pb'))
    ..m<$core.String, $core.String>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'verifyMap', protoName: 'verifyMap', entryClassName: 'UpdateUserAccountMapReq.VerifyMapEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OS, packageName: const $pb.PackageName('pb'))
    ..hasRequiredFields = false
  ;

  UpdateUserAccountMapReq._() : super();
  factory UpdateUserAccountMapReq({
    $0.RequestHeader? header,
    $core.Map<$core.String, $core.String>? accountMap,
    $core.Map<$core.String, $core.String>? verifyMap,
  }) {
    final _result = create();
    if (header != null) {
      _result.header = header;
    }
    if (accountMap != null) {
      _result.accountMap.addAll(accountMap);
    }
    if (verifyMap != null) {
      _result.verifyMap.addAll(verifyMap);
    }
    return _result;
  }
  factory UpdateUserAccountMapReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateUserAccountMapReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateUserAccountMapReq clone() => UpdateUserAccountMapReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateUserAccountMapReq copyWith(void Function(UpdateUserAccountMapReq) updates) => super.copyWith((message) => updates(message as UpdateUserAccountMapReq)) as UpdateUserAccountMapReq; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UpdateUserAccountMapReq create() => UpdateUserAccountMapReq._();
  UpdateUserAccountMapReq createEmptyInstance() => create();
  static $pb.PbList<UpdateUserAccountMapReq> createRepeated() => $pb.PbList<UpdateUserAccountMapReq>();
  @$core.pragma('dart2js:noInline')
  static UpdateUserAccountMapReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateUserAccountMapReq>(create);
  static UpdateUserAccountMapReq? _defaultInstance;

  @$pb.TagNumber(1)
  $0.RequestHeader get header => $_getN(0);
  @$pb.TagNumber(1)
  set header($0.RequestHeader v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasHeader() => $_has(0);
  @$pb.TagNumber(1)
  void clearHeader() => clearField(1);
  @$pb.TagNumber(1)
  $0.RequestHeader ensureHeader() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.Map<$core.String, $core.String> get accountMap => $_getMap(1);

  @$pb.TagNumber(3)
  $core.Map<$core.String, $core.String> get verifyMap => $_getMap(2);
}

class UpdateUserAccountMapResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UpdateUserAccountMapResp', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pb'), createEmptyInstance: create)
    ..aOM<$0.ResponseHeader>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'header', subBuilder: $0.ResponseHeader.create)
    ..hasRequiredFields = false
  ;

  UpdateUserAccountMapResp._() : super();
  factory UpdateUserAccountMapResp({
    $0.ResponseHeader? header,
  }) {
    final _result = create();
    if (header != null) {
      _result.header = header;
    }
    return _result;
  }
  factory UpdateUserAccountMapResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateUserAccountMapResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateUserAccountMapResp clone() => UpdateUserAccountMapResp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateUserAccountMapResp copyWith(void Function(UpdateUserAccountMapResp) updates) => super.copyWith((message) => updates(message as UpdateUserAccountMapResp)) as UpdateUserAccountMapResp; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UpdateUserAccountMapResp create() => UpdateUserAccountMapResp._();
  UpdateUserAccountMapResp createEmptyInstance() => create();
  static $pb.PbList<UpdateUserAccountMapResp> createRepeated() => $pb.PbList<UpdateUserAccountMapResp>();
  @$core.pragma('dart2js:noInline')
  static UpdateUserAccountMapResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateUserAccountMapResp>(create);
  static UpdateUserAccountMapResp? _defaultInstance;

  @$pb.TagNumber(1)
  $0.ResponseHeader get header => $_getN(0);
  @$pb.TagNumber(1)
  set header($0.ResponseHeader v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasHeader() => $_has(0);
  @$pb.TagNumber(1)
  void clearHeader() => clearField(1);
  @$pb.TagNumber(1)
  $0.ResponseHeader ensureHeader() => $_ensure(0);
}

class UpdateUserProfileMapReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UpdateUserProfileMapReq', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pb'), createEmptyInstance: create)
    ..aOM<$0.RequestHeader>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'header', subBuilder: $0.RequestHeader.create)
    ..m<$core.String, $core.String>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'profileMap', protoName: 'profileMap', entryClassName: 'UpdateUserProfileMapReq.ProfileMapEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OS, packageName: const $pb.PackageName('pb'))
    ..hasRequiredFields = false
  ;

  UpdateUserProfileMapReq._() : super();
  factory UpdateUserProfileMapReq({
    $0.RequestHeader? header,
    $core.Map<$core.String, $core.String>? profileMap,
  }) {
    final _result = create();
    if (header != null) {
      _result.header = header;
    }
    if (profileMap != null) {
      _result.profileMap.addAll(profileMap);
    }
    return _result;
  }
  factory UpdateUserProfileMapReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateUserProfileMapReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateUserProfileMapReq clone() => UpdateUserProfileMapReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateUserProfileMapReq copyWith(void Function(UpdateUserProfileMapReq) updates) => super.copyWith((message) => updates(message as UpdateUserProfileMapReq)) as UpdateUserProfileMapReq; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UpdateUserProfileMapReq create() => UpdateUserProfileMapReq._();
  UpdateUserProfileMapReq createEmptyInstance() => create();
  static $pb.PbList<UpdateUserProfileMapReq> createRepeated() => $pb.PbList<UpdateUserProfileMapReq>();
  @$core.pragma('dart2js:noInline')
  static UpdateUserProfileMapReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateUserProfileMapReq>(create);
  static UpdateUserProfileMapReq? _defaultInstance;

  @$pb.TagNumber(1)
  $0.RequestHeader get header => $_getN(0);
  @$pb.TagNumber(1)
  set header($0.RequestHeader v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasHeader() => $_has(0);
  @$pb.TagNumber(1)
  void clearHeader() => clearField(1);
  @$pb.TagNumber(1)
  $0.RequestHeader ensureHeader() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.Map<$core.String, $core.String> get profileMap => $_getMap(1);
}

class UpdateUserProfileMapResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UpdateUserProfileMapResp', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pb'), createEmptyInstance: create)
    ..aOM<$0.ResponseHeader>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'header', subBuilder: $0.ResponseHeader.create)
    ..hasRequiredFields = false
  ;

  UpdateUserProfileMapResp._() : super();
  factory UpdateUserProfileMapResp({
    $0.ResponseHeader? header,
  }) {
    final _result = create();
    if (header != null) {
      _result.header = header;
    }
    return _result;
  }
  factory UpdateUserProfileMapResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateUserProfileMapResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateUserProfileMapResp clone() => UpdateUserProfileMapResp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateUserProfileMapResp copyWith(void Function(UpdateUserProfileMapResp) updates) => super.copyWith((message) => updates(message as UpdateUserProfileMapResp)) as UpdateUserProfileMapResp; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UpdateUserProfileMapResp create() => UpdateUserProfileMapResp._();
  UpdateUserProfileMapResp createEmptyInstance() => create();
  static $pb.PbList<UpdateUserProfileMapResp> createRepeated() => $pb.PbList<UpdateUserProfileMapResp>();
  @$core.pragma('dart2js:noInline')
  static UpdateUserProfileMapResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateUserProfileMapResp>(create);
  static UpdateUserProfileMapResp? _defaultInstance;

  @$pb.TagNumber(1)
  $0.ResponseHeader get header => $_getN(0);
  @$pb.TagNumber(1)
  set header($0.ResponseHeader v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasHeader() => $_has(0);
  @$pb.TagNumber(1)
  void clearHeader() => clearField(1);
  @$pb.TagNumber(1)
  $0.ResponseHeader ensureHeader() => $_ensure(0);
}

class UpdateUserExtraMapReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UpdateUserExtraMapReq', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pb'), createEmptyInstance: create)
    ..aOM<$0.RequestHeader>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'header', subBuilder: $0.RequestHeader.create)
    ..m<$core.String, $core.String>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'extraMap', protoName: 'extraMap', entryClassName: 'UpdateUserExtraMapReq.ExtraMapEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OS, packageName: const $pb.PackageName('pb'))
    ..hasRequiredFields = false
  ;

  UpdateUserExtraMapReq._() : super();
  factory UpdateUserExtraMapReq({
    $0.RequestHeader? header,
    $core.Map<$core.String, $core.String>? extraMap,
  }) {
    final _result = create();
    if (header != null) {
      _result.header = header;
    }
    if (extraMap != null) {
      _result.extraMap.addAll(extraMap);
    }
    return _result;
  }
  factory UpdateUserExtraMapReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateUserExtraMapReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateUserExtraMapReq clone() => UpdateUserExtraMapReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateUserExtraMapReq copyWith(void Function(UpdateUserExtraMapReq) updates) => super.copyWith((message) => updates(message as UpdateUserExtraMapReq)) as UpdateUserExtraMapReq; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UpdateUserExtraMapReq create() => UpdateUserExtraMapReq._();
  UpdateUserExtraMapReq createEmptyInstance() => create();
  static $pb.PbList<UpdateUserExtraMapReq> createRepeated() => $pb.PbList<UpdateUserExtraMapReq>();
  @$core.pragma('dart2js:noInline')
  static UpdateUserExtraMapReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateUserExtraMapReq>(create);
  static UpdateUserExtraMapReq? _defaultInstance;

  @$pb.TagNumber(1)
  $0.RequestHeader get header => $_getN(0);
  @$pb.TagNumber(1)
  set header($0.RequestHeader v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasHeader() => $_has(0);
  @$pb.TagNumber(1)
  void clearHeader() => clearField(1);
  @$pb.TagNumber(1)
  $0.RequestHeader ensureHeader() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.Map<$core.String, $core.String> get extraMap => $_getMap(1);
}

class UpdateUserExtraMapResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UpdateUserExtraMapResp', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pb'), createEmptyInstance: create)
    ..aOM<$0.ResponseHeader>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'header', subBuilder: $0.ResponseHeader.create)
    ..hasRequiredFields = false
  ;

  UpdateUserExtraMapResp._() : super();
  factory UpdateUserExtraMapResp({
    $0.ResponseHeader? header,
  }) {
    final _result = create();
    if (header != null) {
      _result.header = header;
    }
    return _result;
  }
  factory UpdateUserExtraMapResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateUserExtraMapResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateUserExtraMapResp clone() => UpdateUserExtraMapResp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateUserExtraMapResp copyWith(void Function(UpdateUserExtraMapResp) updates) => super.copyWith((message) => updates(message as UpdateUserExtraMapResp)) as UpdateUserExtraMapResp; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UpdateUserExtraMapResp create() => UpdateUserExtraMapResp._();
  UpdateUserExtraMapResp createEmptyInstance() => create();
  static $pb.PbList<UpdateUserExtraMapResp> createRepeated() => $pb.PbList<UpdateUserExtraMapResp>();
  @$core.pragma('dart2js:noInline')
  static UpdateUserExtraMapResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateUserExtraMapResp>(create);
  static UpdateUserExtraMapResp? _defaultInstance;

  @$pb.TagNumber(1)
  $0.ResponseHeader get header => $_getN(0);
  @$pb.TagNumber(1)
  set header($0.ResponseHeader v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasHeader() => $_has(0);
  @$pb.TagNumber(1)
  void clearHeader() => clearField(1);
  @$pb.TagNumber(1)
  $0.ResponseHeader ensureHeader() => $_ensure(0);
}

class UpdateUserCountMapReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UpdateUserCountMapReq', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pb'), createEmptyInstance: create)
    ..aOM<$0.RequestHeader>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'header', subBuilder: $0.RequestHeader.create)
    ..e<UpdateUserCountMapReq_CountType>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'countType', $pb.PbFieldType.OE, protoName: 'countType', defaultOrMaker: UpdateUserCountMapReq_CountType.friendCount, valueOf: UpdateUserCountMapReq_CountType.valueOf, enumValues: UpdateUserCountMapReq_CountType.values)
    ..e<UpdateUserCountMapReq_Algorithm>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'algorithm', $pb.PbFieldType.OE, defaultOrMaker: UpdateUserCountMapReq_Algorithm.add, valueOf: UpdateUserCountMapReq_Algorithm.valueOf, enumValues: UpdateUserCountMapReq_Algorithm.values)
    ..aInt64(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'count')
    ..aOB(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'statistics')
    ..hasRequiredFields = false
  ;

  UpdateUserCountMapReq._() : super();
  factory UpdateUserCountMapReq({
    $0.RequestHeader? header,
    UpdateUserCountMapReq_CountType? countType,
    UpdateUserCountMapReq_Algorithm? algorithm,
    $fixnum.Int64? count,
    $core.bool? statistics,
  }) {
    final _result = create();
    if (header != null) {
      _result.header = header;
    }
    if (countType != null) {
      _result.countType = countType;
    }
    if (algorithm != null) {
      _result.algorithm = algorithm;
    }
    if (count != null) {
      _result.count = count;
    }
    if (statistics != null) {
      _result.statistics = statistics;
    }
    return _result;
  }
  factory UpdateUserCountMapReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateUserCountMapReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateUserCountMapReq clone() => UpdateUserCountMapReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateUserCountMapReq copyWith(void Function(UpdateUserCountMapReq) updates) => super.copyWith((message) => updates(message as UpdateUserCountMapReq)) as UpdateUserCountMapReq; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UpdateUserCountMapReq create() => UpdateUserCountMapReq._();
  UpdateUserCountMapReq createEmptyInstance() => create();
  static $pb.PbList<UpdateUserCountMapReq> createRepeated() => $pb.PbList<UpdateUserCountMapReq>();
  @$core.pragma('dart2js:noInline')
  static UpdateUserCountMapReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateUserCountMapReq>(create);
  static UpdateUserCountMapReq? _defaultInstance;

  @$pb.TagNumber(1)
  $0.RequestHeader get header => $_getN(0);
  @$pb.TagNumber(1)
  set header($0.RequestHeader v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasHeader() => $_has(0);
  @$pb.TagNumber(1)
  void clearHeader() => clearField(1);
  @$pb.TagNumber(1)
  $0.RequestHeader ensureHeader() => $_ensure(0);

  @$pb.TagNumber(2)
  UpdateUserCountMapReq_CountType get countType => $_getN(1);
  @$pb.TagNumber(2)
  set countType(UpdateUserCountMapReq_CountType v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasCountType() => $_has(1);
  @$pb.TagNumber(2)
  void clearCountType() => clearField(2);

  @$pb.TagNumber(3)
  UpdateUserCountMapReq_Algorithm get algorithm => $_getN(2);
  @$pb.TagNumber(3)
  set algorithm(UpdateUserCountMapReq_Algorithm v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasAlgorithm() => $_has(2);
  @$pb.TagNumber(3)
  void clearAlgorithm() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get count => $_getI64(3);
  @$pb.TagNumber(4)
  set count($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasCount() => $_has(3);
  @$pb.TagNumber(4)
  void clearCount() => clearField(4);

  @$pb.TagNumber(5)
  $core.bool get statistics => $_getBF(4);
  @$pb.TagNumber(5)
  set statistics($core.bool v) { $_setBool(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasStatistics() => $_has(4);
  @$pb.TagNumber(5)
  void clearStatistics() => clearField(5);
}

class UpdateUserCountMapResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UpdateUserCountMapResp', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pb'), createEmptyInstance: create)
    ..aOM<$0.ResponseHeader>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'header', subBuilder: $0.ResponseHeader.create)
    ..hasRequiredFields = false
  ;

  UpdateUserCountMapResp._() : super();
  factory UpdateUserCountMapResp({
    $0.ResponseHeader? header,
  }) {
    final _result = create();
    if (header != null) {
      _result.header = header;
    }
    return _result;
  }
  factory UpdateUserCountMapResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateUserCountMapResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateUserCountMapResp clone() => UpdateUserCountMapResp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateUserCountMapResp copyWith(void Function(UpdateUserCountMapResp) updates) => super.copyWith((message) => updates(message as UpdateUserCountMapResp)) as UpdateUserCountMapResp; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UpdateUserCountMapResp create() => UpdateUserCountMapResp._();
  UpdateUserCountMapResp createEmptyInstance() => create();
  static $pb.PbList<UpdateUserCountMapResp> createRepeated() => $pb.PbList<UpdateUserCountMapResp>();
  @$core.pragma('dart2js:noInline')
  static UpdateUserCountMapResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateUserCountMapResp>(create);
  static UpdateUserCountMapResp? _defaultInstance;

  @$pb.TagNumber(1)
  $0.ResponseHeader get header => $_getN(0);
  @$pb.TagNumber(1)
  set header($0.ResponseHeader v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasHeader() => $_has(0);
  @$pb.TagNumber(1)
  void clearHeader() => clearField(1);
  @$pb.TagNumber(1)
  $0.ResponseHeader ensureHeader() => $_ensure(0);
}

class GetSelfUserInfoReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetSelfUserInfoReq', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pb'), createEmptyInstance: create)
    ..aOM<$0.RequestHeader>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'header', subBuilder: $0.RequestHeader.create)
    ..hasRequiredFields = false
  ;

  GetSelfUserInfoReq._() : super();
  factory GetSelfUserInfoReq({
    $0.RequestHeader? header,
  }) {
    final _result = create();
    if (header != null) {
      _result.header = header;
    }
    return _result;
  }
  factory GetSelfUserInfoReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetSelfUserInfoReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetSelfUserInfoReq clone() => GetSelfUserInfoReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetSelfUserInfoReq copyWith(void Function(GetSelfUserInfoReq) updates) => super.copyWith((message) => updates(message as GetSelfUserInfoReq)) as GetSelfUserInfoReq; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetSelfUserInfoReq create() => GetSelfUserInfoReq._();
  GetSelfUserInfoReq createEmptyInstance() => create();
  static $pb.PbList<GetSelfUserInfoReq> createRepeated() => $pb.PbList<GetSelfUserInfoReq>();
  @$core.pragma('dart2js:noInline')
  static GetSelfUserInfoReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetSelfUserInfoReq>(create);
  static GetSelfUserInfoReq? _defaultInstance;

  @$pb.TagNumber(1)
  $0.RequestHeader get header => $_getN(0);
  @$pb.TagNumber(1)
  set header($0.RequestHeader v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasHeader() => $_has(0);
  @$pb.TagNumber(1)
  void clearHeader() => clearField(1);
  @$pb.TagNumber(1)
  $0.RequestHeader ensureHeader() => $_ensure(0);
}

class GetSelfUserInfoResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetSelfUserInfoResp', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pb'), createEmptyInstance: create)
    ..aOM<$0.ResponseHeader>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'header', subBuilder: $0.ResponseHeader.create)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'userId', protoName: 'userId')
    ..aInt64(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'registerTime', protoName: 'registerTime')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'nickname')
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'avatar')
    ..m<$core.String, $core.String>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accountMap', protoName: 'accountMap', entryClassName: 'GetSelfUserInfoResp.AccountMapEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OS, packageName: const $pb.PackageName('pb'))
    ..m<$core.String, $core.String>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'profileMap', protoName: 'profileMap', entryClassName: 'GetSelfUserInfoResp.ProfileMapEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OS, packageName: const $pb.PackageName('pb'))
    ..m<$core.String, $core.String>(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'extraMap', protoName: 'extraMap', entryClassName: 'GetSelfUserInfoResp.ExtraMapEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OS, packageName: const $pb.PackageName('pb'))
    ..hasRequiredFields = false
  ;

  GetSelfUserInfoResp._() : super();
  factory GetSelfUserInfoResp({
    $0.ResponseHeader? header,
    $core.String? userId,
    $fixnum.Int64? registerTime,
    $core.String? nickname,
    $core.String? avatar,
    $core.Map<$core.String, $core.String>? accountMap,
    $core.Map<$core.String, $core.String>? profileMap,
    $core.Map<$core.String, $core.String>? extraMap,
  }) {
    final _result = create();
    if (header != null) {
      _result.header = header;
    }
    if (userId != null) {
      _result.userId = userId;
    }
    if (registerTime != null) {
      _result.registerTime = registerTime;
    }
    if (nickname != null) {
      _result.nickname = nickname;
    }
    if (avatar != null) {
      _result.avatar = avatar;
    }
    if (accountMap != null) {
      _result.accountMap.addAll(accountMap);
    }
    if (profileMap != null) {
      _result.profileMap.addAll(profileMap);
    }
    if (extraMap != null) {
      _result.extraMap.addAll(extraMap);
    }
    return _result;
  }
  factory GetSelfUserInfoResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetSelfUserInfoResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetSelfUserInfoResp clone() => GetSelfUserInfoResp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetSelfUserInfoResp copyWith(void Function(GetSelfUserInfoResp) updates) => super.copyWith((message) => updates(message as GetSelfUserInfoResp)) as GetSelfUserInfoResp; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetSelfUserInfoResp create() => GetSelfUserInfoResp._();
  GetSelfUserInfoResp createEmptyInstance() => create();
  static $pb.PbList<GetSelfUserInfoResp> createRepeated() => $pb.PbList<GetSelfUserInfoResp>();
  @$core.pragma('dart2js:noInline')
  static GetSelfUserInfoResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetSelfUserInfoResp>(create);
  static GetSelfUserInfoResp? _defaultInstance;

  @$pb.TagNumber(1)
  $0.ResponseHeader get header => $_getN(0);
  @$pb.TagNumber(1)
  set header($0.ResponseHeader v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasHeader() => $_has(0);
  @$pb.TagNumber(1)
  void clearHeader() => clearField(1);
  @$pb.TagNumber(1)
  $0.ResponseHeader ensureHeader() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get userId => $_getSZ(1);
  @$pb.TagNumber(2)
  set userId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasUserId() => $_has(1);
  @$pb.TagNumber(2)
  void clearUserId() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get registerTime => $_getI64(2);
  @$pb.TagNumber(3)
  set registerTime($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasRegisterTime() => $_has(2);
  @$pb.TagNumber(3)
  void clearRegisterTime() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get nickname => $_getSZ(3);
  @$pb.TagNumber(4)
  set nickname($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasNickname() => $_has(3);
  @$pb.TagNumber(4)
  void clearNickname() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get avatar => $_getSZ(4);
  @$pb.TagNumber(5)
  set avatar($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasAvatar() => $_has(4);
  @$pb.TagNumber(5)
  void clearAvatar() => clearField(5);

  @$pb.TagNumber(6)
  $core.Map<$core.String, $core.String> get accountMap => $_getMap(5);

  @$pb.TagNumber(7)
  $core.Map<$core.String, $core.String> get profileMap => $_getMap(6);

  @$pb.TagNumber(8)
  $core.Map<$core.String, $core.String> get extraMap => $_getMap(7);
}

class GetUserInfoReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetUserInfoReq', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pb'), createEmptyInstance: create)
    ..aOM<$0.RequestHeader>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'header', subBuilder: $0.RequestHeader.create)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'userId', protoName: 'userId')
    ..hasRequiredFields = false
  ;

  GetUserInfoReq._() : super();
  factory GetUserInfoReq({
    $0.RequestHeader? header,
    $core.String? userId,
  }) {
    final _result = create();
    if (header != null) {
      _result.header = header;
    }
    if (userId != null) {
      _result.userId = userId;
    }
    return _result;
  }
  factory GetUserInfoReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetUserInfoReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetUserInfoReq clone() => GetUserInfoReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetUserInfoReq copyWith(void Function(GetUserInfoReq) updates) => super.copyWith((message) => updates(message as GetUserInfoReq)) as GetUserInfoReq; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetUserInfoReq create() => GetUserInfoReq._();
  GetUserInfoReq createEmptyInstance() => create();
  static $pb.PbList<GetUserInfoReq> createRepeated() => $pb.PbList<GetUserInfoReq>();
  @$core.pragma('dart2js:noInline')
  static GetUserInfoReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetUserInfoReq>(create);
  static GetUserInfoReq? _defaultInstance;

  @$pb.TagNumber(1)
  $0.RequestHeader get header => $_getN(0);
  @$pb.TagNumber(1)
  set header($0.RequestHeader v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasHeader() => $_has(0);
  @$pb.TagNumber(1)
  void clearHeader() => clearField(1);
  @$pb.TagNumber(1)
  $0.RequestHeader ensureHeader() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get userId => $_getSZ(1);
  @$pb.TagNumber(2)
  set userId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasUserId() => $_has(1);
  @$pb.TagNumber(2)
  void clearUserId() => clearField(2);
}

class GetUserInfoResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetUserInfoResp', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pb'), createEmptyInstance: create)
    ..aOM<$0.ResponseHeader>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'header', subBuilder: $0.ResponseHeader.create)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'userId', protoName: 'userId')
    ..aInt64(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'registerTime', protoName: 'registerTime')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'nickname')
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'avatar')
    ..m<$core.String, $core.String>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'profileMap', protoName: 'profileMap', entryClassName: 'GetUserInfoResp.ProfileMapEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OS, packageName: const $pb.PackageName('pb'))
    ..hasRequiredFields = false
  ;

  GetUserInfoResp._() : super();
  factory GetUserInfoResp({
    $0.ResponseHeader? header,
    $core.String? userId,
    $fixnum.Int64? registerTime,
    $core.String? nickname,
    $core.String? avatar,
    $core.Map<$core.String, $core.String>? profileMap,
  }) {
    final _result = create();
    if (header != null) {
      _result.header = header;
    }
    if (userId != null) {
      _result.userId = userId;
    }
    if (registerTime != null) {
      _result.registerTime = registerTime;
    }
    if (nickname != null) {
      _result.nickname = nickname;
    }
    if (avatar != null) {
      _result.avatar = avatar;
    }
    if (profileMap != null) {
      _result.profileMap.addAll(profileMap);
    }
    return _result;
  }
  factory GetUserInfoResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetUserInfoResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetUserInfoResp clone() => GetUserInfoResp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetUserInfoResp copyWith(void Function(GetUserInfoResp) updates) => super.copyWith((message) => updates(message as GetUserInfoResp)) as GetUserInfoResp; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetUserInfoResp create() => GetUserInfoResp._();
  GetUserInfoResp createEmptyInstance() => create();
  static $pb.PbList<GetUserInfoResp> createRepeated() => $pb.PbList<GetUserInfoResp>();
  @$core.pragma('dart2js:noInline')
  static GetUserInfoResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetUserInfoResp>(create);
  static GetUserInfoResp? _defaultInstance;

  @$pb.TagNumber(1)
  $0.ResponseHeader get header => $_getN(0);
  @$pb.TagNumber(1)
  set header($0.ResponseHeader v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasHeader() => $_has(0);
  @$pb.TagNumber(1)
  void clearHeader() => clearField(1);
  @$pb.TagNumber(1)
  $0.ResponseHeader ensureHeader() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get userId => $_getSZ(1);
  @$pb.TagNumber(2)
  set userId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasUserId() => $_has(1);
  @$pb.TagNumber(2)
  void clearUserId() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get registerTime => $_getI64(2);
  @$pb.TagNumber(3)
  set registerTime($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasRegisterTime() => $_has(2);
  @$pb.TagNumber(3)
  void clearRegisterTime() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get nickname => $_getSZ(3);
  @$pb.TagNumber(4)
  set nickname($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasNickname() => $_has(3);
  @$pb.TagNumber(4)
  void clearNickname() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get avatar => $_getSZ(4);
  @$pb.TagNumber(5)
  set avatar($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasAvatar() => $_has(4);
  @$pb.TagNumber(5)
  void clearAvatar() => clearField(5);

  @$pb.TagNumber(6)
  $core.Map<$core.String, $core.String> get profileMap => $_getMap(5);
}

class ResetUserAccountMapReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ResetUserAccountMapReq', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pb'), createEmptyInstance: create)
    ..aOM<$0.RequestHeader>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'header', subBuilder: $0.RequestHeader.create)
    ..m<$core.String, $core.String>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accountMap', protoName: 'accountMap', entryClassName: 'ResetUserAccountMapReq.AccountMapEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OS, packageName: const $pb.PackageName('pb'))
    ..m<$core.String, $core.String>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'verifyMap', protoName: 'verifyMap', entryClassName: 'ResetUserAccountMapReq.VerifyMapEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OS, packageName: const $pb.PackageName('pb'))
    ..hasRequiredFields = false
  ;

  ResetUserAccountMapReq._() : super();
  factory ResetUserAccountMapReq({
    $0.RequestHeader? header,
    $core.Map<$core.String, $core.String>? accountMap,
    $core.Map<$core.String, $core.String>? verifyMap,
  }) {
    final _result = create();
    if (header != null) {
      _result.header = header;
    }
    if (accountMap != null) {
      _result.accountMap.addAll(accountMap);
    }
    if (verifyMap != null) {
      _result.verifyMap.addAll(verifyMap);
    }
    return _result;
  }
  factory ResetUserAccountMapReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ResetUserAccountMapReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ResetUserAccountMapReq clone() => ResetUserAccountMapReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ResetUserAccountMapReq copyWith(void Function(ResetUserAccountMapReq) updates) => super.copyWith((message) => updates(message as ResetUserAccountMapReq)) as ResetUserAccountMapReq; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ResetUserAccountMapReq create() => ResetUserAccountMapReq._();
  ResetUserAccountMapReq createEmptyInstance() => create();
  static $pb.PbList<ResetUserAccountMapReq> createRepeated() => $pb.PbList<ResetUserAccountMapReq>();
  @$core.pragma('dart2js:noInline')
  static ResetUserAccountMapReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ResetUserAccountMapReq>(create);
  static ResetUserAccountMapReq? _defaultInstance;

  @$pb.TagNumber(1)
  $0.RequestHeader get header => $_getN(0);
  @$pb.TagNumber(1)
  set header($0.RequestHeader v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasHeader() => $_has(0);
  @$pb.TagNumber(1)
  void clearHeader() => clearField(1);
  @$pb.TagNumber(1)
  $0.RequestHeader ensureHeader() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.Map<$core.String, $core.String> get accountMap => $_getMap(1);

  @$pb.TagNumber(3)
  $core.Map<$core.String, $core.String> get verifyMap => $_getMap(2);
}

class ResetUserAccountMapResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ResetUserAccountMapResp', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pb'), createEmptyInstance: create)
    ..aOM<$0.ResponseHeader>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'header', subBuilder: $0.ResponseHeader.create)
    ..hasRequiredFields = false
  ;

  ResetUserAccountMapResp._() : super();
  factory ResetUserAccountMapResp({
    $0.ResponseHeader? header,
  }) {
    final _result = create();
    if (header != null) {
      _result.header = header;
    }
    return _result;
  }
  factory ResetUserAccountMapResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ResetUserAccountMapResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ResetUserAccountMapResp clone() => ResetUserAccountMapResp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ResetUserAccountMapResp copyWith(void Function(ResetUserAccountMapResp) updates) => super.copyWith((message) => updates(message as ResetUserAccountMapResp)) as ResetUserAccountMapResp; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ResetUserAccountMapResp create() => ResetUserAccountMapResp._();
  ResetUserAccountMapResp createEmptyInstance() => create();
  static $pb.PbList<ResetUserAccountMapResp> createRepeated() => $pb.PbList<ResetUserAccountMapResp>();
  @$core.pragma('dart2js:noInline')
  static ResetUserAccountMapResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ResetUserAccountMapResp>(create);
  static ResetUserAccountMapResp? _defaultInstance;

  @$pb.TagNumber(1)
  $0.ResponseHeader get header => $_getN(0);
  @$pb.TagNumber(1)
  set header($0.ResponseHeader v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasHeader() => $_has(0);
  @$pb.TagNumber(1)
  void clearHeader() => clearField(1);
  @$pb.TagNumber(1)
  $0.ResponseHeader ensureHeader() => $_ensure(0);
}

class UserAfterOnlineReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UserAfterOnlineReq', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pb'), createEmptyInstance: create)
    ..aOM<$0.RequestHeader>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'header', subBuilder: $0.RequestHeader.create)
    ..hasRequiredFields = false
  ;

  UserAfterOnlineReq._() : super();
  factory UserAfterOnlineReq({
    $0.RequestHeader? header,
  }) {
    final _result = create();
    if (header != null) {
      _result.header = header;
    }
    return _result;
  }
  factory UserAfterOnlineReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserAfterOnlineReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UserAfterOnlineReq clone() => UserAfterOnlineReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UserAfterOnlineReq copyWith(void Function(UserAfterOnlineReq) updates) => super.copyWith((message) => updates(message as UserAfterOnlineReq)) as UserAfterOnlineReq; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UserAfterOnlineReq create() => UserAfterOnlineReq._();
  UserAfterOnlineReq createEmptyInstance() => create();
  static $pb.PbList<UserAfterOnlineReq> createRepeated() => $pb.PbList<UserAfterOnlineReq>();
  @$core.pragma('dart2js:noInline')
  static UserAfterOnlineReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserAfterOnlineReq>(create);
  static UserAfterOnlineReq? _defaultInstance;

  @$pb.TagNumber(1)
  $0.RequestHeader get header => $_getN(0);
  @$pb.TagNumber(1)
  set header($0.RequestHeader v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasHeader() => $_has(0);
  @$pb.TagNumber(1)
  void clearHeader() => clearField(1);
  @$pb.TagNumber(1)
  $0.RequestHeader ensureHeader() => $_ensure(0);
}

class UserAfterOnlineResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UserAfterOnlineResp', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pb'), createEmptyInstance: create)
    ..aOM<$0.ResponseHeader>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'header', subBuilder: $0.ResponseHeader.create)
    ..hasRequiredFields = false
  ;

  UserAfterOnlineResp._() : super();
  factory UserAfterOnlineResp({
    $0.ResponseHeader? header,
  }) {
    final _result = create();
    if (header != null) {
      _result.header = header;
    }
    return _result;
  }
  factory UserAfterOnlineResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserAfterOnlineResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UserAfterOnlineResp clone() => UserAfterOnlineResp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UserAfterOnlineResp copyWith(void Function(UserAfterOnlineResp) updates) => super.copyWith((message) => updates(message as UserAfterOnlineResp)) as UserAfterOnlineResp; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UserAfterOnlineResp create() => UserAfterOnlineResp._();
  UserAfterOnlineResp createEmptyInstance() => create();
  static $pb.PbList<UserAfterOnlineResp> createRepeated() => $pb.PbList<UserAfterOnlineResp>();
  @$core.pragma('dart2js:noInline')
  static UserAfterOnlineResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserAfterOnlineResp>(create);
  static UserAfterOnlineResp? _defaultInstance;

  @$pb.TagNumber(1)
  $0.ResponseHeader get header => $_getN(0);
  @$pb.TagNumber(1)
  set header($0.ResponseHeader v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasHeader() => $_has(0);
  @$pb.TagNumber(1)
  void clearHeader() => clearField(1);
  @$pb.TagNumber(1)
  $0.ResponseHeader ensureHeader() => $_ensure(0);
}

class UserAfterOfflineReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UserAfterOfflineReq', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pb'), createEmptyInstance: create)
    ..aOM<$0.RequestHeader>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'header', subBuilder: $0.RequestHeader.create)
    ..hasRequiredFields = false
  ;

  UserAfterOfflineReq._() : super();
  factory UserAfterOfflineReq({
    $0.RequestHeader? header,
  }) {
    final _result = create();
    if (header != null) {
      _result.header = header;
    }
    return _result;
  }
  factory UserAfterOfflineReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserAfterOfflineReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UserAfterOfflineReq clone() => UserAfterOfflineReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UserAfterOfflineReq copyWith(void Function(UserAfterOfflineReq) updates) => super.copyWith((message) => updates(message as UserAfterOfflineReq)) as UserAfterOfflineReq; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UserAfterOfflineReq create() => UserAfterOfflineReq._();
  UserAfterOfflineReq createEmptyInstance() => create();
  static $pb.PbList<UserAfterOfflineReq> createRepeated() => $pb.PbList<UserAfterOfflineReq>();
  @$core.pragma('dart2js:noInline')
  static UserAfterOfflineReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserAfterOfflineReq>(create);
  static UserAfterOfflineReq? _defaultInstance;

  @$pb.TagNumber(1)
  $0.RequestHeader get header => $_getN(0);
  @$pb.TagNumber(1)
  set header($0.RequestHeader v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasHeader() => $_has(0);
  @$pb.TagNumber(1)
  void clearHeader() => clearField(1);
  @$pb.TagNumber(1)
  $0.RequestHeader ensureHeader() => $_ensure(0);
}

class UserAfterOfflineResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UserAfterOfflineResp', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pb'), createEmptyInstance: create)
    ..aOM<$0.ResponseHeader>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'header', subBuilder: $0.ResponseHeader.create)
    ..hasRequiredFields = false
  ;

  UserAfterOfflineResp._() : super();
  factory UserAfterOfflineResp({
    $0.ResponseHeader? header,
  }) {
    final _result = create();
    if (header != null) {
      _result.header = header;
    }
    return _result;
  }
  factory UserAfterOfflineResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserAfterOfflineResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UserAfterOfflineResp clone() => UserAfterOfflineResp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UserAfterOfflineResp copyWith(void Function(UserAfterOfflineResp) updates) => super.copyWith((message) => updates(message as UserAfterOfflineResp)) as UserAfterOfflineResp; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UserAfterOfflineResp create() => UserAfterOfflineResp._();
  UserAfterOfflineResp createEmptyInstance() => create();
  static $pb.PbList<UserAfterOfflineResp> createRepeated() => $pb.PbList<UserAfterOfflineResp>();
  @$core.pragma('dart2js:noInline')
  static UserAfterOfflineResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserAfterOfflineResp>(create);
  static UserAfterOfflineResp? _defaultInstance;

  @$pb.TagNumber(1)
  $0.ResponseHeader get header => $_getN(0);
  @$pb.TagNumber(1)
  set header($0.ResponseHeader v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasHeader() => $_has(0);
  @$pb.TagNumber(1)
  void clearHeader() => clearField(1);
  @$pb.TagNumber(1)
  $0.ResponseHeader ensureHeader() => $_ensure(0);
}

class UserBeforeConnectReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UserBeforeConnectReq', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pb'), createEmptyInstance: create)
    ..aOM<$0.RequestHeader>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'header', subBuilder: $0.RequestHeader.create)
    ..hasRequiredFields = false
  ;

  UserBeforeConnectReq._() : super();
  factory UserBeforeConnectReq({
    $0.RequestHeader? header,
  }) {
    final _result = create();
    if (header != null) {
      _result.header = header;
    }
    return _result;
  }
  factory UserBeforeConnectReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserBeforeConnectReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UserBeforeConnectReq clone() => UserBeforeConnectReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UserBeforeConnectReq copyWith(void Function(UserBeforeConnectReq) updates) => super.copyWith((message) => updates(message as UserBeforeConnectReq)) as UserBeforeConnectReq; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UserBeforeConnectReq create() => UserBeforeConnectReq._();
  UserBeforeConnectReq createEmptyInstance() => create();
  static $pb.PbList<UserBeforeConnectReq> createRepeated() => $pb.PbList<UserBeforeConnectReq>();
  @$core.pragma('dart2js:noInline')
  static UserBeforeConnectReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserBeforeConnectReq>(create);
  static UserBeforeConnectReq? _defaultInstance;

  @$pb.TagNumber(1)
  $0.RequestHeader get header => $_getN(0);
  @$pb.TagNumber(1)
  set header($0.RequestHeader v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasHeader() => $_has(0);
  @$pb.TagNumber(1)
  void clearHeader() => clearField(1);
  @$pb.TagNumber(1)
  $0.RequestHeader ensureHeader() => $_ensure(0);
}

class UserBeforeConnectResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UserBeforeConnectResp', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pb'), createEmptyInstance: create)
    ..aOM<$0.ResponseHeader>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'header', subBuilder: $0.ResponseHeader.create)
    ..aOB(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'success')
    ..e<$0.WebsocketCustomCloseCode>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'closeCode', $pb.PbFieldType.OE, protoName: 'closeCode', defaultOrMaker: $0.WebsocketCustomCloseCode.CloseCodeZero, valueOf: $0.WebsocketCustomCloseCode.valueOf, enumValues: $0.WebsocketCustomCloseCode.values)
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'closeReason', protoName: 'closeReason')
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'userId', protoName: 'userId')
    ..hasRequiredFields = false
  ;

  UserBeforeConnectResp._() : super();
  factory UserBeforeConnectResp({
    $0.ResponseHeader? header,
    $core.bool? success,
    $0.WebsocketCustomCloseCode? closeCode,
    $core.String? closeReason,
    $core.String? userId,
  }) {
    final _result = create();
    if (header != null) {
      _result.header = header;
    }
    if (success != null) {
      _result.success = success;
    }
    if (closeCode != null) {
      _result.closeCode = closeCode;
    }
    if (closeReason != null) {
      _result.closeReason = closeReason;
    }
    if (userId != null) {
      _result.userId = userId;
    }
    return _result;
  }
  factory UserBeforeConnectResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserBeforeConnectResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UserBeforeConnectResp clone() => UserBeforeConnectResp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UserBeforeConnectResp copyWith(void Function(UserBeforeConnectResp) updates) => super.copyWith((message) => updates(message as UserBeforeConnectResp)) as UserBeforeConnectResp; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UserBeforeConnectResp create() => UserBeforeConnectResp._();
  UserBeforeConnectResp createEmptyInstance() => create();
  static $pb.PbList<UserBeforeConnectResp> createRepeated() => $pb.PbList<UserBeforeConnectResp>();
  @$core.pragma('dart2js:noInline')
  static UserBeforeConnectResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserBeforeConnectResp>(create);
  static UserBeforeConnectResp? _defaultInstance;

  @$pb.TagNumber(1)
  $0.ResponseHeader get header => $_getN(0);
  @$pb.TagNumber(1)
  set header($0.ResponseHeader v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasHeader() => $_has(0);
  @$pb.TagNumber(1)
  void clearHeader() => clearField(1);
  @$pb.TagNumber(1)
  $0.ResponseHeader ensureHeader() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.bool get success => $_getBF(1);
  @$pb.TagNumber(2)
  set success($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSuccess() => $_has(1);
  @$pb.TagNumber(2)
  void clearSuccess() => clearField(2);

  @$pb.TagNumber(3)
  $0.WebsocketCustomCloseCode get closeCode => $_getN(2);
  @$pb.TagNumber(3)
  set closeCode($0.WebsocketCustomCloseCode v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasCloseCode() => $_has(2);
  @$pb.TagNumber(3)
  void clearCloseCode() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get closeReason => $_getSZ(3);
  @$pb.TagNumber(4)
  set closeReason($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasCloseReason() => $_has(3);
  @$pb.TagNumber(4)
  void clearCloseReason() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get userId => $_getSZ(4);
  @$pb.TagNumber(5)
  set userId($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasUserId() => $_has(4);
  @$pb.TagNumber(5)
  void clearUserId() => clearField(5);
}

class UserBeforeRequestReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UserBeforeRequestReq', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pb'), createEmptyInstance: create)
    ..aOM<$0.RequestHeader>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'header', subBuilder: $0.RequestHeader.create)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'path')
    ..hasRequiredFields = false
  ;

  UserBeforeRequestReq._() : super();
  factory UserBeforeRequestReq({
    $0.RequestHeader? header,
    $core.String? path,
  }) {
    final _result = create();
    if (header != null) {
      _result.header = header;
    }
    if (path != null) {
      _result.path = path;
    }
    return _result;
  }
  factory UserBeforeRequestReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserBeforeRequestReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UserBeforeRequestReq clone() => UserBeforeRequestReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UserBeforeRequestReq copyWith(void Function(UserBeforeRequestReq) updates) => super.copyWith((message) => updates(message as UserBeforeRequestReq)) as UserBeforeRequestReq; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UserBeforeRequestReq create() => UserBeforeRequestReq._();
  UserBeforeRequestReq createEmptyInstance() => create();
  static $pb.PbList<UserBeforeRequestReq> createRepeated() => $pb.PbList<UserBeforeRequestReq>();
  @$core.pragma('dart2js:noInline')
  static UserBeforeRequestReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserBeforeRequestReq>(create);
  static UserBeforeRequestReq? _defaultInstance;

  @$pb.TagNumber(1)
  $0.RequestHeader get header => $_getN(0);
  @$pb.TagNumber(1)
  set header($0.RequestHeader v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasHeader() => $_has(0);
  @$pb.TagNumber(1)
  void clearHeader() => clearField(1);
  @$pb.TagNumber(1)
  $0.RequestHeader ensureHeader() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get path => $_getSZ(1);
  @$pb.TagNumber(2)
  set path($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPath() => $_has(1);
  @$pb.TagNumber(2)
  void clearPath() => clearField(2);
}

class UserBeforeRequestResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UserBeforeRequestResp', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pb'), createEmptyInstance: create)
    ..aOM<$0.ResponseHeader>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'header', subBuilder: $0.ResponseHeader.create)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'userId', protoName: 'userId')
    ..hasRequiredFields = false
  ;

  UserBeforeRequestResp._() : super();
  factory UserBeforeRequestResp({
    $0.ResponseHeader? header,
    $core.String? userId,
  }) {
    final _result = create();
    if (header != null) {
      _result.header = header;
    }
    if (userId != null) {
      _result.userId = userId;
    }
    return _result;
  }
  factory UserBeforeRequestResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserBeforeRequestResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UserBeforeRequestResp clone() => UserBeforeRequestResp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UserBeforeRequestResp copyWith(void Function(UserBeforeRequestResp) updates) => super.copyWith((message) => updates(message as UserBeforeRequestResp)) as UserBeforeRequestResp; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UserBeforeRequestResp create() => UserBeforeRequestResp._();
  UserBeforeRequestResp createEmptyInstance() => create();
  static $pb.PbList<UserBeforeRequestResp> createRepeated() => $pb.PbList<UserBeforeRequestResp>();
  @$core.pragma('dart2js:noInline')
  static UserBeforeRequestResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserBeforeRequestResp>(create);
  static UserBeforeRequestResp? _defaultInstance;

  @$pb.TagNumber(1)
  $0.ResponseHeader get header => $_getN(0);
  @$pb.TagNumber(1)
  set header($0.ResponseHeader v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasHeader() => $_has(0);
  @$pb.TagNumber(1)
  void clearHeader() => clearField(1);
  @$pb.TagNumber(1)
  $0.ResponseHeader ensureHeader() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get userId => $_getSZ(1);
  @$pb.TagNumber(2)
  set userId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasUserId() => $_has(1);
  @$pb.TagNumber(2)
  void clearUserId() => clearField(2);
}

class UserAfterKeepAliveReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UserAfterKeepAliveReq', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pb'), createEmptyInstance: create)
    ..aOM<$0.RequestHeader>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'header', subBuilder: $0.RequestHeader.create)
    ..hasRequiredFields = false
  ;

  UserAfterKeepAliveReq._() : super();
  factory UserAfterKeepAliveReq({
    $0.RequestHeader? header,
  }) {
    final _result = create();
    if (header != null) {
      _result.header = header;
    }
    return _result;
  }
  factory UserAfterKeepAliveReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserAfterKeepAliveReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UserAfterKeepAliveReq clone() => UserAfterKeepAliveReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UserAfterKeepAliveReq copyWith(void Function(UserAfterKeepAliveReq) updates) => super.copyWith((message) => updates(message as UserAfterKeepAliveReq)) as UserAfterKeepAliveReq; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UserAfterKeepAliveReq create() => UserAfterKeepAliveReq._();
  UserAfterKeepAliveReq createEmptyInstance() => create();
  static $pb.PbList<UserAfterKeepAliveReq> createRepeated() => $pb.PbList<UserAfterKeepAliveReq>();
  @$core.pragma('dart2js:noInline')
  static UserAfterKeepAliveReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserAfterKeepAliveReq>(create);
  static UserAfterKeepAliveReq? _defaultInstance;

  @$pb.TagNumber(1)
  $0.RequestHeader get header => $_getN(0);
  @$pb.TagNumber(1)
  set header($0.RequestHeader v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasHeader() => $_has(0);
  @$pb.TagNumber(1)
  void clearHeader() => clearField(1);
  @$pb.TagNumber(1)
  $0.RequestHeader ensureHeader() => $_ensure(0);
}

class UserAfterKeepAliveResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UserAfterKeepAliveResp', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pb'), createEmptyInstance: create)
    ..aOM<$0.ResponseHeader>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'header', subBuilder: $0.ResponseHeader.create)
    ..hasRequiredFields = false
  ;

  UserAfterKeepAliveResp._() : super();
  factory UserAfterKeepAliveResp({
    $0.ResponseHeader? header,
  }) {
    final _result = create();
    if (header != null) {
      _result.header = header;
    }
    return _result;
  }
  factory UserAfterKeepAliveResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserAfterKeepAliveResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UserAfterKeepAliveResp clone() => UserAfterKeepAliveResp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UserAfterKeepAliveResp copyWith(void Function(UserAfterKeepAliveResp) updates) => super.copyWith((message) => updates(message as UserAfterKeepAliveResp)) as UserAfterKeepAliveResp; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UserAfterKeepAliveResp create() => UserAfterKeepAliveResp._();
  UserAfterKeepAliveResp createEmptyInstance() => create();
  static $pb.PbList<UserAfterKeepAliveResp> createRepeated() => $pb.PbList<UserAfterKeepAliveResp>();
  @$core.pragma('dart2js:noInline')
  static UserAfterKeepAliveResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserAfterKeepAliveResp>(create);
  static UserAfterKeepAliveResp? _defaultInstance;

  @$pb.TagNumber(1)
  $0.ResponseHeader get header => $_getN(0);
  @$pb.TagNumber(1)
  set header($0.ResponseHeader v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasHeader() => $_has(0);
  @$pb.TagNumber(1)
  void clearHeader() => clearField(1);
  @$pb.TagNumber(1)
  $0.ResponseHeader ensureHeader() => $_ensure(0);
}

class CreateRobotReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CreateRobotReq', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pb'), createEmptyInstance: create)
    ..aOM<$0.RequestHeader>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'header', subBuilder: $0.RequestHeader.create)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'robotId', protoName: 'robotId')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'nickname')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'avatar')
    ..hasRequiredFields = false
  ;

  CreateRobotReq._() : super();
  factory CreateRobotReq({
    $0.RequestHeader? header,
    $core.String? robotId,
    $core.String? nickname,
    $core.String? avatar,
  }) {
    final _result = create();
    if (header != null) {
      _result.header = header;
    }
    if (robotId != null) {
      _result.robotId = robotId;
    }
    if (nickname != null) {
      _result.nickname = nickname;
    }
    if (avatar != null) {
      _result.avatar = avatar;
    }
    return _result;
  }
  factory CreateRobotReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateRobotReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreateRobotReq clone() => CreateRobotReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreateRobotReq copyWith(void Function(CreateRobotReq) updates) => super.copyWith((message) => updates(message as CreateRobotReq)) as CreateRobotReq; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CreateRobotReq create() => CreateRobotReq._();
  CreateRobotReq createEmptyInstance() => create();
  static $pb.PbList<CreateRobotReq> createRepeated() => $pb.PbList<CreateRobotReq>();
  @$core.pragma('dart2js:noInline')
  static CreateRobotReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateRobotReq>(create);
  static CreateRobotReq? _defaultInstance;

  @$pb.TagNumber(1)
  $0.RequestHeader get header => $_getN(0);
  @$pb.TagNumber(1)
  set header($0.RequestHeader v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasHeader() => $_has(0);
  @$pb.TagNumber(1)
  void clearHeader() => clearField(1);
  @$pb.TagNumber(1)
  $0.RequestHeader ensureHeader() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get robotId => $_getSZ(1);
  @$pb.TagNumber(2)
  set robotId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasRobotId() => $_has(1);
  @$pb.TagNumber(2)
  void clearRobotId() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get nickname => $_getSZ(2);
  @$pb.TagNumber(3)
  set nickname($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasNickname() => $_has(2);
  @$pb.TagNumber(3)
  void clearNickname() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get avatar => $_getSZ(3);
  @$pb.TagNumber(4)
  set avatar($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasAvatar() => $_has(3);
  @$pb.TagNumber(4)
  void clearAvatar() => clearField(4);
}

class CreateRobotResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CreateRobotResp', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pb'), createEmptyInstance: create)
    ..aOM<$0.ResponseHeader>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'header', subBuilder: $0.ResponseHeader.create)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accessToken', protoName: 'accessToken')
    ..hasRequiredFields = false
  ;

  CreateRobotResp._() : super();
  factory CreateRobotResp({
    $0.ResponseHeader? header,
    $core.String? accessToken,
  }) {
    final _result = create();
    if (header != null) {
      _result.header = header;
    }
    if (accessToken != null) {
      _result.accessToken = accessToken;
    }
    return _result;
  }
  factory CreateRobotResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateRobotResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreateRobotResp clone() => CreateRobotResp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreateRobotResp copyWith(void Function(CreateRobotResp) updates) => super.copyWith((message) => updates(message as CreateRobotResp)) as CreateRobotResp; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CreateRobotResp create() => CreateRobotResp._();
  CreateRobotResp createEmptyInstance() => create();
  static $pb.PbList<CreateRobotResp> createRepeated() => $pb.PbList<CreateRobotResp>();
  @$core.pragma('dart2js:noInline')
  static CreateRobotResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateRobotResp>(create);
  static CreateRobotResp? _defaultInstance;

  @$pb.TagNumber(1)
  $0.ResponseHeader get header => $_getN(0);
  @$pb.TagNumber(1)
  set header($0.ResponseHeader v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasHeader() => $_has(0);
  @$pb.TagNumber(1)
  void clearHeader() => clearField(1);
  @$pb.TagNumber(1)
  $0.ResponseHeader ensureHeader() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get accessToken => $_getSZ(1);
  @$pb.TagNumber(2)
  set accessToken($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAccessToken() => $_has(1);
  @$pb.TagNumber(2)
  void clearAccessToken() => clearField(2);
}

class GetUserModelByIdReq_Opt extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetUserModelByIdReq.Opt', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pb'), createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'withUserSettings', protoName: 'withUserSettings')
    ..pPS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'userSettingKeys', protoName: 'userSettingKeys')
    ..hasRequiredFields = false
  ;

  GetUserModelByIdReq_Opt._() : super();
  factory GetUserModelByIdReq_Opt({
    $core.bool? withUserSettings,
    $core.Iterable<$core.String>? userSettingKeys,
  }) {
    final _result = create();
    if (withUserSettings != null) {
      _result.withUserSettings = withUserSettings;
    }
    if (userSettingKeys != null) {
      _result.userSettingKeys.addAll(userSettingKeys);
    }
    return _result;
  }
  factory GetUserModelByIdReq_Opt.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetUserModelByIdReq_Opt.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetUserModelByIdReq_Opt clone() => GetUserModelByIdReq_Opt()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetUserModelByIdReq_Opt copyWith(void Function(GetUserModelByIdReq_Opt) updates) => super.copyWith((message) => updates(message as GetUserModelByIdReq_Opt)) as GetUserModelByIdReq_Opt; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetUserModelByIdReq_Opt create() => GetUserModelByIdReq_Opt._();
  GetUserModelByIdReq_Opt createEmptyInstance() => create();
  static $pb.PbList<GetUserModelByIdReq_Opt> createRepeated() => $pb.PbList<GetUserModelByIdReq_Opt>();
  @$core.pragma('dart2js:noInline')
  static GetUserModelByIdReq_Opt getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetUserModelByIdReq_Opt>(create);
  static GetUserModelByIdReq_Opt? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get withUserSettings => $_getBF(0);
  @$pb.TagNumber(1)
  set withUserSettings($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasWithUserSettings() => $_has(0);
  @$pb.TagNumber(1)
  void clearWithUserSettings() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.String> get userSettingKeys => $_getList(1);
}

class GetUserModelByIdReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetUserModelByIdReq', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pb'), createEmptyInstance: create)
    ..aOM<$0.RequestHeader>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'header', subBuilder: $0.RequestHeader.create)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'userId', protoName: 'userId')
    ..aOM<GetUserModelByIdReq_Opt>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'opt', subBuilder: GetUserModelByIdReq_Opt.create)
    ..hasRequiredFields = false
  ;

  GetUserModelByIdReq._() : super();
  factory GetUserModelByIdReq({
    $0.RequestHeader? header,
    $core.String? userId,
    GetUserModelByIdReq_Opt? opt,
  }) {
    final _result = create();
    if (header != null) {
      _result.header = header;
    }
    if (userId != null) {
      _result.userId = userId;
    }
    if (opt != null) {
      _result.opt = opt;
    }
    return _result;
  }
  factory GetUserModelByIdReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetUserModelByIdReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetUserModelByIdReq clone() => GetUserModelByIdReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetUserModelByIdReq copyWith(void Function(GetUserModelByIdReq) updates) => super.copyWith((message) => updates(message as GetUserModelByIdReq)) as GetUserModelByIdReq; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetUserModelByIdReq create() => GetUserModelByIdReq._();
  GetUserModelByIdReq createEmptyInstance() => create();
  static $pb.PbList<GetUserModelByIdReq> createRepeated() => $pb.PbList<GetUserModelByIdReq>();
  @$core.pragma('dart2js:noInline')
  static GetUserModelByIdReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetUserModelByIdReq>(create);
  static GetUserModelByIdReq? _defaultInstance;

  @$pb.TagNumber(1)
  $0.RequestHeader get header => $_getN(0);
  @$pb.TagNumber(1)
  set header($0.RequestHeader v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasHeader() => $_has(0);
  @$pb.TagNumber(1)
  void clearHeader() => clearField(1);
  @$pb.TagNumber(1)
  $0.RequestHeader ensureHeader() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get userId => $_getSZ(1);
  @$pb.TagNumber(2)
  set userId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasUserId() => $_has(1);
  @$pb.TagNumber(2)
  void clearUserId() => clearField(2);

  @$pb.TagNumber(3)
  GetUserModelByIdReq_Opt get opt => $_getN(2);
  @$pb.TagNumber(3)
  set opt(GetUserModelByIdReq_Opt v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasOpt() => $_has(2);
  @$pb.TagNumber(3)
  void clearOpt() => clearField(3);
  @$pb.TagNumber(3)
  GetUserModelByIdReq_Opt ensureOpt() => $_ensure(2);
}

class GetUserModelByIdResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetUserModelByIdResp', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pb'), createEmptyInstance: create)
    ..aOM<$0.ResponseHeader>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'header', subBuilder: $0.ResponseHeader.create)
    ..a<$core.List<$core.int>>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'userModelJson', $pb.PbFieldType.OY, protoName: 'userModelJson')
    ..a<$core.List<$core.int>>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'userSettingsJson', $pb.PbFieldType.OY, protoName: 'userSettingsJson')
    ..hasRequiredFields = false
  ;

  GetUserModelByIdResp._() : super();
  factory GetUserModelByIdResp({
    $0.ResponseHeader? header,
    $core.List<$core.int>? userModelJson,
    $core.List<$core.int>? userSettingsJson,
  }) {
    final _result = create();
    if (header != null) {
      _result.header = header;
    }
    if (userModelJson != null) {
      _result.userModelJson = userModelJson;
    }
    if (userSettingsJson != null) {
      _result.userSettingsJson = userSettingsJson;
    }
    return _result;
  }
  factory GetUserModelByIdResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetUserModelByIdResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetUserModelByIdResp clone() => GetUserModelByIdResp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetUserModelByIdResp copyWith(void Function(GetUserModelByIdResp) updates) => super.copyWith((message) => updates(message as GetUserModelByIdResp)) as GetUserModelByIdResp; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetUserModelByIdResp create() => GetUserModelByIdResp._();
  GetUserModelByIdResp createEmptyInstance() => create();
  static $pb.PbList<GetUserModelByIdResp> createRepeated() => $pb.PbList<GetUserModelByIdResp>();
  @$core.pragma('dart2js:noInline')
  static GetUserModelByIdResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetUserModelByIdResp>(create);
  static GetUserModelByIdResp? _defaultInstance;

  @$pb.TagNumber(1)
  $0.ResponseHeader get header => $_getN(0);
  @$pb.TagNumber(1)
  set header($0.ResponseHeader v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasHeader() => $_has(0);
  @$pb.TagNumber(1)
  void clearHeader() => clearField(1);
  @$pb.TagNumber(1)
  $0.ResponseHeader ensureHeader() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.List<$core.int> get userModelJson => $_getN(1);
  @$pb.TagNumber(2)
  set userModelJson($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasUserModelJson() => $_has(1);
  @$pb.TagNumber(2)
  void clearUserModelJson() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$core.int> get userSettingsJson => $_getN(2);
  @$pb.TagNumber(3)
  set userSettingsJson($core.List<$core.int> v) { $_setBytes(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasUserSettingsJson() => $_has(2);
  @$pb.TagNumber(3)
  void clearUserSettingsJson() => clearField(3);
}

class GetUserModelByIdsReq_Opt extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetUserModelByIdsReq.Opt', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pb'), createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'withUserSettings', protoName: 'withUserSettings')
    ..pPS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'userSettingKeys', protoName: 'userSettingKeys')
    ..hasRequiredFields = false
  ;

  GetUserModelByIdsReq_Opt._() : super();
  factory GetUserModelByIdsReq_Opt({
    $core.bool? withUserSettings,
    $core.Iterable<$core.String>? userSettingKeys,
  }) {
    final _result = create();
    if (withUserSettings != null) {
      _result.withUserSettings = withUserSettings;
    }
    if (userSettingKeys != null) {
      _result.userSettingKeys.addAll(userSettingKeys);
    }
    return _result;
  }
  factory GetUserModelByIdsReq_Opt.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetUserModelByIdsReq_Opt.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetUserModelByIdsReq_Opt clone() => GetUserModelByIdsReq_Opt()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetUserModelByIdsReq_Opt copyWith(void Function(GetUserModelByIdsReq_Opt) updates) => super.copyWith((message) => updates(message as GetUserModelByIdsReq_Opt)) as GetUserModelByIdsReq_Opt; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetUserModelByIdsReq_Opt create() => GetUserModelByIdsReq_Opt._();
  GetUserModelByIdsReq_Opt createEmptyInstance() => create();
  static $pb.PbList<GetUserModelByIdsReq_Opt> createRepeated() => $pb.PbList<GetUserModelByIdsReq_Opt>();
  @$core.pragma('dart2js:noInline')
  static GetUserModelByIdsReq_Opt getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetUserModelByIdsReq_Opt>(create);
  static GetUserModelByIdsReq_Opt? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get withUserSettings => $_getBF(0);
  @$pb.TagNumber(1)
  set withUserSettings($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasWithUserSettings() => $_has(0);
  @$pb.TagNumber(1)
  void clearWithUserSettings() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.String> get userSettingKeys => $_getList(1);
}

class GetUserModelByIdsReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetUserModelByIdsReq', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pb'), createEmptyInstance: create)
    ..aOM<$0.RequestHeader>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'header', subBuilder: $0.RequestHeader.create)
    ..pPS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'userIds', protoName: 'userIds')
    ..aOM<GetUserModelByIdsReq_Opt>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'opt', subBuilder: GetUserModelByIdsReq_Opt.create)
    ..hasRequiredFields = false
  ;

  GetUserModelByIdsReq._() : super();
  factory GetUserModelByIdsReq({
    $0.RequestHeader? header,
    $core.Iterable<$core.String>? userIds,
    GetUserModelByIdsReq_Opt? opt,
  }) {
    final _result = create();
    if (header != null) {
      _result.header = header;
    }
    if (userIds != null) {
      _result.userIds.addAll(userIds);
    }
    if (opt != null) {
      _result.opt = opt;
    }
    return _result;
  }
  factory GetUserModelByIdsReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetUserModelByIdsReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetUserModelByIdsReq clone() => GetUserModelByIdsReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetUserModelByIdsReq copyWith(void Function(GetUserModelByIdsReq) updates) => super.copyWith((message) => updates(message as GetUserModelByIdsReq)) as GetUserModelByIdsReq; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetUserModelByIdsReq create() => GetUserModelByIdsReq._();
  GetUserModelByIdsReq createEmptyInstance() => create();
  static $pb.PbList<GetUserModelByIdsReq> createRepeated() => $pb.PbList<GetUserModelByIdsReq>();
  @$core.pragma('dart2js:noInline')
  static GetUserModelByIdsReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetUserModelByIdsReq>(create);
  static GetUserModelByIdsReq? _defaultInstance;

  @$pb.TagNumber(1)
  $0.RequestHeader get header => $_getN(0);
  @$pb.TagNumber(1)
  set header($0.RequestHeader v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasHeader() => $_has(0);
  @$pb.TagNumber(1)
  void clearHeader() => clearField(1);
  @$pb.TagNumber(1)
  $0.RequestHeader ensureHeader() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.List<$core.String> get userIds => $_getList(1);

  @$pb.TagNumber(3)
  GetUserModelByIdsReq_Opt get opt => $_getN(2);
  @$pb.TagNumber(3)
  set opt(GetUserModelByIdsReq_Opt v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasOpt() => $_has(2);
  @$pb.TagNumber(3)
  void clearOpt() => clearField(3);
  @$pb.TagNumber(3)
  GetUserModelByIdsReq_Opt ensureOpt() => $_ensure(2);
}

class GetUserModelByIdsResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetUserModelByIdsResp', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pb'), createEmptyInstance: create)
    ..aOM<$0.ResponseHeader>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'header', subBuilder: $0.ResponseHeader.create)
    ..m<$core.String, $core.List<$core.int>>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'userModelJsons', protoName: 'userModelJsons', entryClassName: 'GetUserModelByIdsResp.UserModelJsonsEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OY, packageName: const $pb.PackageName('pb'))
    ..m<$core.String, $core.List<$core.int>>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'userSettingsJsons', protoName: 'userSettingsJsons', entryClassName: 'GetUserModelByIdsResp.UserSettingsJsonsEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OY, packageName: const $pb.PackageName('pb'))
    ..hasRequiredFields = false
  ;

  GetUserModelByIdsResp._() : super();
  factory GetUserModelByIdsResp({
    $0.ResponseHeader? header,
    $core.Map<$core.String, $core.List<$core.int>>? userModelJsons,
    $core.Map<$core.String, $core.List<$core.int>>? userSettingsJsons,
  }) {
    final _result = create();
    if (header != null) {
      _result.header = header;
    }
    if (userModelJsons != null) {
      _result.userModelJsons.addAll(userModelJsons);
    }
    if (userSettingsJsons != null) {
      _result.userSettingsJsons.addAll(userSettingsJsons);
    }
    return _result;
  }
  factory GetUserModelByIdsResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetUserModelByIdsResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetUserModelByIdsResp clone() => GetUserModelByIdsResp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetUserModelByIdsResp copyWith(void Function(GetUserModelByIdsResp) updates) => super.copyWith((message) => updates(message as GetUserModelByIdsResp)) as GetUserModelByIdsResp; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetUserModelByIdsResp create() => GetUserModelByIdsResp._();
  GetUserModelByIdsResp createEmptyInstance() => create();
  static $pb.PbList<GetUserModelByIdsResp> createRepeated() => $pb.PbList<GetUserModelByIdsResp>();
  @$core.pragma('dart2js:noInline')
  static GetUserModelByIdsResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetUserModelByIdsResp>(create);
  static GetUserModelByIdsResp? _defaultInstance;

  @$pb.TagNumber(1)
  $0.ResponseHeader get header => $_getN(0);
  @$pb.TagNumber(1)
  set header($0.ResponseHeader v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasHeader() => $_has(0);
  @$pb.TagNumber(1)
  void clearHeader() => clearField(1);
  @$pb.TagNumber(1)
  $0.ResponseHeader ensureHeader() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.Map<$core.String, $core.List<$core.int>> get userModelJsons => $_getMap(1);

  @$pb.TagNumber(3)
  $core.Map<$core.String, $core.List<$core.int>> get userSettingsJsons => $_getMap(2);
}

class accountServiceApi {
  $pb.RpcClient _client;
  accountServiceApi(this._client);

  $async.Future<UserRegisterResp> userRegister($pb.ClientContext? ctx, UserRegisterReq request) {
    var emptyResponse = UserRegisterResp();
    return _client.invoke<UserRegisterResp>(ctx, 'accountService', 'UserRegister', request, emptyResponse);
  }
  $async.Future<UserDestroyResp> userDestroy($pb.ClientContext? ctx, UserDestroyReq request) {
    var emptyResponse = UserDestroyResp();
    return _client.invoke<UserDestroyResp>(ctx, 'accountService', 'UserDestroy', request, emptyResponse);
  }
  $async.Future<UserAccessTokenResp> userAccessToken($pb.ClientContext? ctx, UserAccessTokenReq request) {
    var emptyResponse = UserAccessTokenResp();
    return _client.invoke<UserAccessTokenResp>(ctx, 'accountService', 'UserAccessToken', request, emptyResponse);
  }
  $async.Future<RefreshUserAccessTokenResp> refreshUserAccessToken($pb.ClientContext? ctx, RefreshUserAccessTokenReq request) {
    var emptyResponse = RefreshUserAccessTokenResp();
    return _client.invoke<RefreshUserAccessTokenResp>(ctx, 'accountService', 'RefreshUserAccessToken', request, emptyResponse);
  }
  $async.Future<RevokeUserAccessTokenResp> revokeUserAccessToken($pb.ClientContext? ctx, RevokeUserAccessTokenReq request) {
    var emptyResponse = RevokeUserAccessTokenResp();
    return _client.invoke<RevokeUserAccessTokenResp>(ctx, 'accountService', 'RevokeUserAccessToken', request, emptyResponse);
  }
  $async.Future<UpdateUserAccountMapResp> updateUserAccountMap($pb.ClientContext? ctx, UpdateUserAccountMapReq request) {
    var emptyResponse = UpdateUserAccountMapResp();
    return _client.invoke<UpdateUserAccountMapResp>(ctx, 'accountService', 'UpdateUserAccountMap', request, emptyResponse);
  }
  $async.Future<ResetUserAccountMapResp> resetUserAccountMap($pb.ClientContext? ctx, ResetUserAccountMapReq request) {
    var emptyResponse = ResetUserAccountMapResp();
    return _client.invoke<ResetUserAccountMapResp>(ctx, 'accountService', 'ResetUserAccountMap', request, emptyResponse);
  }
  $async.Future<CreateRobotResp> createRobot($pb.ClientContext? ctx, CreateRobotReq request) {
    var emptyResponse = CreateRobotResp();
    return _client.invoke<CreateRobotResp>(ctx, 'accountService', 'CreateRobot', request, emptyResponse);
  }
}

class infoServiceApi {
  $pb.RpcClient _client;
  infoServiceApi(this._client);

  $async.Future<UpdateUserProfileMapResp> updateUserProfileMap($pb.ClientContext? ctx, UpdateUserProfileMapReq request) {
    var emptyResponse = UpdateUserProfileMapResp();
    return _client.invoke<UpdateUserProfileMapResp>(ctx, 'infoService', 'UpdateUserProfileMap', request, emptyResponse);
  }
  $async.Future<UpdateUserExtraMapResp> updateUserExtraMap($pb.ClientContext? ctx, UpdateUserExtraMapReq request) {
    var emptyResponse = UpdateUserExtraMapResp();
    return _client.invoke<UpdateUserExtraMapResp>(ctx, 'infoService', 'UpdateUserExtraMap', request, emptyResponse);
  }
  $async.Future<UpdateUserCountMapResp> updateUserCountMap($pb.ClientContext? ctx, UpdateUserCountMapReq request) {
    var emptyResponse = UpdateUserCountMapResp();
    return _client.invoke<UpdateUserCountMapResp>(ctx, 'infoService', 'UpdateUserCountMap', request, emptyResponse);
  }
  $async.Future<GetSelfUserInfoResp> getSelfUserInfo($pb.ClientContext? ctx, GetSelfUserInfoReq request) {
    var emptyResponse = GetSelfUserInfoResp();
    return _client.invoke<GetSelfUserInfoResp>(ctx, 'infoService', 'GetSelfUserInfo', request, emptyResponse);
  }
  $async.Future<GetUserInfoResp> getUserInfo($pb.ClientContext? ctx, GetUserInfoReq request) {
    var emptyResponse = GetUserInfoResp();
    return _client.invoke<GetUserInfoResp>(ctx, 'infoService', 'GetUserInfo', request, emptyResponse);
  }
  $async.Future<GetUserModelByIdResp> getUserModelById($pb.ClientContext? ctx, GetUserModelByIdReq request) {
    var emptyResponse = GetUserModelByIdResp();
    return _client.invoke<GetUserModelByIdResp>(ctx, 'infoService', 'GetUserModelById', request, emptyResponse);
  }
  $async.Future<GetUserModelByIdsResp> getUserModelByIds($pb.ClientContext? ctx, GetUserModelByIdsReq request) {
    var emptyResponse = GetUserModelByIdsResp();
    return _client.invoke<GetUserModelByIdsResp>(ctx, 'infoService', 'GetUserModelByIds', request, emptyResponse);
  }
}

class callbackServiceApi {
  $pb.RpcClient _client;
  callbackServiceApi(this._client);

  $async.Future<UserAfterOnlineResp> userAfterOnline($pb.ClientContext? ctx, UserAfterOnlineReq request) {
    var emptyResponse = UserAfterOnlineResp();
    return _client.invoke<UserAfterOnlineResp>(ctx, 'callbackService', 'UserAfterOnline', request, emptyResponse);
  }
  $async.Future<UserAfterOfflineResp> userAfterOffline($pb.ClientContext? ctx, UserAfterOfflineReq request) {
    var emptyResponse = UserAfterOfflineResp();
    return _client.invoke<UserAfterOfflineResp>(ctx, 'callbackService', 'UserAfterOffline', request, emptyResponse);
  }
  $async.Future<UserBeforeConnectResp> userBeforeConnect($pb.ClientContext? ctx, UserBeforeConnectReq request) {
    var emptyResponse = UserBeforeConnectResp();
    return _client.invoke<UserBeforeConnectResp>(ctx, 'callbackService', 'UserBeforeConnect', request, emptyResponse);
  }
  $async.Future<UserBeforeRequestResp> userBeforeRequest($pb.ClientContext? ctx, UserBeforeRequestReq request) {
    var emptyResponse = UserBeforeRequestResp();
    return _client.invoke<UserBeforeRequestResp>(ctx, 'callbackService', 'UserBeforeRequest', request, emptyResponse);
  }
  $async.Future<UserAfterKeepAliveResp> userAfterKeepAlive($pb.ClientContext? ctx, UserAfterKeepAliveReq request) {
    var emptyResponse = UserAfterKeepAliveResp();
    return _client.invoke<UserAfterKeepAliveResp>(ctx, 'callbackService', 'UserAfterKeepAlive', request, emptyResponse);
  }
}

