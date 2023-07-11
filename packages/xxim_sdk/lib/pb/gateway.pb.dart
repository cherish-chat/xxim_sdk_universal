///
//  Generated code. Do not modify.
//  source: gateway.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'common.pb.dart' as $0;

import 'gateway.pbenum.dart';
import 'common.pbenum.dart' as $0;

export 'gateway.pbenum.dart';

class GatewayApiRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GatewayApiRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pb'), createEmptyInstance: create)
    ..aOM<$0.RequestHeader>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'header', subBuilder: $0.RequestHeader.create)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'requestId', protoName: 'requestId')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'path')
    ..a<$core.List<$core.int>>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'body', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  GatewayApiRequest._() : super();
  factory GatewayApiRequest({
    $0.RequestHeader? header,
    $core.String? requestId,
    $core.String? path,
    $core.List<$core.int>? body,
  }) {
    final _result = create();
    if (header != null) {
      _result.header = header;
    }
    if (requestId != null) {
      _result.requestId = requestId;
    }
    if (path != null) {
      _result.path = path;
    }
    if (body != null) {
      _result.body = body;
    }
    return _result;
  }
  factory GatewayApiRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GatewayApiRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GatewayApiRequest clone() => GatewayApiRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GatewayApiRequest copyWith(void Function(GatewayApiRequest) updates) => super.copyWith((message) => updates(message as GatewayApiRequest)) as GatewayApiRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GatewayApiRequest create() => GatewayApiRequest._();
  GatewayApiRequest createEmptyInstance() => create();
  static $pb.PbList<GatewayApiRequest> createRepeated() => $pb.PbList<GatewayApiRequest>();
  @$core.pragma('dart2js:noInline')
  static GatewayApiRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GatewayApiRequest>(create);
  static GatewayApiRequest? _defaultInstance;

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
  $core.String get requestId => $_getSZ(1);
  @$pb.TagNumber(2)
  set requestId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasRequestId() => $_has(1);
  @$pb.TagNumber(2)
  void clearRequestId() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get path => $_getSZ(2);
  @$pb.TagNumber(3)
  set path($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasPath() => $_has(2);
  @$pb.TagNumber(3)
  void clearPath() => clearField(3);

  @$pb.TagNumber(4)
  $core.List<$core.int> get body => $_getN(3);
  @$pb.TagNumber(4)
  set body($core.List<$core.int> v) { $_setBytes(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasBody() => $_has(3);
  @$pb.TagNumber(4)
  void clearBody() => clearField(4);
}

class GatewayApiResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GatewayApiResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pb'), createEmptyInstance: create)
    ..aOM<$0.ResponseHeader>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'header', subBuilder: $0.ResponseHeader.create)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'requestId', protoName: 'requestId')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'path')
    ..a<$core.List<$core.int>>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'body', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  GatewayApiResponse._() : super();
  factory GatewayApiResponse({
    $0.ResponseHeader? header,
    $core.String? requestId,
    $core.String? path,
    $core.List<$core.int>? body,
  }) {
    final _result = create();
    if (header != null) {
      _result.header = header;
    }
    if (requestId != null) {
      _result.requestId = requestId;
    }
    if (path != null) {
      _result.path = path;
    }
    if (body != null) {
      _result.body = body;
    }
    return _result;
  }
  factory GatewayApiResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GatewayApiResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GatewayApiResponse clone() => GatewayApiResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GatewayApiResponse copyWith(void Function(GatewayApiResponse) updates) => super.copyWith((message) => updates(message as GatewayApiResponse)) as GatewayApiResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GatewayApiResponse create() => GatewayApiResponse._();
  GatewayApiResponse createEmptyInstance() => create();
  static $pb.PbList<GatewayApiResponse> createRepeated() => $pb.PbList<GatewayApiResponse>();
  @$core.pragma('dart2js:noInline')
  static GatewayApiResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GatewayApiResponse>(create);
  static GatewayApiResponse? _defaultInstance;

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
  $core.String get requestId => $_getSZ(1);
  @$pb.TagNumber(2)
  set requestId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasRequestId() => $_has(1);
  @$pb.TagNumber(2)
  void clearRequestId() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get path => $_getSZ(2);
  @$pb.TagNumber(3)
  set path($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasPath() => $_has(2);
  @$pb.TagNumber(3)
  void clearPath() => clearField(3);

  @$pb.TagNumber(4)
  $core.List<$core.int> get body => $_getN(3);
  @$pb.TagNumber(4)
  set body($core.List<$core.int> v) { $_setBytes(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasBody() => $_has(3);
  @$pb.TagNumber(4)
  void clearBody() => clearField(4);
}

class GatewayWriteDataContent extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GatewayWriteDataContent', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pb'), createEmptyInstance: create)
    ..e<GatewayWriteDataType>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'dataType', $pb.PbFieldType.OE, protoName: 'dataType', defaultOrMaker: GatewayWriteDataType.Response, valueOf: GatewayWriteDataType.valueOf, enumValues: GatewayWriteDataType.values)
    ..aOM<GatewayApiResponse>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'response', subBuilder: GatewayApiResponse.create)
    ..aOM<$0.Message>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'message', subBuilder: $0.Message.create)
    ..aOM<$0.Notice>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'notice', subBuilder: $0.Notice.create)
    ..hasRequiredFields = false
  ;

  GatewayWriteDataContent._() : super();
  factory GatewayWriteDataContent({
    GatewayWriteDataType? dataType,
    GatewayApiResponse? response,
    $0.Message? message,
    $0.Notice? notice,
  }) {
    final _result = create();
    if (dataType != null) {
      _result.dataType = dataType;
    }
    if (response != null) {
      _result.response = response;
    }
    if (message != null) {
      _result.message = message;
    }
    if (notice != null) {
      _result.notice = notice;
    }
    return _result;
  }
  factory GatewayWriteDataContent.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GatewayWriteDataContent.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GatewayWriteDataContent clone() => GatewayWriteDataContent()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GatewayWriteDataContent copyWith(void Function(GatewayWriteDataContent) updates) => super.copyWith((message) => updates(message as GatewayWriteDataContent)) as GatewayWriteDataContent; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GatewayWriteDataContent create() => GatewayWriteDataContent._();
  GatewayWriteDataContent createEmptyInstance() => create();
  static $pb.PbList<GatewayWriteDataContent> createRepeated() => $pb.PbList<GatewayWriteDataContent>();
  @$core.pragma('dart2js:noInline')
  static GatewayWriteDataContent getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GatewayWriteDataContent>(create);
  static GatewayWriteDataContent? _defaultInstance;

  @$pb.TagNumber(1)
  GatewayWriteDataType get dataType => $_getN(0);
  @$pb.TagNumber(1)
  set dataType(GatewayWriteDataType v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasDataType() => $_has(0);
  @$pb.TagNumber(1)
  void clearDataType() => clearField(1);

  @$pb.TagNumber(2)
  GatewayApiResponse get response => $_getN(1);
  @$pb.TagNumber(2)
  set response(GatewayApiResponse v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasResponse() => $_has(1);
  @$pb.TagNumber(2)
  void clearResponse() => clearField(2);
  @$pb.TagNumber(2)
  GatewayApiResponse ensureResponse() => $_ensure(1);

  @$pb.TagNumber(3)
  $0.Message get message => $_getN(2);
  @$pb.TagNumber(3)
  set message($0.Message v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasMessage() => $_has(2);
  @$pb.TagNumber(3)
  void clearMessage() => clearField(3);
  @$pb.TagNumber(3)
  $0.Message ensureMessage() => $_ensure(2);

  @$pb.TagNumber(4)
  $0.Notice get notice => $_getN(3);
  @$pb.TagNumber(4)
  set notice($0.Notice v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasNotice() => $_has(3);
  @$pb.TagNumber(4)
  void clearNotice() => clearField(4);
  @$pb.TagNumber(4)
  $0.Notice ensureNotice() => $_ensure(3);
}

class LongConnection extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'LongConnection', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pb'), createEmptyInstance: create)
    ..aOM<$0.RequestHeader>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'header', subBuilder: $0.RequestHeader.create)
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'podIp', protoName: 'podIp')
    ..aInt64(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'connectTime', protoName: 'connectTime')
    ..hasRequiredFields = false
  ;

  LongConnection._() : super();
  factory LongConnection({
    $0.RequestHeader? header,
    $core.String? podIp,
    $fixnum.Int64? connectTime,
  }) {
    final _result = create();
    if (header != null) {
      _result.header = header;
    }
    if (podIp != null) {
      _result.podIp = podIp;
    }
    if (connectTime != null) {
      _result.connectTime = connectTime;
    }
    return _result;
  }
  factory LongConnection.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LongConnection.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LongConnection clone() => LongConnection()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LongConnection copyWith(void Function(LongConnection) updates) => super.copyWith((message) => updates(message as LongConnection)) as LongConnection; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static LongConnection create() => LongConnection._();
  LongConnection createEmptyInstance() => create();
  static $pb.PbList<LongConnection> createRepeated() => $pb.PbList<LongConnection>();
  @$core.pragma('dart2js:noInline')
  static LongConnection getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LongConnection>(create);
  static LongConnection? _defaultInstance;

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

  @$pb.TagNumber(3)
  $core.String get podIp => $_getSZ(1);
  @$pb.TagNumber(3)
  set podIp($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(3)
  $core.bool hasPodIp() => $_has(1);
  @$pb.TagNumber(3)
  void clearPodIp() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get connectTime => $_getI64(2);
  @$pb.TagNumber(4)
  set connectTime($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(4)
  $core.bool hasConnectTime() => $_has(2);
  @$pb.TagNumber(4)
  void clearConnectTime() => clearField(4);
}

class GatewayGetUserConnectionReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GatewayGetUserConnectionReq', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pb'), createEmptyInstance: create)
    ..aOM<$0.RequestHeader>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'header', subBuilder: $0.RequestHeader.create)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'userId', protoName: 'userId')
    ..hasRequiredFields = false
  ;

  GatewayGetUserConnectionReq._() : super();
  factory GatewayGetUserConnectionReq({
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
  factory GatewayGetUserConnectionReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GatewayGetUserConnectionReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GatewayGetUserConnectionReq clone() => GatewayGetUserConnectionReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GatewayGetUserConnectionReq copyWith(void Function(GatewayGetUserConnectionReq) updates) => super.copyWith((message) => updates(message as GatewayGetUserConnectionReq)) as GatewayGetUserConnectionReq; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GatewayGetUserConnectionReq create() => GatewayGetUserConnectionReq._();
  GatewayGetUserConnectionReq createEmptyInstance() => create();
  static $pb.PbList<GatewayGetUserConnectionReq> createRepeated() => $pb.PbList<GatewayGetUserConnectionReq>();
  @$core.pragma('dart2js:noInline')
  static GatewayGetUserConnectionReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GatewayGetUserConnectionReq>(create);
  static GatewayGetUserConnectionReq? _defaultInstance;

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

class GatewayGetUserConnectionResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GatewayGetUserConnectionResp', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pb'), createEmptyInstance: create)
    ..aOM<$0.ResponseHeader>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'header', subBuilder: $0.ResponseHeader.create)
    ..pc<LongConnection>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'connections', $pb.PbFieldType.PM, subBuilder: LongConnection.create)
    ..hasRequiredFields = false
  ;

  GatewayGetUserConnectionResp._() : super();
  factory GatewayGetUserConnectionResp({
    $0.ResponseHeader? header,
    $core.Iterable<LongConnection>? connections,
  }) {
    final _result = create();
    if (header != null) {
      _result.header = header;
    }
    if (connections != null) {
      _result.connections.addAll(connections);
    }
    return _result;
  }
  factory GatewayGetUserConnectionResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GatewayGetUserConnectionResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GatewayGetUserConnectionResp clone() => GatewayGetUserConnectionResp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GatewayGetUserConnectionResp copyWith(void Function(GatewayGetUserConnectionResp) updates) => super.copyWith((message) => updates(message as GatewayGetUserConnectionResp)) as GatewayGetUserConnectionResp; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GatewayGetUserConnectionResp create() => GatewayGetUserConnectionResp._();
  GatewayGetUserConnectionResp createEmptyInstance() => create();
  static $pb.PbList<GatewayGetUserConnectionResp> createRepeated() => $pb.PbList<GatewayGetUserConnectionResp>();
  @$core.pragma('dart2js:noInline')
  static GatewayGetUserConnectionResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GatewayGetUserConnectionResp>(create);
  static GatewayGetUserConnectionResp? _defaultInstance;

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
  $core.List<LongConnection> get connections => $_getList(1);
}

class GatewayBatchGetUserConnectionReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GatewayBatchGetUserConnectionReq', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pb'), createEmptyInstance: create)
    ..aOM<$0.RequestHeader>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'header', subBuilder: $0.RequestHeader.create)
    ..pPS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'userIds', protoName: 'userIds')
    ..hasRequiredFields = false
  ;

  GatewayBatchGetUserConnectionReq._() : super();
  factory GatewayBatchGetUserConnectionReq({
    $0.RequestHeader? header,
    $core.Iterable<$core.String>? userIds,
  }) {
    final _result = create();
    if (header != null) {
      _result.header = header;
    }
    if (userIds != null) {
      _result.userIds.addAll(userIds);
    }
    return _result;
  }
  factory GatewayBatchGetUserConnectionReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GatewayBatchGetUserConnectionReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GatewayBatchGetUserConnectionReq clone() => GatewayBatchGetUserConnectionReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GatewayBatchGetUserConnectionReq copyWith(void Function(GatewayBatchGetUserConnectionReq) updates) => super.copyWith((message) => updates(message as GatewayBatchGetUserConnectionReq)) as GatewayBatchGetUserConnectionReq; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GatewayBatchGetUserConnectionReq create() => GatewayBatchGetUserConnectionReq._();
  GatewayBatchGetUserConnectionReq createEmptyInstance() => create();
  static $pb.PbList<GatewayBatchGetUserConnectionReq> createRepeated() => $pb.PbList<GatewayBatchGetUserConnectionReq>();
  @$core.pragma('dart2js:noInline')
  static GatewayBatchGetUserConnectionReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GatewayBatchGetUserConnectionReq>(create);
  static GatewayBatchGetUserConnectionReq? _defaultInstance;

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
}

class GatewayBatchGetUserConnectionResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GatewayBatchGetUserConnectionResp', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pb'), createEmptyInstance: create)
    ..aOM<$0.ResponseHeader>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'header', subBuilder: $0.ResponseHeader.create)
    ..pc<LongConnection>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'connections', $pb.PbFieldType.PM, subBuilder: LongConnection.create)
    ..hasRequiredFields = false
  ;

  GatewayBatchGetUserConnectionResp._() : super();
  factory GatewayBatchGetUserConnectionResp({
    $0.ResponseHeader? header,
    $core.Iterable<LongConnection>? connections,
  }) {
    final _result = create();
    if (header != null) {
      _result.header = header;
    }
    if (connections != null) {
      _result.connections.addAll(connections);
    }
    return _result;
  }
  factory GatewayBatchGetUserConnectionResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GatewayBatchGetUserConnectionResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GatewayBatchGetUserConnectionResp clone() => GatewayBatchGetUserConnectionResp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GatewayBatchGetUserConnectionResp copyWith(void Function(GatewayBatchGetUserConnectionResp) updates) => super.copyWith((message) => updates(message as GatewayBatchGetUserConnectionResp)) as GatewayBatchGetUserConnectionResp; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GatewayBatchGetUserConnectionResp create() => GatewayBatchGetUserConnectionResp._();
  GatewayBatchGetUserConnectionResp createEmptyInstance() => create();
  static $pb.PbList<GatewayBatchGetUserConnectionResp> createRepeated() => $pb.PbList<GatewayBatchGetUserConnectionResp>();
  @$core.pragma('dart2js:noInline')
  static GatewayBatchGetUserConnectionResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GatewayBatchGetUserConnectionResp>(create);
  static GatewayBatchGetUserConnectionResp? _defaultInstance;

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
  $core.List<LongConnection> get connections => $_getList(1);
}

class GatewayGetConnectionFilter extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GatewayGetConnectionFilter', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pb'), createEmptyInstance: create)
    ..pPS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'userIds', protoName: 'userIds')
    ..hasRequiredFields = false
  ;

  GatewayGetConnectionFilter._() : super();
  factory GatewayGetConnectionFilter({
    $core.Iterable<$core.String>? userIds,
  }) {
    final _result = create();
    if (userIds != null) {
      _result.userIds.addAll(userIds);
    }
    return _result;
  }
  factory GatewayGetConnectionFilter.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GatewayGetConnectionFilter.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GatewayGetConnectionFilter clone() => GatewayGetConnectionFilter()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GatewayGetConnectionFilter copyWith(void Function(GatewayGetConnectionFilter) updates) => super.copyWith((message) => updates(message as GatewayGetConnectionFilter)) as GatewayGetConnectionFilter; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GatewayGetConnectionFilter create() => GatewayGetConnectionFilter._();
  GatewayGetConnectionFilter createEmptyInstance() => create();
  static $pb.PbList<GatewayGetConnectionFilter> createRepeated() => $pb.PbList<GatewayGetConnectionFilter>();
  @$core.pragma('dart2js:noInline')
  static GatewayGetConnectionFilter getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GatewayGetConnectionFilter>(create);
  static GatewayGetConnectionFilter? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.String> get userIds => $_getList(0);
}

class GatewayGetConnectionByFilterReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GatewayGetConnectionByFilterReq', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pb'), createEmptyInstance: create)
    ..aOM<$0.RequestHeader>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'header', subBuilder: $0.RequestHeader.create)
    ..aOM<GatewayGetConnectionFilter>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'filter', subBuilder: GatewayGetConnectionFilter.create)
    ..hasRequiredFields = false
  ;

  GatewayGetConnectionByFilterReq._() : super();
  factory GatewayGetConnectionByFilterReq({
    $0.RequestHeader? header,
    GatewayGetConnectionFilter? filter,
  }) {
    final _result = create();
    if (header != null) {
      _result.header = header;
    }
    if (filter != null) {
      _result.filter = filter;
    }
    return _result;
  }
  factory GatewayGetConnectionByFilterReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GatewayGetConnectionByFilterReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GatewayGetConnectionByFilterReq clone() => GatewayGetConnectionByFilterReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GatewayGetConnectionByFilterReq copyWith(void Function(GatewayGetConnectionByFilterReq) updates) => super.copyWith((message) => updates(message as GatewayGetConnectionByFilterReq)) as GatewayGetConnectionByFilterReq; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GatewayGetConnectionByFilterReq create() => GatewayGetConnectionByFilterReq._();
  GatewayGetConnectionByFilterReq createEmptyInstance() => create();
  static $pb.PbList<GatewayGetConnectionByFilterReq> createRepeated() => $pb.PbList<GatewayGetConnectionByFilterReq>();
  @$core.pragma('dart2js:noInline')
  static GatewayGetConnectionByFilterReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GatewayGetConnectionByFilterReq>(create);
  static GatewayGetConnectionByFilterReq? _defaultInstance;

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
  GatewayGetConnectionFilter get filter => $_getN(1);
  @$pb.TagNumber(2)
  set filter(GatewayGetConnectionFilter v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasFilter() => $_has(1);
  @$pb.TagNumber(2)
  void clearFilter() => clearField(2);
  @$pb.TagNumber(2)
  GatewayGetConnectionFilter ensureFilter() => $_ensure(1);
}

class GatewayGetConnectionByFilterResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GatewayGetConnectionByFilterResp', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pb'), createEmptyInstance: create)
    ..aOM<$0.ResponseHeader>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'header', subBuilder: $0.ResponseHeader.create)
    ..pc<LongConnection>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'connections', $pb.PbFieldType.PM, subBuilder: LongConnection.create)
    ..hasRequiredFields = false
  ;

  GatewayGetConnectionByFilterResp._() : super();
  factory GatewayGetConnectionByFilterResp({
    $0.ResponseHeader? header,
    $core.Iterable<LongConnection>? connections,
  }) {
    final _result = create();
    if (header != null) {
      _result.header = header;
    }
    if (connections != null) {
      _result.connections.addAll(connections);
    }
    return _result;
  }
  factory GatewayGetConnectionByFilterResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GatewayGetConnectionByFilterResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GatewayGetConnectionByFilterResp clone() => GatewayGetConnectionByFilterResp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GatewayGetConnectionByFilterResp copyWith(void Function(GatewayGetConnectionByFilterResp) updates) => super.copyWith((message) => updates(message as GatewayGetConnectionByFilterResp)) as GatewayGetConnectionByFilterResp; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GatewayGetConnectionByFilterResp create() => GatewayGetConnectionByFilterResp._();
  GatewayGetConnectionByFilterResp createEmptyInstance() => create();
  static $pb.PbList<GatewayGetConnectionByFilterResp> createRepeated() => $pb.PbList<GatewayGetConnectionByFilterResp>();
  @$core.pragma('dart2js:noInline')
  static GatewayGetConnectionByFilterResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GatewayGetConnectionByFilterResp>(create);
  static GatewayGetConnectionByFilterResp? _defaultInstance;

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
  $core.List<LongConnection> get connections => $_getList(1);
}

class GatewayWriteDataToWsReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GatewayWriteDataToWsReq', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pb'), createEmptyInstance: create)
    ..aOM<$0.RequestHeader>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'header', subBuilder: $0.RequestHeader.create)
    ..aOM<GatewayGetConnectionFilter>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'filter', subBuilder: GatewayGetConnectionFilter.create)
    ..aOM<GatewayWriteDataContent>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'data', subBuilder: GatewayWriteDataContent.create)
    ..hasRequiredFields = false
  ;

  GatewayWriteDataToWsReq._() : super();
  factory GatewayWriteDataToWsReq({
    $0.RequestHeader? header,
    GatewayGetConnectionFilter? filter,
    GatewayWriteDataContent? data,
  }) {
    final _result = create();
    if (header != null) {
      _result.header = header;
    }
    if (filter != null) {
      _result.filter = filter;
    }
    if (data != null) {
      _result.data = data;
    }
    return _result;
  }
  factory GatewayWriteDataToWsReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GatewayWriteDataToWsReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GatewayWriteDataToWsReq clone() => GatewayWriteDataToWsReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GatewayWriteDataToWsReq copyWith(void Function(GatewayWriteDataToWsReq) updates) => super.copyWith((message) => updates(message as GatewayWriteDataToWsReq)) as GatewayWriteDataToWsReq; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GatewayWriteDataToWsReq create() => GatewayWriteDataToWsReq._();
  GatewayWriteDataToWsReq createEmptyInstance() => create();
  static $pb.PbList<GatewayWriteDataToWsReq> createRepeated() => $pb.PbList<GatewayWriteDataToWsReq>();
  @$core.pragma('dart2js:noInline')
  static GatewayWriteDataToWsReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GatewayWriteDataToWsReq>(create);
  static GatewayWriteDataToWsReq? _defaultInstance;

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
  GatewayGetConnectionFilter get filter => $_getN(1);
  @$pb.TagNumber(2)
  set filter(GatewayGetConnectionFilter v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasFilter() => $_has(1);
  @$pb.TagNumber(2)
  void clearFilter() => clearField(2);
  @$pb.TagNumber(2)
  GatewayGetConnectionFilter ensureFilter() => $_ensure(1);

  @$pb.TagNumber(3)
  GatewayWriteDataContent get data => $_getN(2);
  @$pb.TagNumber(3)
  set data(GatewayWriteDataContent v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasData() => $_has(2);
  @$pb.TagNumber(3)
  void clearData() => clearField(3);
  @$pb.TagNumber(3)
  GatewayWriteDataContent ensureData() => $_ensure(2);
}

class GatewayWriteDataToWsResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GatewayWriteDataToWsResp', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pb'), createEmptyInstance: create)
    ..aOM<$0.ResponseHeader>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'header', subBuilder: $0.ResponseHeader.create)
    ..pc<LongConnection>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'successConnections', $pb.PbFieldType.PM, protoName: 'successConnections', subBuilder: LongConnection.create)
    ..hasRequiredFields = false
  ;

  GatewayWriteDataToWsResp._() : super();
  factory GatewayWriteDataToWsResp({
    $0.ResponseHeader? header,
    $core.Iterable<LongConnection>? successConnections,
  }) {
    final _result = create();
    if (header != null) {
      _result.header = header;
    }
    if (successConnections != null) {
      _result.successConnections.addAll(successConnections);
    }
    return _result;
  }
  factory GatewayWriteDataToWsResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GatewayWriteDataToWsResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GatewayWriteDataToWsResp clone() => GatewayWriteDataToWsResp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GatewayWriteDataToWsResp copyWith(void Function(GatewayWriteDataToWsResp) updates) => super.copyWith((message) => updates(message as GatewayWriteDataToWsResp)) as GatewayWriteDataToWsResp; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GatewayWriteDataToWsResp create() => GatewayWriteDataToWsResp._();
  GatewayWriteDataToWsResp createEmptyInstance() => create();
  static $pb.PbList<GatewayWriteDataToWsResp> createRepeated() => $pb.PbList<GatewayWriteDataToWsResp>();
  @$core.pragma('dart2js:noInline')
  static GatewayWriteDataToWsResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GatewayWriteDataToWsResp>(create);
  static GatewayWriteDataToWsResp? _defaultInstance;

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
  $core.List<LongConnection> get successConnections => $_getList(1);
}

class GatewayWriteDataToWsWrapperReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GatewayWriteDataToWsWrapperReq', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pb'), createEmptyInstance: create)
    ..aOM<$0.RequestHeader>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'header', subBuilder: $0.RequestHeader.create)
    ..aOM<GatewayGetConnectionFilter>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'filter', subBuilder: GatewayGetConnectionFilter.create)
    ..aOM<GatewayWriteDataContent>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'data', subBuilder: GatewayWriteDataContent.create)
    ..hasRequiredFields = false
  ;

  GatewayWriteDataToWsWrapperReq._() : super();
  factory GatewayWriteDataToWsWrapperReq({
    $0.RequestHeader? header,
    GatewayGetConnectionFilter? filter,
    GatewayWriteDataContent? data,
  }) {
    final _result = create();
    if (header != null) {
      _result.header = header;
    }
    if (filter != null) {
      _result.filter = filter;
    }
    if (data != null) {
      _result.data = data;
    }
    return _result;
  }
  factory GatewayWriteDataToWsWrapperReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GatewayWriteDataToWsWrapperReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GatewayWriteDataToWsWrapperReq clone() => GatewayWriteDataToWsWrapperReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GatewayWriteDataToWsWrapperReq copyWith(void Function(GatewayWriteDataToWsWrapperReq) updates) => super.copyWith((message) => updates(message as GatewayWriteDataToWsWrapperReq)) as GatewayWriteDataToWsWrapperReq; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GatewayWriteDataToWsWrapperReq create() => GatewayWriteDataToWsWrapperReq._();
  GatewayWriteDataToWsWrapperReq createEmptyInstance() => create();
  static $pb.PbList<GatewayWriteDataToWsWrapperReq> createRepeated() => $pb.PbList<GatewayWriteDataToWsWrapperReq>();
  @$core.pragma('dart2js:noInline')
  static GatewayWriteDataToWsWrapperReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GatewayWriteDataToWsWrapperReq>(create);
  static GatewayWriteDataToWsWrapperReq? _defaultInstance;

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
  GatewayGetConnectionFilter get filter => $_getN(1);
  @$pb.TagNumber(2)
  set filter(GatewayGetConnectionFilter v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasFilter() => $_has(1);
  @$pb.TagNumber(2)
  void clearFilter() => clearField(2);
  @$pb.TagNumber(2)
  GatewayGetConnectionFilter ensureFilter() => $_ensure(1);

  @$pb.TagNumber(3)
  GatewayWriteDataContent get data => $_getN(2);
  @$pb.TagNumber(3)
  set data(GatewayWriteDataContent v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasData() => $_has(2);
  @$pb.TagNumber(3)
  void clearData() => clearField(3);
  @$pb.TagNumber(3)
  GatewayWriteDataContent ensureData() => $_ensure(2);
}

class GatewayKickWsReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GatewayKickWsReq', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pb'), createEmptyInstance: create)
    ..aOM<$0.RequestHeader>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'header', subBuilder: $0.RequestHeader.create)
    ..aOM<GatewayGetConnectionFilter>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'filter', subBuilder: GatewayGetConnectionFilter.create)
    ..e<$0.WebsocketCustomCloseCode>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'closeCode', $pb.PbFieldType.OE, protoName: 'closeCode', defaultOrMaker: $0.WebsocketCustomCloseCode.CloseCodeZero, valueOf: $0.WebsocketCustomCloseCode.valueOf, enumValues: $0.WebsocketCustomCloseCode.values)
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'closeReason', protoName: 'closeReason')
    ..hasRequiredFields = false
  ;

  GatewayKickWsReq._() : super();
  factory GatewayKickWsReq({
    $0.RequestHeader? header,
    GatewayGetConnectionFilter? filter,
    $0.WebsocketCustomCloseCode? closeCode,
    $core.String? closeReason,
  }) {
    final _result = create();
    if (header != null) {
      _result.header = header;
    }
    if (filter != null) {
      _result.filter = filter;
    }
    if (closeCode != null) {
      _result.closeCode = closeCode;
    }
    if (closeReason != null) {
      _result.closeReason = closeReason;
    }
    return _result;
  }
  factory GatewayKickWsReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GatewayKickWsReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GatewayKickWsReq clone() => GatewayKickWsReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GatewayKickWsReq copyWith(void Function(GatewayKickWsReq) updates) => super.copyWith((message) => updates(message as GatewayKickWsReq)) as GatewayKickWsReq; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GatewayKickWsReq create() => GatewayKickWsReq._();
  GatewayKickWsReq createEmptyInstance() => create();
  static $pb.PbList<GatewayKickWsReq> createRepeated() => $pb.PbList<GatewayKickWsReq>();
  @$core.pragma('dart2js:noInline')
  static GatewayKickWsReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GatewayKickWsReq>(create);
  static GatewayKickWsReq? _defaultInstance;

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
  GatewayGetConnectionFilter get filter => $_getN(1);
  @$pb.TagNumber(2)
  set filter(GatewayGetConnectionFilter v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasFilter() => $_has(1);
  @$pb.TagNumber(2)
  void clearFilter() => clearField(2);
  @$pb.TagNumber(2)
  GatewayGetConnectionFilter ensureFilter() => $_ensure(1);

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
}

class GatewayKickWsResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GatewayKickWsResp', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pb'), createEmptyInstance: create)
    ..aOM<$0.ResponseHeader>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'header', subBuilder: $0.ResponseHeader.create)
    ..pc<LongConnection>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'successConnections', $pb.PbFieldType.PM, protoName: 'successConnections', subBuilder: LongConnection.create)
    ..hasRequiredFields = false
  ;

  GatewayKickWsResp._() : super();
  factory GatewayKickWsResp({
    $0.ResponseHeader? header,
    $core.Iterable<LongConnection>? successConnections,
  }) {
    final _result = create();
    if (header != null) {
      _result.header = header;
    }
    if (successConnections != null) {
      _result.successConnections.addAll(successConnections);
    }
    return _result;
  }
  factory GatewayKickWsResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GatewayKickWsResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GatewayKickWsResp clone() => GatewayKickWsResp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GatewayKickWsResp copyWith(void Function(GatewayKickWsResp) updates) => super.copyWith((message) => updates(message as GatewayKickWsResp)) as GatewayKickWsResp; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GatewayKickWsResp create() => GatewayKickWsResp._();
  GatewayKickWsResp createEmptyInstance() => create();
  static $pb.PbList<GatewayKickWsResp> createRepeated() => $pb.PbList<GatewayKickWsResp>();
  @$core.pragma('dart2js:noInline')
  static GatewayKickWsResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GatewayKickWsResp>(create);
  static GatewayKickWsResp? _defaultInstance;

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
  $core.List<LongConnection> get successConnections => $_getList(1);
}

class GatewayKeepAliveReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GatewayKeepAliveReq', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pb'), createEmptyInstance: create)
    ..aOM<$0.RequestHeader>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'header', subBuilder: $0.RequestHeader.create)
    ..hasRequiredFields = false
  ;

  GatewayKeepAliveReq._() : super();
  factory GatewayKeepAliveReq({
    $0.RequestHeader? header,
  }) {
    final _result = create();
    if (header != null) {
      _result.header = header;
    }
    return _result;
  }
  factory GatewayKeepAliveReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GatewayKeepAliveReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GatewayKeepAliveReq clone() => GatewayKeepAliveReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GatewayKeepAliveReq copyWith(void Function(GatewayKeepAliveReq) updates) => super.copyWith((message) => updates(message as GatewayKeepAliveReq)) as GatewayKeepAliveReq; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GatewayKeepAliveReq create() => GatewayKeepAliveReq._();
  GatewayKeepAliveReq createEmptyInstance() => create();
  static $pb.PbList<GatewayKeepAliveReq> createRepeated() => $pb.PbList<GatewayKeepAliveReq>();
  @$core.pragma('dart2js:noInline')
  static GatewayKeepAliveReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GatewayKeepAliveReq>(create);
  static GatewayKeepAliveReq? _defaultInstance;

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

class GatewayKeepAliveResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GatewayKeepAliveResp', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pb'), createEmptyInstance: create)
    ..aOM<$0.ResponseHeader>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'header', subBuilder: $0.ResponseHeader.create)
    ..hasRequiredFields = false
  ;

  GatewayKeepAliveResp._() : super();
  factory GatewayKeepAliveResp({
    $0.ResponseHeader? header,
  }) {
    final _result = create();
    if (header != null) {
      _result.header = header;
    }
    return _result;
  }
  factory GatewayKeepAliveResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GatewayKeepAliveResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GatewayKeepAliveResp clone() => GatewayKeepAliveResp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GatewayKeepAliveResp copyWith(void Function(GatewayKeepAliveResp) updates) => super.copyWith((message) => updates(message as GatewayKeepAliveResp)) as GatewayKeepAliveResp; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GatewayKeepAliveResp create() => GatewayKeepAliveResp._();
  GatewayKeepAliveResp createEmptyInstance() => create();
  static $pb.PbList<GatewayKeepAliveResp> createRepeated() => $pb.PbList<GatewayKeepAliveResp>();
  @$core.pragma('dart2js:noInline')
  static GatewayKeepAliveResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GatewayKeepAliveResp>(create);
  static GatewayKeepAliveResp? _defaultInstance;

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

class VerifyConnectionReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'VerifyConnectionReq', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pb'), createEmptyInstance: create)
    ..aOM<$0.RequestHeader>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'header', subBuilder: $0.RequestHeader.create)
    ..a<$core.List<$core.int>>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'publicKey', $pb.PbFieldType.OY, protoName: 'publicKey')
    ..hasRequiredFields = false
  ;

  VerifyConnectionReq._() : super();
  factory VerifyConnectionReq({
    $0.RequestHeader? header,
    $core.List<$core.int>? publicKey,
  }) {
    final _result = create();
    if (header != null) {
      _result.header = header;
    }
    if (publicKey != null) {
      _result.publicKey = publicKey;
    }
    return _result;
  }
  factory VerifyConnectionReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory VerifyConnectionReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  VerifyConnectionReq clone() => VerifyConnectionReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  VerifyConnectionReq copyWith(void Function(VerifyConnectionReq) updates) => super.copyWith((message) => updates(message as VerifyConnectionReq)) as VerifyConnectionReq; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static VerifyConnectionReq create() => VerifyConnectionReq._();
  VerifyConnectionReq createEmptyInstance() => create();
  static $pb.PbList<VerifyConnectionReq> createRepeated() => $pb.PbList<VerifyConnectionReq>();
  @$core.pragma('dart2js:noInline')
  static VerifyConnectionReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<VerifyConnectionReq>(create);
  static VerifyConnectionReq? _defaultInstance;

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
  $core.List<$core.int> get publicKey => $_getN(1);
  @$pb.TagNumber(2)
  set publicKey($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPublicKey() => $_has(1);
  @$pb.TagNumber(2)
  void clearPublicKey() => clearField(2);
}

class VerifyConnectionResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'VerifyConnectionResp', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pb'), createEmptyInstance: create)
    ..aOM<$0.ResponseHeader>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'header', subBuilder: $0.ResponseHeader.create)
    ..a<$core.List<$core.int>>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'publicKey', $pb.PbFieldType.OY, protoName: 'publicKey')
    ..hasRequiredFields = false
  ;

  VerifyConnectionResp._() : super();
  factory VerifyConnectionResp({
    $0.ResponseHeader? header,
    $core.List<$core.int>? publicKey,
  }) {
    final _result = create();
    if (header != null) {
      _result.header = header;
    }
    if (publicKey != null) {
      _result.publicKey = publicKey;
    }
    return _result;
  }
  factory VerifyConnectionResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory VerifyConnectionResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  VerifyConnectionResp clone() => VerifyConnectionResp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  VerifyConnectionResp copyWith(void Function(VerifyConnectionResp) updates) => super.copyWith((message) => updates(message as VerifyConnectionResp)) as VerifyConnectionResp; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static VerifyConnectionResp create() => VerifyConnectionResp._();
  VerifyConnectionResp createEmptyInstance() => create();
  static $pb.PbList<VerifyConnectionResp> createRepeated() => $pb.PbList<VerifyConnectionResp>();
  @$core.pragma('dart2js:noInline')
  static VerifyConnectionResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<VerifyConnectionResp>(create);
  static VerifyConnectionResp? _defaultInstance;

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
  $core.List<$core.int> get publicKey => $_getN(1);
  @$pb.TagNumber(2)
  set publicKey($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPublicKey() => $_has(1);
  @$pb.TagNumber(2)
  void clearPublicKey() => clearField(2);
}

class AuthenticationConnectionReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AuthenticationConnectionReq', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pb'), createEmptyInstance: create)
    ..aOM<$0.RequestHeader>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'header', subBuilder: $0.RequestHeader.create)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'userId', protoName: 'userId')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'token')
    ..hasRequiredFields = false
  ;

  AuthenticationConnectionReq._() : super();
  factory AuthenticationConnectionReq({
    $0.RequestHeader? header,
    $core.String? userId,
    $core.String? token,
  }) {
    final _result = create();
    if (header != null) {
      _result.header = header;
    }
    if (userId != null) {
      _result.userId = userId;
    }
    if (token != null) {
      _result.token = token;
    }
    return _result;
  }
  factory AuthenticationConnectionReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AuthenticationConnectionReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AuthenticationConnectionReq clone() => AuthenticationConnectionReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AuthenticationConnectionReq copyWith(void Function(AuthenticationConnectionReq) updates) => super.copyWith((message) => updates(message as AuthenticationConnectionReq)) as AuthenticationConnectionReq; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AuthenticationConnectionReq create() => AuthenticationConnectionReq._();
  AuthenticationConnectionReq createEmptyInstance() => create();
  static $pb.PbList<AuthenticationConnectionReq> createRepeated() => $pb.PbList<AuthenticationConnectionReq>();
  @$core.pragma('dart2js:noInline')
  static AuthenticationConnectionReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AuthenticationConnectionReq>(create);
  static AuthenticationConnectionReq? _defaultInstance;

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
  $core.String get token => $_getSZ(2);
  @$pb.TagNumber(3)
  set token($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasToken() => $_has(2);
  @$pb.TagNumber(3)
  void clearToken() => clearField(3);
}

class AuthenticationConnectionResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AuthenticationConnectionResp', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pb'), createEmptyInstance: create)
    ..aOM<$0.ResponseHeader>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'header', subBuilder: $0.ResponseHeader.create)
    ..aOB(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'success')
    ..hasRequiredFields = false
  ;

  AuthenticationConnectionResp._() : super();
  factory AuthenticationConnectionResp({
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
  factory AuthenticationConnectionResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AuthenticationConnectionResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AuthenticationConnectionResp clone() => AuthenticationConnectionResp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AuthenticationConnectionResp copyWith(void Function(AuthenticationConnectionResp) updates) => super.copyWith((message) => updates(message as AuthenticationConnectionResp)) as AuthenticationConnectionResp; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AuthenticationConnectionResp create() => AuthenticationConnectionResp._();
  AuthenticationConnectionResp createEmptyInstance() => create();
  static $pb.PbList<AuthenticationConnectionResp> createRepeated() => $pb.PbList<AuthenticationConnectionResp>();
  @$core.pragma('dart2js:noInline')
  static AuthenticationConnectionResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AuthenticationConnectionResp>(create);
  static AuthenticationConnectionResp? _defaultInstance;

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

class gatewayServiceApi {
  $pb.RpcClient _client;
  gatewayServiceApi(this._client);

  $async.Future<GatewayGetUserConnectionResp> gatewayGetUserConnection($pb.ClientContext? ctx, GatewayGetUserConnectionReq request) {
    var emptyResponse = GatewayGetUserConnectionResp();
    return _client.invoke<GatewayGetUserConnectionResp>(ctx, 'gatewayService', 'GatewayGetUserConnection', request, emptyResponse);
  }
  $async.Future<GatewayBatchGetUserConnectionResp> gatewayBatchGetUserConnection($pb.ClientContext? ctx, GatewayBatchGetUserConnectionReq request) {
    var emptyResponse = GatewayBatchGetUserConnectionResp();
    return _client.invoke<GatewayBatchGetUserConnectionResp>(ctx, 'gatewayService', 'GatewayBatchGetUserConnection', request, emptyResponse);
  }
  $async.Future<GatewayGetConnectionByFilterResp> gatewayGetConnectionByFilter($pb.ClientContext? ctx, GatewayGetConnectionByFilterReq request) {
    var emptyResponse = GatewayGetConnectionByFilterResp();
    return _client.invoke<GatewayGetConnectionByFilterResp>(ctx, 'gatewayService', 'GatewayGetConnectionByFilter', request, emptyResponse);
  }
  $async.Future<GatewayWriteDataToWsResp> gatewayWriteDataToWs($pb.ClientContext? ctx, GatewayWriteDataToWsReq request) {
    var emptyResponse = GatewayWriteDataToWsResp();
    return _client.invoke<GatewayWriteDataToWsResp>(ctx, 'gatewayService', 'GatewayWriteDataToWs', request, emptyResponse);
  }
  $async.Future<GatewayWriteDataToWsResp> gatewayWriteDataToWsWrapper($pb.ClientContext? ctx, GatewayWriteDataToWsWrapperReq request) {
    var emptyResponse = GatewayWriteDataToWsResp();
    return _client.invoke<GatewayWriteDataToWsResp>(ctx, 'gatewayService', 'GatewayWriteDataToWsWrapper', request, emptyResponse);
  }
  $async.Future<GatewayKickWsResp> gatewayKickWs($pb.ClientContext? ctx, GatewayKickWsReq request) {
    var emptyResponse = GatewayKickWsResp();
    return _client.invoke<GatewayKickWsResp>(ctx, 'gatewayService', 'GatewayKickWs', request, emptyResponse);
  }
  $async.Future<GatewayKeepAliveResp> gatewayKeepAlive($pb.ClientContext? ctx, GatewayKeepAliveReq request) {
    var emptyResponse = GatewayKeepAliveResp();
    return _client.invoke<GatewayKeepAliveResp>(ctx, 'gatewayService', 'GatewayKeepAlive', request, emptyResponse);
  }
  $async.Future<VerifyConnectionResp> verifyConnection($pb.ClientContext? ctx, VerifyConnectionReq request) {
    var emptyResponse = VerifyConnectionResp();
    return _client.invoke<VerifyConnectionResp>(ctx, 'gatewayService', 'VerifyConnection', request, emptyResponse);
  }
  $async.Future<AuthenticationConnectionResp> authenticationConnection($pb.ClientContext? ctx, AuthenticationConnectionReq request) {
    var emptyResponse = AuthenticationConnectionResp();
    return _client.invoke<AuthenticationConnectionResp>(ctx, 'gatewayService', 'AuthenticationConnection', request, emptyResponse);
  }
}

