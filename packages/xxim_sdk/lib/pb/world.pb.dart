///
//  Generated code. Do not modify.
//  source: world.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'common.pb.dart' as $0;

class WorldPostSubmitReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'WorldPostSubmitReq', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pb'), createEmptyInstance: create)
    ..aOM<$0.RequestHeader>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'header', subBuilder: $0.RequestHeader.create)
    ..hasRequiredFields = false
  ;

  WorldPostSubmitReq._() : super();
  factory WorldPostSubmitReq({
    $0.RequestHeader? header,
  }) {
    final _result = create();
    if (header != null) {
      _result.header = header;
    }
    return _result;
  }
  factory WorldPostSubmitReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WorldPostSubmitReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WorldPostSubmitReq clone() => WorldPostSubmitReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WorldPostSubmitReq copyWith(void Function(WorldPostSubmitReq) updates) => super.copyWith((message) => updates(message as WorldPostSubmitReq)) as WorldPostSubmitReq; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static WorldPostSubmitReq create() => WorldPostSubmitReq._();
  WorldPostSubmitReq createEmptyInstance() => create();
  static $pb.PbList<WorldPostSubmitReq> createRepeated() => $pb.PbList<WorldPostSubmitReq>();
  @$core.pragma('dart2js:noInline')
  static WorldPostSubmitReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WorldPostSubmitReq>(create);
  static WorldPostSubmitReq? _defaultInstance;

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

class WorldPostSubmitResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'WorldPostSubmitResp', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pb'), createEmptyInstance: create)
    ..aOM<$0.ResponseHeader>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'header', subBuilder: $0.ResponseHeader.create)
    ..hasRequiredFields = false
  ;

  WorldPostSubmitResp._() : super();
  factory WorldPostSubmitResp({
    $0.ResponseHeader? header,
  }) {
    final _result = create();
    if (header != null) {
      _result.header = header;
    }
    return _result;
  }
  factory WorldPostSubmitResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WorldPostSubmitResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WorldPostSubmitResp clone() => WorldPostSubmitResp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WorldPostSubmitResp copyWith(void Function(WorldPostSubmitResp) updates) => super.copyWith((message) => updates(message as WorldPostSubmitResp)) as WorldPostSubmitResp; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static WorldPostSubmitResp create() => WorldPostSubmitResp._();
  WorldPostSubmitResp createEmptyInstance() => create();
  static $pb.PbList<WorldPostSubmitResp> createRepeated() => $pb.PbList<WorldPostSubmitResp>();
  @$core.pragma('dart2js:noInline')
  static WorldPostSubmitResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WorldPostSubmitResp>(create);
  static WorldPostSubmitResp? _defaultInstance;

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

class worldServiceApi {
  $pb.RpcClient _client;
  worldServiceApi(this._client);

  $async.Future<WorldPostSubmitResp> worldPostSubmit($pb.ClientContext? ctx, WorldPostSubmitReq request) {
    var emptyResponse = WorldPostSubmitResp();
    return _client.invoke<WorldPostSubmitResp>(ctx, 'worldService', 'WorldPostSubmit', request, emptyResponse);
  }
}

