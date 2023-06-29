///
//  Generated code. Do not modify.
//  source: third.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'common.pb.dart' as $0;

class SmsCodeSendReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SmsCodeSendReq', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pb'), createEmptyInstance: create)
    ..aOM<$0.RequestHeader>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'header', subBuilder: $0.RequestHeader.create)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'phone')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'phoneCode', protoName: 'phoneCode')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'scene')
    ..aInt64(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'expireTime', protoName: 'expireTime')
    ..hasRequiredFields = false
  ;

  SmsCodeSendReq._() : super();
  factory SmsCodeSendReq({
    $0.RequestHeader? header,
    $core.String? phone,
    $core.String? phoneCode,
    $core.String? scene,
    $fixnum.Int64? expireTime,
  }) {
    final _result = create();
    if (header != null) {
      _result.header = header;
    }
    if (phone != null) {
      _result.phone = phone;
    }
    if (phoneCode != null) {
      _result.phoneCode = phoneCode;
    }
    if (scene != null) {
      _result.scene = scene;
    }
    if (expireTime != null) {
      _result.expireTime = expireTime;
    }
    return _result;
  }
  factory SmsCodeSendReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SmsCodeSendReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SmsCodeSendReq clone() => SmsCodeSendReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SmsCodeSendReq copyWith(void Function(SmsCodeSendReq) updates) => super.copyWith((message) => updates(message as SmsCodeSendReq)) as SmsCodeSendReq; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SmsCodeSendReq create() => SmsCodeSendReq._();
  SmsCodeSendReq createEmptyInstance() => create();
  static $pb.PbList<SmsCodeSendReq> createRepeated() => $pb.PbList<SmsCodeSendReq>();
  @$core.pragma('dart2js:noInline')
  static SmsCodeSendReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SmsCodeSendReq>(create);
  static SmsCodeSendReq? _defaultInstance;

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
  $core.String get phone => $_getSZ(1);
  @$pb.TagNumber(2)
  set phone($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPhone() => $_has(1);
  @$pb.TagNumber(2)
  void clearPhone() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get phoneCode => $_getSZ(2);
  @$pb.TagNumber(3)
  set phoneCode($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasPhoneCode() => $_has(2);
  @$pb.TagNumber(3)
  void clearPhoneCode() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get scene => $_getSZ(3);
  @$pb.TagNumber(4)
  set scene($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasScene() => $_has(3);
  @$pb.TagNumber(4)
  void clearScene() => clearField(4);

  @$pb.TagNumber(5)
  $fixnum.Int64 get expireTime => $_getI64(4);
  @$pb.TagNumber(5)
  set expireTime($fixnum.Int64 v) { $_setInt64(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasExpireTime() => $_has(4);
  @$pb.TagNumber(5)
  void clearExpireTime() => clearField(5);
}

class SmsCodeSendResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SmsCodeSendResp', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pb'), createEmptyInstance: create)
    ..aOM<$0.ResponseHeader>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'header', subBuilder: $0.ResponseHeader.create)
    ..hasRequiredFields = false
  ;

  SmsCodeSendResp._() : super();
  factory SmsCodeSendResp({
    $0.ResponseHeader? header,
  }) {
    final _result = create();
    if (header != null) {
      _result.header = header;
    }
    return _result;
  }
  factory SmsCodeSendResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SmsCodeSendResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SmsCodeSendResp clone() => SmsCodeSendResp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SmsCodeSendResp copyWith(void Function(SmsCodeSendResp) updates) => super.copyWith((message) => updates(message as SmsCodeSendResp)) as SmsCodeSendResp; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SmsCodeSendResp create() => SmsCodeSendResp._();
  SmsCodeSendResp createEmptyInstance() => create();
  static $pb.PbList<SmsCodeSendResp> createRepeated() => $pb.PbList<SmsCodeSendResp>();
  @$core.pragma('dart2js:noInline')
  static SmsCodeSendResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SmsCodeSendResp>(create);
  static SmsCodeSendResp? _defaultInstance;

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

class SmsCodeVerifyReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SmsCodeVerifyReq', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pb'), createEmptyInstance: create)
    ..aOM<$0.RequestHeader>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'header', subBuilder: $0.RequestHeader.create)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'phone')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'phoneCode', protoName: 'phoneCode')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'scene')
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'smsCode', protoName: 'smsCode')
    ..aOB(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'delete')
    ..hasRequiredFields = false
  ;

  SmsCodeVerifyReq._() : super();
  factory SmsCodeVerifyReq({
    $0.RequestHeader? header,
    $core.String? phone,
    $core.String? phoneCode,
    $core.String? scene,
    $core.String? smsCode,
    $core.bool? delete,
  }) {
    final _result = create();
    if (header != null) {
      _result.header = header;
    }
    if (phone != null) {
      _result.phone = phone;
    }
    if (phoneCode != null) {
      _result.phoneCode = phoneCode;
    }
    if (scene != null) {
      _result.scene = scene;
    }
    if (smsCode != null) {
      _result.smsCode = smsCode;
    }
    if (delete != null) {
      _result.delete = delete;
    }
    return _result;
  }
  factory SmsCodeVerifyReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SmsCodeVerifyReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SmsCodeVerifyReq clone() => SmsCodeVerifyReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SmsCodeVerifyReq copyWith(void Function(SmsCodeVerifyReq) updates) => super.copyWith((message) => updates(message as SmsCodeVerifyReq)) as SmsCodeVerifyReq; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SmsCodeVerifyReq create() => SmsCodeVerifyReq._();
  SmsCodeVerifyReq createEmptyInstance() => create();
  static $pb.PbList<SmsCodeVerifyReq> createRepeated() => $pb.PbList<SmsCodeVerifyReq>();
  @$core.pragma('dart2js:noInline')
  static SmsCodeVerifyReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SmsCodeVerifyReq>(create);
  static SmsCodeVerifyReq? _defaultInstance;

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
  $core.String get phone => $_getSZ(1);
  @$pb.TagNumber(2)
  set phone($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPhone() => $_has(1);
  @$pb.TagNumber(2)
  void clearPhone() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get phoneCode => $_getSZ(2);
  @$pb.TagNumber(3)
  set phoneCode($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasPhoneCode() => $_has(2);
  @$pb.TagNumber(3)
  void clearPhoneCode() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get scene => $_getSZ(3);
  @$pb.TagNumber(4)
  set scene($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasScene() => $_has(3);
  @$pb.TagNumber(4)
  void clearScene() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get smsCode => $_getSZ(4);
  @$pb.TagNumber(5)
  set smsCode($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasSmsCode() => $_has(4);
  @$pb.TagNumber(5)
  void clearSmsCode() => clearField(5);

  @$pb.TagNumber(6)
  $core.bool get delete => $_getBF(5);
  @$pb.TagNumber(6)
  set delete($core.bool v) { $_setBool(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasDelete() => $_has(5);
  @$pb.TagNumber(6)
  void clearDelete() => clearField(6);
}

class SmsCodeVerifyResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SmsCodeVerifyResp', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pb'), createEmptyInstance: create)
    ..aOM<$0.ResponseHeader>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'header', subBuilder: $0.ResponseHeader.create)
    ..aOB(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'success')
    ..hasRequiredFields = false
  ;

  SmsCodeVerifyResp._() : super();
  factory SmsCodeVerifyResp({
    $0.ResponseHeader? header,
    $core.bool? success,
  }) {
    final _result = create();
    if (header != null) {
      _result.header = header;
    }
    if (success != null) {
      _result.success = success;
    }
    return _result;
  }
  factory SmsCodeVerifyResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SmsCodeVerifyResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SmsCodeVerifyResp clone() => SmsCodeVerifyResp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SmsCodeVerifyResp copyWith(void Function(SmsCodeVerifyResp) updates) => super.copyWith((message) => updates(message as SmsCodeVerifyResp)) as SmsCodeVerifyResp; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SmsCodeVerifyResp create() => SmsCodeVerifyResp._();
  SmsCodeVerifyResp createEmptyInstance() => create();
  static $pb.PbList<SmsCodeVerifyResp> createRepeated() => $pb.PbList<SmsCodeVerifyResp>();
  @$core.pragma('dart2js:noInline')
  static SmsCodeVerifyResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SmsCodeVerifyResp>(create);
  static SmsCodeVerifyResp? _defaultInstance;

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
}

class EmailCodeSendReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'EmailCodeSendReq', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pb'), createEmptyInstance: create)
    ..aOM<$0.RequestHeader>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'header', subBuilder: $0.RequestHeader.create)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'email')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'scene')
    ..aInt64(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'expireTime', protoName: 'expireTime')
    ..hasRequiredFields = false
  ;

  EmailCodeSendReq._() : super();
  factory EmailCodeSendReq({
    $0.RequestHeader? header,
    $core.String? email,
    $core.String? scene,
    $fixnum.Int64? expireTime,
  }) {
    final _result = create();
    if (header != null) {
      _result.header = header;
    }
    if (email != null) {
      _result.email = email;
    }
    if (scene != null) {
      _result.scene = scene;
    }
    if (expireTime != null) {
      _result.expireTime = expireTime;
    }
    return _result;
  }
  factory EmailCodeSendReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EmailCodeSendReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  EmailCodeSendReq clone() => EmailCodeSendReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  EmailCodeSendReq copyWith(void Function(EmailCodeSendReq) updates) => super.copyWith((message) => updates(message as EmailCodeSendReq)) as EmailCodeSendReq; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static EmailCodeSendReq create() => EmailCodeSendReq._();
  EmailCodeSendReq createEmptyInstance() => create();
  static $pb.PbList<EmailCodeSendReq> createRepeated() => $pb.PbList<EmailCodeSendReq>();
  @$core.pragma('dart2js:noInline')
  static EmailCodeSendReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EmailCodeSendReq>(create);
  static EmailCodeSendReq? _defaultInstance;

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
  $core.String get email => $_getSZ(1);
  @$pb.TagNumber(2)
  set email($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasEmail() => $_has(1);
  @$pb.TagNumber(2)
  void clearEmail() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get scene => $_getSZ(2);
  @$pb.TagNumber(3)
  set scene($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasScene() => $_has(2);
  @$pb.TagNumber(3)
  void clearScene() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get expireTime => $_getI64(3);
  @$pb.TagNumber(4)
  set expireTime($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasExpireTime() => $_has(3);
  @$pb.TagNumber(4)
  void clearExpireTime() => clearField(4);
}

class EmailCodeSendResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'EmailCodeSendResp', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pb'), createEmptyInstance: create)
    ..aOM<$0.ResponseHeader>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'header', subBuilder: $0.ResponseHeader.create)
    ..hasRequiredFields = false
  ;

  EmailCodeSendResp._() : super();
  factory EmailCodeSendResp({
    $0.ResponseHeader? header,
  }) {
    final _result = create();
    if (header != null) {
      _result.header = header;
    }
    return _result;
  }
  factory EmailCodeSendResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EmailCodeSendResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  EmailCodeSendResp clone() => EmailCodeSendResp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  EmailCodeSendResp copyWith(void Function(EmailCodeSendResp) updates) => super.copyWith((message) => updates(message as EmailCodeSendResp)) as EmailCodeSendResp; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static EmailCodeSendResp create() => EmailCodeSendResp._();
  EmailCodeSendResp createEmptyInstance() => create();
  static $pb.PbList<EmailCodeSendResp> createRepeated() => $pb.PbList<EmailCodeSendResp>();
  @$core.pragma('dart2js:noInline')
  static EmailCodeSendResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EmailCodeSendResp>(create);
  static EmailCodeSendResp? _defaultInstance;

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

class EmailCodeVerifyReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'EmailCodeVerifyReq', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pb'), createEmptyInstance: create)
    ..aOM<$0.RequestHeader>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'header', subBuilder: $0.RequestHeader.create)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'email')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'scene')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'emailCode', protoName: 'emailCode')
    ..aOB(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'delete')
    ..hasRequiredFields = false
  ;

  EmailCodeVerifyReq._() : super();
  factory EmailCodeVerifyReq({
    $0.RequestHeader? header,
    $core.String? email,
    $core.String? scene,
    $core.String? emailCode,
    $core.bool? delete,
  }) {
    final _result = create();
    if (header != null) {
      _result.header = header;
    }
    if (email != null) {
      _result.email = email;
    }
    if (scene != null) {
      _result.scene = scene;
    }
    if (emailCode != null) {
      _result.emailCode = emailCode;
    }
    if (delete != null) {
      _result.delete = delete;
    }
    return _result;
  }
  factory EmailCodeVerifyReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EmailCodeVerifyReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  EmailCodeVerifyReq clone() => EmailCodeVerifyReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  EmailCodeVerifyReq copyWith(void Function(EmailCodeVerifyReq) updates) => super.copyWith((message) => updates(message as EmailCodeVerifyReq)) as EmailCodeVerifyReq; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static EmailCodeVerifyReq create() => EmailCodeVerifyReq._();
  EmailCodeVerifyReq createEmptyInstance() => create();
  static $pb.PbList<EmailCodeVerifyReq> createRepeated() => $pb.PbList<EmailCodeVerifyReq>();
  @$core.pragma('dart2js:noInline')
  static EmailCodeVerifyReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EmailCodeVerifyReq>(create);
  static EmailCodeVerifyReq? _defaultInstance;

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
  $core.String get email => $_getSZ(1);
  @$pb.TagNumber(2)
  set email($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasEmail() => $_has(1);
  @$pb.TagNumber(2)
  void clearEmail() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get scene => $_getSZ(2);
  @$pb.TagNumber(3)
  set scene($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasScene() => $_has(2);
  @$pb.TagNumber(3)
  void clearScene() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get emailCode => $_getSZ(3);
  @$pb.TagNumber(4)
  set emailCode($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasEmailCode() => $_has(3);
  @$pb.TagNumber(4)
  void clearEmailCode() => clearField(4);

  @$pb.TagNumber(5)
  $core.bool get delete => $_getBF(4);
  @$pb.TagNumber(5)
  set delete($core.bool v) { $_setBool(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasDelete() => $_has(4);
  @$pb.TagNumber(5)
  void clearDelete() => clearField(5);
}

class EmailCodeVerifyResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'EmailCodeVerifyResp', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pb'), createEmptyInstance: create)
    ..aOM<$0.ResponseHeader>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'header', subBuilder: $0.ResponseHeader.create)
    ..aOB(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'success')
    ..hasRequiredFields = false
  ;

  EmailCodeVerifyResp._() : super();
  factory EmailCodeVerifyResp({
    $0.ResponseHeader? header,
    $core.bool? success,
  }) {
    final _result = create();
    if (header != null) {
      _result.header = header;
    }
    if (success != null) {
      _result.success = success;
    }
    return _result;
  }
  factory EmailCodeVerifyResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EmailCodeVerifyResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  EmailCodeVerifyResp clone() => EmailCodeVerifyResp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  EmailCodeVerifyResp copyWith(void Function(EmailCodeVerifyResp) updates) => super.copyWith((message) => updates(message as EmailCodeVerifyResp)) as EmailCodeVerifyResp; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static EmailCodeVerifyResp create() => EmailCodeVerifyResp._();
  EmailCodeVerifyResp createEmptyInstance() => create();
  static $pb.PbList<EmailCodeVerifyResp> createRepeated() => $pb.PbList<EmailCodeVerifyResp>();
  @$core.pragma('dart2js:noInline')
  static EmailCodeVerifyResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EmailCodeVerifyResp>(create);
  static EmailCodeVerifyResp? _defaultInstance;

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
}

class GetCaptchaReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetCaptchaReq', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pb'), createEmptyInstance: create)
    ..aOM<$0.RequestHeader>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'header', subBuilder: $0.RequestHeader.create)
    ..aInt64(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'expireTime', protoName: 'expireTime')
    ..aOB(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'includeEnglish', protoName: 'includeEnglish')
    ..aOB(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'includeNumber', protoName: 'includeNumber')
    ..a<$core.int>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'width', $pb.PbFieldType.O3)
    ..a<$core.int>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'height', $pb.PbFieldType.O3)
    ..a<$core.int>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'charCount', $pb.PbFieldType.O3, protoName: 'charCount')
    ..hasRequiredFields = false
  ;

  GetCaptchaReq._() : super();
  factory GetCaptchaReq({
    $0.RequestHeader? header,
    $fixnum.Int64? expireTime,
    $core.bool? includeEnglish,
    $core.bool? includeNumber,
    $core.int? width,
    $core.int? height,
    $core.int? charCount,
  }) {
    final _result = create();
    if (header != null) {
      _result.header = header;
    }
    if (expireTime != null) {
      _result.expireTime = expireTime;
    }
    if (includeEnglish != null) {
      _result.includeEnglish = includeEnglish;
    }
    if (includeNumber != null) {
      _result.includeNumber = includeNumber;
    }
    if (width != null) {
      _result.width = width;
    }
    if (height != null) {
      _result.height = height;
    }
    if (charCount != null) {
      _result.charCount = charCount;
    }
    return _result;
  }
  factory GetCaptchaReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetCaptchaReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetCaptchaReq clone() => GetCaptchaReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetCaptchaReq copyWith(void Function(GetCaptchaReq) updates) => super.copyWith((message) => updates(message as GetCaptchaReq)) as GetCaptchaReq; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetCaptchaReq create() => GetCaptchaReq._();
  GetCaptchaReq createEmptyInstance() => create();
  static $pb.PbList<GetCaptchaReq> createRepeated() => $pb.PbList<GetCaptchaReq>();
  @$core.pragma('dart2js:noInline')
  static GetCaptchaReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetCaptchaReq>(create);
  static GetCaptchaReq? _defaultInstance;

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
  $fixnum.Int64 get expireTime => $_getI64(1);
  @$pb.TagNumber(2)
  set expireTime($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasExpireTime() => $_has(1);
  @$pb.TagNumber(2)
  void clearExpireTime() => clearField(2);

  @$pb.TagNumber(3)
  $core.bool get includeEnglish => $_getBF(2);
  @$pb.TagNumber(3)
  set includeEnglish($core.bool v) { $_setBool(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasIncludeEnglish() => $_has(2);
  @$pb.TagNumber(3)
  void clearIncludeEnglish() => clearField(3);

  @$pb.TagNumber(4)
  $core.bool get includeNumber => $_getBF(3);
  @$pb.TagNumber(4)
  set includeNumber($core.bool v) { $_setBool(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasIncludeNumber() => $_has(3);
  @$pb.TagNumber(4)
  void clearIncludeNumber() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get width => $_getIZ(4);
  @$pb.TagNumber(5)
  set width($core.int v) { $_setSignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasWidth() => $_has(4);
  @$pb.TagNumber(5)
  void clearWidth() => clearField(5);

  @$pb.TagNumber(6)
  $core.int get height => $_getIZ(5);
  @$pb.TagNumber(6)
  set height($core.int v) { $_setSignedInt32(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasHeight() => $_has(5);
  @$pb.TagNumber(6)
  void clearHeight() => clearField(6);

  @$pb.TagNumber(7)
  $core.int get charCount => $_getIZ(6);
  @$pb.TagNumber(7)
  set charCount($core.int v) { $_setSignedInt32(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasCharCount() => $_has(6);
  @$pb.TagNumber(7)
  void clearCharCount() => clearField(7);
}

class GetCaptchaResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetCaptchaResp', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pb'), createEmptyInstance: create)
    ..aOM<$0.ResponseHeader>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'header', subBuilder: $0.ResponseHeader.create)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'captchaId', protoName: 'captchaId')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'captchaCode', protoName: 'captchaCode')
    ..hasRequiredFields = false
  ;

  GetCaptchaResp._() : super();
  factory GetCaptchaResp({
    $0.ResponseHeader? header,
    $core.String? captchaId,
    $core.String? captchaCode,
  }) {
    final _result = create();
    if (header != null) {
      _result.header = header;
    }
    if (captchaId != null) {
      _result.captchaId = captchaId;
    }
    if (captchaCode != null) {
      _result.captchaCode = captchaCode;
    }
    return _result;
  }
  factory GetCaptchaResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetCaptchaResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetCaptchaResp clone() => GetCaptchaResp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetCaptchaResp copyWith(void Function(GetCaptchaResp) updates) => super.copyWith((message) => updates(message as GetCaptchaResp)) as GetCaptchaResp; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetCaptchaResp create() => GetCaptchaResp._();
  GetCaptchaResp createEmptyInstance() => create();
  static $pb.PbList<GetCaptchaResp> createRepeated() => $pb.PbList<GetCaptchaResp>();
  @$core.pragma('dart2js:noInline')
  static GetCaptchaResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetCaptchaResp>(create);
  static GetCaptchaResp? _defaultInstance;

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
  $core.String get captchaId => $_getSZ(1);
  @$pb.TagNumber(2)
  set captchaId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCaptchaId() => $_has(1);
  @$pb.TagNumber(2)
  void clearCaptchaId() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get captchaCode => $_getSZ(2);
  @$pb.TagNumber(3)
  set captchaCode($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasCaptchaCode() => $_has(2);
  @$pb.TagNumber(3)
  void clearCaptchaCode() => clearField(3);
}

class CaptchaVerifyReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CaptchaVerifyReq', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pb'), createEmptyInstance: create)
    ..aOM<$0.RequestHeader>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'header', subBuilder: $0.RequestHeader.create)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'captchaId', protoName: 'captchaId')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'captchaCode', protoName: 'captchaCode')
    ..aOB(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'delete')
    ..hasRequiredFields = false
  ;

  CaptchaVerifyReq._() : super();
  factory CaptchaVerifyReq({
    $0.RequestHeader? header,
    $core.String? captchaId,
    $core.String? captchaCode,
    $core.bool? delete,
  }) {
    final _result = create();
    if (header != null) {
      _result.header = header;
    }
    if (captchaId != null) {
      _result.captchaId = captchaId;
    }
    if (captchaCode != null) {
      _result.captchaCode = captchaCode;
    }
    if (delete != null) {
      _result.delete = delete;
    }
    return _result;
  }
  factory CaptchaVerifyReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CaptchaVerifyReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CaptchaVerifyReq clone() => CaptchaVerifyReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CaptchaVerifyReq copyWith(void Function(CaptchaVerifyReq) updates) => super.copyWith((message) => updates(message as CaptchaVerifyReq)) as CaptchaVerifyReq; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CaptchaVerifyReq create() => CaptchaVerifyReq._();
  CaptchaVerifyReq createEmptyInstance() => create();
  static $pb.PbList<CaptchaVerifyReq> createRepeated() => $pb.PbList<CaptchaVerifyReq>();
  @$core.pragma('dart2js:noInline')
  static CaptchaVerifyReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CaptchaVerifyReq>(create);
  static CaptchaVerifyReq? _defaultInstance;

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
  $core.String get captchaId => $_getSZ(1);
  @$pb.TagNumber(2)
  set captchaId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCaptchaId() => $_has(1);
  @$pb.TagNumber(2)
  void clearCaptchaId() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get captchaCode => $_getSZ(2);
  @$pb.TagNumber(3)
  set captchaCode($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasCaptchaCode() => $_has(2);
  @$pb.TagNumber(3)
  void clearCaptchaCode() => clearField(3);

  @$pb.TagNumber(4)
  $core.bool get delete => $_getBF(3);
  @$pb.TagNumber(4)
  set delete($core.bool v) { $_setBool(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasDelete() => $_has(3);
  @$pb.TagNumber(4)
  void clearDelete() => clearField(4);
}

class CaptchaVerifyResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CaptchaVerifyResp', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pb'), createEmptyInstance: create)
    ..aOM<$0.ResponseHeader>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'header', subBuilder: $0.ResponseHeader.create)
    ..aOB(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'success')
    ..hasRequiredFields = false
  ;

  CaptchaVerifyResp._() : super();
  factory CaptchaVerifyResp({
    $0.ResponseHeader? header,
    $core.bool? success,
  }) {
    final _result = create();
    if (header != null) {
      _result.header = header;
    }
    if (success != null) {
      _result.success = success;
    }
    return _result;
  }
  factory CaptchaVerifyResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CaptchaVerifyResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CaptchaVerifyResp clone() => CaptchaVerifyResp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CaptchaVerifyResp copyWith(void Function(CaptchaVerifyResp) updates) => super.copyWith((message) => updates(message as CaptchaVerifyResp)) as CaptchaVerifyResp; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CaptchaVerifyResp create() => CaptchaVerifyResp._();
  CaptchaVerifyResp createEmptyInstance() => create();
  static $pb.PbList<CaptchaVerifyResp> createRepeated() => $pb.PbList<CaptchaVerifyResp>();
  @$core.pragma('dart2js:noInline')
  static CaptchaVerifyResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CaptchaVerifyResp>(create);
  static CaptchaVerifyResp? _defaultInstance;

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
}

class smsServiceApi {
  $pb.RpcClient _client;
  smsServiceApi(this._client);

  $async.Future<SmsCodeSendResp> smsCodeSend($pb.ClientContext? ctx, SmsCodeSendReq request) {
    var emptyResponse = SmsCodeSendResp();
    return _client.invoke<SmsCodeSendResp>(ctx, 'smsService', 'SmsCodeSend', request, emptyResponse);
  }
  $async.Future<SmsCodeVerifyResp> smsCodeVerify($pb.ClientContext? ctx, SmsCodeVerifyReq request) {
    var emptyResponse = SmsCodeVerifyResp();
    return _client.invoke<SmsCodeVerifyResp>(ctx, 'smsService', 'SmsCodeVerify', request, emptyResponse);
  }
}

class emailServiceApi {
  $pb.RpcClient _client;
  emailServiceApi(this._client);

  $async.Future<EmailCodeSendResp> emailCodeSend($pb.ClientContext? ctx, EmailCodeSendReq request) {
    var emptyResponse = EmailCodeSendResp();
    return _client.invoke<EmailCodeSendResp>(ctx, 'emailService', 'EmailCodeSend', request, emptyResponse);
  }
  $async.Future<EmailCodeVerifyResp> emailCodeVerify($pb.ClientContext? ctx, EmailCodeVerifyReq request) {
    var emptyResponse = EmailCodeVerifyResp();
    return _client.invoke<EmailCodeVerifyResp>(ctx, 'emailService', 'EmailCodeVerify', request, emptyResponse);
  }
}

class captchaServiceApi {
  $pb.RpcClient _client;
  captchaServiceApi(this._client);

  $async.Future<GetCaptchaResp> getCaptcha($pb.ClientContext? ctx, GetCaptchaReq request) {
    var emptyResponse = GetCaptchaResp();
    return _client.invoke<GetCaptchaResp>(ctx, 'captchaService', 'GetCaptcha', request, emptyResponse);
  }
  $async.Future<CaptchaVerifyResp> captchaVerify($pb.ClientContext? ctx, CaptchaVerifyReq request) {
    var emptyResponse = CaptchaVerifyResp();
    return _client.invoke<CaptchaVerifyResp>(ctx, 'captchaService', 'CaptchaVerify', request, emptyResponse);
  }
}

