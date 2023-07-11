///
//  Generated code. Do not modify.
//  source: conversation.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'common.pb.dart' as $0;

import 'conversation.pbenum.dart';
import 'common.pbenum.dart' as $0;

export 'conversation.pbenum.dart';

class GroupCreateReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GroupCreateReq', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pb'), createEmptyInstance: create)
    ..aOM<$0.RequestHeader>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'header', subBuilder: $0.RequestHeader.create)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'avatar')
    ..pPS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'memberList', protoName: 'memberList')
    ..m<$core.String, $core.String>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'infoMap', protoName: 'infoMap', entryClassName: 'GroupCreateReq.InfoMapEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OS, packageName: const $pb.PackageName('pb'))
    ..m<$core.String, $core.String>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'extraMap', protoName: 'extraMap', entryClassName: 'GroupCreateReq.ExtraMapEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OS, packageName: const $pb.PackageName('pb'))
    ..hasRequiredFields = false
  ;

  GroupCreateReq._() : super();
  factory GroupCreateReq({
    $0.RequestHeader? header,
    $core.String? name,
    $core.String? avatar,
    $core.Iterable<$core.String>? memberList,
    $core.Map<$core.String, $core.String>? infoMap,
    $core.Map<$core.String, $core.String>? extraMap,
  }) {
    final _result = create();
    if (header != null) {
      _result.header = header;
    }
    if (name != null) {
      _result.name = name;
    }
    if (avatar != null) {
      _result.avatar = avatar;
    }
    if (memberList != null) {
      _result.memberList.addAll(memberList);
    }
    if (infoMap != null) {
      _result.infoMap.addAll(infoMap);
    }
    if (extraMap != null) {
      _result.extraMap.addAll(extraMap);
    }
    return _result;
  }
  factory GroupCreateReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GroupCreateReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GroupCreateReq clone() => GroupCreateReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GroupCreateReq copyWith(void Function(GroupCreateReq) updates) => super.copyWith((message) => updates(message as GroupCreateReq)) as GroupCreateReq; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GroupCreateReq create() => GroupCreateReq._();
  GroupCreateReq createEmptyInstance() => create();
  static $pb.PbList<GroupCreateReq> createRepeated() => $pb.PbList<GroupCreateReq>();
  @$core.pragma('dart2js:noInline')
  static GroupCreateReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GroupCreateReq>(create);
  static GroupCreateReq? _defaultInstance;

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

  @$pb.TagNumber(4)
  $core.List<$core.String> get memberList => $_getList(3);

  @$pb.TagNumber(5)
  $core.Map<$core.String, $core.String> get infoMap => $_getMap(4);

  @$pb.TagNumber(6)
  $core.Map<$core.String, $core.String> get extraMap => $_getMap(5);
}

class GroupCreateResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GroupCreateResp', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pb'), createEmptyInstance: create)
    ..aOM<$0.ResponseHeader>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'header', subBuilder: $0.ResponseHeader.create)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'groupId', protoName: 'groupId')
    ..hasRequiredFields = false
  ;

  GroupCreateResp._() : super();
  factory GroupCreateResp({
    $0.ResponseHeader? header,
    $core.String? groupId,
  }) {
    final _result = create();
    if (header != null) {
      _result.header = header;
    }
    if (groupId != null) {
      _result.groupId = groupId;
    }
    return _result;
  }
  factory GroupCreateResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GroupCreateResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GroupCreateResp clone() => GroupCreateResp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GroupCreateResp copyWith(void Function(GroupCreateResp) updates) => super.copyWith((message) => updates(message as GroupCreateResp)) as GroupCreateResp; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GroupCreateResp create() => GroupCreateResp._();
  GroupCreateResp createEmptyInstance() => create();
  static $pb.PbList<GroupCreateResp> createRepeated() => $pb.PbList<GroupCreateResp>();
  @$core.pragma('dart2js:noInline')
  static GroupCreateResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GroupCreateResp>(create);
  static GroupCreateResp? _defaultInstance;

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
  $core.String get groupId => $_getSZ(1);
  @$pb.TagNumber(2)
  set groupId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasGroupId() => $_has(1);
  @$pb.TagNumber(2)
  void clearGroupId() => clearField(2);
}

class CountJoinGroupReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CountJoinGroupReq', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pb'), createEmptyInstance: create)
    ..aOM<$0.RequestHeader>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'header', subBuilder: $0.RequestHeader.create)
    ..hasRequiredFields = false
  ;

  CountJoinGroupReq._() : super();
  factory CountJoinGroupReq({
    $0.RequestHeader? header,
  }) {
    final _result = create();
    if (header != null) {
      _result.header = header;
    }
    return _result;
  }
  factory CountJoinGroupReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CountJoinGroupReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CountJoinGroupReq clone() => CountJoinGroupReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CountJoinGroupReq copyWith(void Function(CountJoinGroupReq) updates) => super.copyWith((message) => updates(message as CountJoinGroupReq)) as CountJoinGroupReq; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CountJoinGroupReq create() => CountJoinGroupReq._();
  CountJoinGroupReq createEmptyInstance() => create();
  static $pb.PbList<CountJoinGroupReq> createRepeated() => $pb.PbList<CountJoinGroupReq>();
  @$core.pragma('dart2js:noInline')
  static CountJoinGroupReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CountJoinGroupReq>(create);
  static CountJoinGroupReq? _defaultInstance;

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

class CountJoinGroupResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CountJoinGroupResp', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pb'), createEmptyInstance: create)
    ..aOM<$0.ResponseHeader>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'header', subBuilder: $0.ResponseHeader.create)
    ..aInt64(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'count')
    ..hasRequiredFields = false
  ;

  CountJoinGroupResp._() : super();
  factory CountJoinGroupResp({
    $0.ResponseHeader? header,
    $fixnum.Int64? count,
  }) {
    final _result = create();
    if (header != null) {
      _result.header = header;
    }
    if (count != null) {
      _result.count = count;
    }
    return _result;
  }
  factory CountJoinGroupResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CountJoinGroupResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CountJoinGroupResp clone() => CountJoinGroupResp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CountJoinGroupResp copyWith(void Function(CountJoinGroupResp) updates) => super.copyWith((message) => updates(message as CountJoinGroupResp)) as CountJoinGroupResp; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CountJoinGroupResp create() => CountJoinGroupResp._();
  CountJoinGroupResp createEmptyInstance() => create();
  static $pb.PbList<CountJoinGroupResp> createRepeated() => $pb.PbList<CountJoinGroupResp>();
  @$core.pragma('dart2js:noInline')
  static CountJoinGroupResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CountJoinGroupResp>(create);
  static CountJoinGroupResp? _defaultInstance;

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
  $fixnum.Int64 get count => $_getI64(1);
  @$pb.TagNumber(2)
  set count($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCount() => $_has(1);
  @$pb.TagNumber(2)
  void clearCount() => clearField(2);
}

class CountCreateGroupReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CountCreateGroupReq', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pb'), createEmptyInstance: create)
    ..aOM<$0.RequestHeader>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'header', subBuilder: $0.RequestHeader.create)
    ..hasRequiredFields = false
  ;

  CountCreateGroupReq._() : super();
  factory CountCreateGroupReq({
    $0.RequestHeader? header,
  }) {
    final _result = create();
    if (header != null) {
      _result.header = header;
    }
    return _result;
  }
  factory CountCreateGroupReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CountCreateGroupReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CountCreateGroupReq clone() => CountCreateGroupReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CountCreateGroupReq copyWith(void Function(CountCreateGroupReq) updates) => super.copyWith((message) => updates(message as CountCreateGroupReq)) as CountCreateGroupReq; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CountCreateGroupReq create() => CountCreateGroupReq._();
  CountCreateGroupReq createEmptyInstance() => create();
  static $pb.PbList<CountCreateGroupReq> createRepeated() => $pb.PbList<CountCreateGroupReq>();
  @$core.pragma('dart2js:noInline')
  static CountCreateGroupReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CountCreateGroupReq>(create);
  static CountCreateGroupReq? _defaultInstance;

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

class CountCreateGroupResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CountCreateGroupResp', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pb'), createEmptyInstance: create)
    ..aOM<$0.ResponseHeader>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'header', subBuilder: $0.ResponseHeader.create)
    ..aInt64(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'count')
    ..hasRequiredFields = false
  ;

  CountCreateGroupResp._() : super();
  factory CountCreateGroupResp({
    $0.ResponseHeader? header,
    $fixnum.Int64? count,
  }) {
    final _result = create();
    if (header != null) {
      _result.header = header;
    }
    if (count != null) {
      _result.count = count;
    }
    return _result;
  }
  factory CountCreateGroupResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CountCreateGroupResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CountCreateGroupResp clone() => CountCreateGroupResp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CountCreateGroupResp copyWith(void Function(CountCreateGroupResp) updates) => super.copyWith((message) => updates(message as CountCreateGroupResp)) as CountCreateGroupResp; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CountCreateGroupResp create() => CountCreateGroupResp._();
  CountCreateGroupResp createEmptyInstance() => create();
  static $pb.PbList<CountCreateGroupResp> createRepeated() => $pb.PbList<CountCreateGroupResp>();
  @$core.pragma('dart2js:noInline')
  static CountCreateGroupResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CountCreateGroupResp>(create);
  static CountCreateGroupResp? _defaultInstance;

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
  $fixnum.Int64 get count => $_getI64(1);
  @$pb.TagNumber(2)
  set count($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCount() => $_has(1);
  @$pb.TagNumber(2)
  void clearCount() => clearField(2);
}

class GroupSubscribeReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GroupSubscribeReq', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pb'), createEmptyInstance: create)
    ..aOM<$0.RequestHeader>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'header', subBuilder: $0.RequestHeader.create)
    ..hasRequiredFields = false
  ;

  GroupSubscribeReq._() : super();
  factory GroupSubscribeReq({
    $0.RequestHeader? header,
  }) {
    final _result = create();
    if (header != null) {
      _result.header = header;
    }
    return _result;
  }
  factory GroupSubscribeReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GroupSubscribeReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GroupSubscribeReq clone() => GroupSubscribeReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GroupSubscribeReq copyWith(void Function(GroupSubscribeReq) updates) => super.copyWith((message) => updates(message as GroupSubscribeReq)) as GroupSubscribeReq; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GroupSubscribeReq create() => GroupSubscribeReq._();
  GroupSubscribeReq createEmptyInstance() => create();
  static $pb.PbList<GroupSubscribeReq> createRepeated() => $pb.PbList<GroupSubscribeReq>();
  @$core.pragma('dart2js:noInline')
  static GroupSubscribeReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GroupSubscribeReq>(create);
  static GroupSubscribeReq? _defaultInstance;

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

class GroupSubscribeResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GroupSubscribeResp', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pb'), createEmptyInstance: create)
    ..aOM<$0.ResponseHeader>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'header', subBuilder: $0.ResponseHeader.create)
    ..hasRequiredFields = false
  ;

  GroupSubscribeResp._() : super();
  factory GroupSubscribeResp({
    $0.ResponseHeader? header,
  }) {
    final _result = create();
    if (header != null) {
      _result.header = header;
    }
    return _result;
  }
  factory GroupSubscribeResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GroupSubscribeResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GroupSubscribeResp clone() => GroupSubscribeResp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GroupSubscribeResp copyWith(void Function(GroupSubscribeResp) updates) => super.copyWith((message) => updates(message as GroupSubscribeResp)) as GroupSubscribeResp; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GroupSubscribeResp create() => GroupSubscribeResp._();
  GroupSubscribeResp createEmptyInstance() => create();
  static $pb.PbList<GroupSubscribeResp> createRepeated() => $pb.PbList<GroupSubscribeResp>();
  @$core.pragma('dart2js:noInline')
  static GroupSubscribeResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GroupSubscribeResp>(create);
  static GroupSubscribeResp? _defaultInstance;

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

class ListGroupSubscribersReq_Filter extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ListGroupSubscribersReq.Filter', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pb'), createEmptyInstance: create)
    ..aInt64(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'subscribeTimeGte', protoName: 'subscribeTimeGte')
    ..hasRequiredFields = false
  ;

  ListGroupSubscribersReq_Filter._() : super();
  factory ListGroupSubscribersReq_Filter({
    $fixnum.Int64? subscribeTimeGte,
  }) {
    final _result = create();
    if (subscribeTimeGte != null) {
      _result.subscribeTimeGte = subscribeTimeGte;
    }
    return _result;
  }
  factory ListGroupSubscribersReq_Filter.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListGroupSubscribersReq_Filter.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListGroupSubscribersReq_Filter clone() => ListGroupSubscribersReq_Filter()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListGroupSubscribersReq_Filter copyWith(void Function(ListGroupSubscribersReq_Filter) updates) => super.copyWith((message) => updates(message as ListGroupSubscribersReq_Filter)) as ListGroupSubscribersReq_Filter; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListGroupSubscribersReq_Filter create() => ListGroupSubscribersReq_Filter._();
  ListGroupSubscribersReq_Filter createEmptyInstance() => create();
  static $pb.PbList<ListGroupSubscribersReq_Filter> createRepeated() => $pb.PbList<ListGroupSubscribersReq_Filter>();
  @$core.pragma('dart2js:noInline')
  static ListGroupSubscribersReq_Filter getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListGroupSubscribersReq_Filter>(create);
  static ListGroupSubscribersReq_Filter? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get subscribeTimeGte => $_getI64(0);
  @$pb.TagNumber(1)
  set subscribeTimeGte($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSubscribeTimeGte() => $_has(0);
  @$pb.TagNumber(1)
  void clearSubscribeTimeGte() => clearField(1);
}

class ListGroupSubscribersReq_Option extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ListGroupSubscribersReq.Option', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pb'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  ListGroupSubscribersReq_Option._() : super();
  factory ListGroupSubscribersReq_Option() => create();
  factory ListGroupSubscribersReq_Option.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListGroupSubscribersReq_Option.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListGroupSubscribersReq_Option clone() => ListGroupSubscribersReq_Option()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListGroupSubscribersReq_Option copyWith(void Function(ListGroupSubscribersReq_Option) updates) => super.copyWith((message) => updates(message as ListGroupSubscribersReq_Option)) as ListGroupSubscribersReq_Option; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListGroupSubscribersReq_Option create() => ListGroupSubscribersReq_Option._();
  ListGroupSubscribersReq_Option createEmptyInstance() => create();
  static $pb.PbList<ListGroupSubscribersReq_Option> createRepeated() => $pb.PbList<ListGroupSubscribersReq_Option>();
  @$core.pragma('dart2js:noInline')
  static ListGroupSubscribersReq_Option getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListGroupSubscribersReq_Option>(create);
  static ListGroupSubscribersReq_Option? _defaultInstance;
}

class ListGroupSubscribersReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ListGroupSubscribersReq', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pb'), createEmptyInstance: create)
    ..aOM<$0.RequestHeader>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'header', subBuilder: $0.RequestHeader.create)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'groupId', protoName: 'groupId')
    ..aInt64(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'cursor')
    ..aInt64(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'limit')
    ..aOM<ListGroupSubscribersReq_Filter>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'filter', subBuilder: ListGroupSubscribersReq_Filter.create)
    ..aOM<ListGroupSubscribersReq_Option>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'option', subBuilder: ListGroupSubscribersReq_Option.create)
    ..hasRequiredFields = false
  ;

  ListGroupSubscribersReq._() : super();
  factory ListGroupSubscribersReq({
    $0.RequestHeader? header,
    $core.String? groupId,
    $fixnum.Int64? cursor,
    $fixnum.Int64? limit,
    ListGroupSubscribersReq_Filter? filter,
    ListGroupSubscribersReq_Option? option,
  }) {
    final _result = create();
    if (header != null) {
      _result.header = header;
    }
    if (groupId != null) {
      _result.groupId = groupId;
    }
    if (cursor != null) {
      _result.cursor = cursor;
    }
    if (limit != null) {
      _result.limit = limit;
    }
    if (filter != null) {
      _result.filter = filter;
    }
    if (option != null) {
      _result.option = option;
    }
    return _result;
  }
  factory ListGroupSubscribersReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListGroupSubscribersReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListGroupSubscribersReq clone() => ListGroupSubscribersReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListGroupSubscribersReq copyWith(void Function(ListGroupSubscribersReq) updates) => super.copyWith((message) => updates(message as ListGroupSubscribersReq)) as ListGroupSubscribersReq; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListGroupSubscribersReq create() => ListGroupSubscribersReq._();
  ListGroupSubscribersReq createEmptyInstance() => create();
  static $pb.PbList<ListGroupSubscribersReq> createRepeated() => $pb.PbList<ListGroupSubscribersReq>();
  @$core.pragma('dart2js:noInline')
  static ListGroupSubscribersReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListGroupSubscribersReq>(create);
  static ListGroupSubscribersReq? _defaultInstance;

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
  $core.String get groupId => $_getSZ(1);
  @$pb.TagNumber(2)
  set groupId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasGroupId() => $_has(1);
  @$pb.TagNumber(2)
  void clearGroupId() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get cursor => $_getI64(2);
  @$pb.TagNumber(3)
  set cursor($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasCursor() => $_has(2);
  @$pb.TagNumber(3)
  void clearCursor() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get limit => $_getI64(3);
  @$pb.TagNumber(4)
  set limit($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasLimit() => $_has(3);
  @$pb.TagNumber(4)
  void clearLimit() => clearField(4);

  @$pb.TagNumber(5)
  ListGroupSubscribersReq_Filter get filter => $_getN(4);
  @$pb.TagNumber(5)
  set filter(ListGroupSubscribersReq_Filter v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasFilter() => $_has(4);
  @$pb.TagNumber(5)
  void clearFilter() => clearField(5);
  @$pb.TagNumber(5)
  ListGroupSubscribersReq_Filter ensureFilter() => $_ensure(4);

  @$pb.TagNumber(6)
  ListGroupSubscribersReq_Option get option => $_getN(5);
  @$pb.TagNumber(6)
  set option(ListGroupSubscribersReq_Option v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasOption() => $_has(5);
  @$pb.TagNumber(6)
  void clearOption() => clearField(6);
  @$pb.TagNumber(6)
  ListGroupSubscribersReq_Option ensureOption() => $_ensure(5);
}

class ListGroupSubscribersResp_Subscriber extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ListGroupSubscribersResp.Subscriber', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pb'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'userId', protoName: 'userId')
    ..aInt64(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'subscribeTime', protoName: 'subscribeTime')
    ..hasRequiredFields = false
  ;

  ListGroupSubscribersResp_Subscriber._() : super();
  factory ListGroupSubscribersResp_Subscriber({
    $core.String? userId,
    $fixnum.Int64? subscribeTime,
  }) {
    final _result = create();
    if (userId != null) {
      _result.userId = userId;
    }
    if (subscribeTime != null) {
      _result.subscribeTime = subscribeTime;
    }
    return _result;
  }
  factory ListGroupSubscribersResp_Subscriber.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListGroupSubscribersResp_Subscriber.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListGroupSubscribersResp_Subscriber clone() => ListGroupSubscribersResp_Subscriber()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListGroupSubscribersResp_Subscriber copyWith(void Function(ListGroupSubscribersResp_Subscriber) updates) => super.copyWith((message) => updates(message as ListGroupSubscribersResp_Subscriber)) as ListGroupSubscribersResp_Subscriber; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListGroupSubscribersResp_Subscriber create() => ListGroupSubscribersResp_Subscriber._();
  ListGroupSubscribersResp_Subscriber createEmptyInstance() => create();
  static $pb.PbList<ListGroupSubscribersResp_Subscriber> createRepeated() => $pb.PbList<ListGroupSubscribersResp_Subscriber>();
  @$core.pragma('dart2js:noInline')
  static ListGroupSubscribersResp_Subscriber getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListGroupSubscribersResp_Subscriber>(create);
  static ListGroupSubscribersResp_Subscriber? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get userId => $_getSZ(0);
  @$pb.TagNumber(1)
  set userId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUserId() => $_has(0);
  @$pb.TagNumber(1)
  void clearUserId() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get subscribeTime => $_getI64(1);
  @$pb.TagNumber(2)
  set subscribeTime($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSubscribeTime() => $_has(1);
  @$pb.TagNumber(2)
  void clearSubscribeTime() => clearField(2);
}

class ListGroupSubscribersResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ListGroupSubscribersResp', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pb'), createEmptyInstance: create)
    ..aOM<$0.ResponseHeader>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'header', subBuilder: $0.ResponseHeader.create)
    ..pc<ListGroupSubscribersResp_Subscriber>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'subscriberList', $pb.PbFieldType.PM, protoName: 'subscriberList', subBuilder: ListGroupSubscribersResp_Subscriber.create)
    ..hasRequiredFields = false
  ;

  ListGroupSubscribersResp._() : super();
  factory ListGroupSubscribersResp({
    $0.ResponseHeader? header,
    $core.Iterable<ListGroupSubscribersResp_Subscriber>? subscriberList,
  }) {
    final _result = create();
    if (header != null) {
      _result.header = header;
    }
    if (subscriberList != null) {
      _result.subscriberList.addAll(subscriberList);
    }
    return _result;
  }
  factory ListGroupSubscribersResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListGroupSubscribersResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListGroupSubscribersResp clone() => ListGroupSubscribersResp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListGroupSubscribersResp copyWith(void Function(ListGroupSubscribersResp) updates) => super.copyWith((message) => updates(message as ListGroupSubscribersResp)) as ListGroupSubscribersResp; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListGroupSubscribersResp create() => ListGroupSubscribersResp._();
  ListGroupSubscribersResp createEmptyInstance() => create();
  static $pb.PbList<ListGroupSubscribersResp> createRepeated() => $pb.PbList<ListGroupSubscribersResp>();
  @$core.pragma('dart2js:noInline')
  static ListGroupSubscribersResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListGroupSubscribersResp>(create);
  static ListGroupSubscribersResp? _defaultInstance;

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
  $core.List<ListGroupSubscribersResp_Subscriber> get subscriberList => $_getList(1);
}

class FriendApplyReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'FriendApplyReq', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pb'), createEmptyInstance: create)
    ..aOM<$0.RequestHeader>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'header', subBuilder: $0.RequestHeader.create)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'toUserId', protoName: 'toUserId')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'message')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'answer')
    ..hasRequiredFields = false
  ;

  FriendApplyReq._() : super();
  factory FriendApplyReq({
    $0.RequestHeader? header,
    $core.String? toUserId,
    $core.String? message,
    $core.String? answer,
  }) {
    final _result = create();
    if (header != null) {
      _result.header = header;
    }
    if (toUserId != null) {
      _result.toUserId = toUserId;
    }
    if (message != null) {
      _result.message = message;
    }
    if (answer != null) {
      _result.answer = answer;
    }
    return _result;
  }
  factory FriendApplyReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FriendApplyReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FriendApplyReq clone() => FriendApplyReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FriendApplyReq copyWith(void Function(FriendApplyReq) updates) => super.copyWith((message) => updates(message as FriendApplyReq)) as FriendApplyReq; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static FriendApplyReq create() => FriendApplyReq._();
  FriendApplyReq createEmptyInstance() => create();
  static $pb.PbList<FriendApplyReq> createRepeated() => $pb.PbList<FriendApplyReq>();
  @$core.pragma('dart2js:noInline')
  static FriendApplyReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FriendApplyReq>(create);
  static FriendApplyReq? _defaultInstance;

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
  $core.String get toUserId => $_getSZ(1);
  @$pb.TagNumber(2)
  set toUserId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasToUserId() => $_has(1);
  @$pb.TagNumber(2)
  void clearToUserId() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get message => $_getSZ(2);
  @$pb.TagNumber(3)
  set message($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasMessage() => $_has(2);
  @$pb.TagNumber(3)
  void clearMessage() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get answer => $_getSZ(3);
  @$pb.TagNumber(4)
  set answer($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasAnswer() => $_has(3);
  @$pb.TagNumber(4)
  void clearAnswer() => clearField(4);
}

class FriendApplyResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'FriendApplyResp', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pb'), createEmptyInstance: create)
    ..aOM<$0.ResponseHeader>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'header', subBuilder: $0.ResponseHeader.create)
    ..hasRequiredFields = false
  ;

  FriendApplyResp._() : super();
  factory FriendApplyResp({
    $0.ResponseHeader? header,
  }) {
    final _result = create();
    if (header != null) {
      _result.header = header;
    }
    return _result;
  }
  factory FriendApplyResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FriendApplyResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FriendApplyResp clone() => FriendApplyResp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FriendApplyResp copyWith(void Function(FriendApplyResp) updates) => super.copyWith((message) => updates(message as FriendApplyResp)) as FriendApplyResp; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static FriendApplyResp create() => FriendApplyResp._();
  FriendApplyResp createEmptyInstance() => create();
  static $pb.PbList<FriendApplyResp> createRepeated() => $pb.PbList<FriendApplyResp>();
  @$core.pragma('dart2js:noInline')
  static FriendApplyResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FriendApplyResp>(create);
  static FriendApplyResp? _defaultInstance;

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

class FriendApplyHandleReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'FriendApplyHandleReq', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pb'), createEmptyInstance: create)
    ..aOM<$0.RequestHeader>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'header', subBuilder: $0.RequestHeader.create)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'applyId', protoName: 'applyId')
    ..aOB(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'agree')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'firstMessage', protoName: 'firstMessage')
    ..hasRequiredFields = false
  ;

  FriendApplyHandleReq._() : super();
  factory FriendApplyHandleReq({
    $0.RequestHeader? header,
    $core.String? applyId,
    $core.bool? agree,
    $core.String? firstMessage,
  }) {
    final _result = create();
    if (header != null) {
      _result.header = header;
    }
    if (applyId != null) {
      _result.applyId = applyId;
    }
    if (agree != null) {
      _result.agree = agree;
    }
    if (firstMessage != null) {
      _result.firstMessage = firstMessage;
    }
    return _result;
  }
  factory FriendApplyHandleReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FriendApplyHandleReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FriendApplyHandleReq clone() => FriendApplyHandleReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FriendApplyHandleReq copyWith(void Function(FriendApplyHandleReq) updates) => super.copyWith((message) => updates(message as FriendApplyHandleReq)) as FriendApplyHandleReq; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static FriendApplyHandleReq create() => FriendApplyHandleReq._();
  FriendApplyHandleReq createEmptyInstance() => create();
  static $pb.PbList<FriendApplyHandleReq> createRepeated() => $pb.PbList<FriendApplyHandleReq>();
  @$core.pragma('dart2js:noInline')
  static FriendApplyHandleReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FriendApplyHandleReq>(create);
  static FriendApplyHandleReq? _defaultInstance;

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
  $core.String get applyId => $_getSZ(1);
  @$pb.TagNumber(2)
  set applyId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasApplyId() => $_has(1);
  @$pb.TagNumber(2)
  void clearApplyId() => clearField(2);

  @$pb.TagNumber(3)
  $core.bool get agree => $_getBF(2);
  @$pb.TagNumber(3)
  set agree($core.bool v) { $_setBool(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasAgree() => $_has(2);
  @$pb.TagNumber(3)
  void clearAgree() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get firstMessage => $_getSZ(3);
  @$pb.TagNumber(4)
  set firstMessage($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasFirstMessage() => $_has(3);
  @$pb.TagNumber(4)
  void clearFirstMessage() => clearField(4);
}

class FriendApplyHandleResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'FriendApplyHandleResp', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pb'), createEmptyInstance: create)
    ..aOM<$0.ResponseHeader>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'header', subBuilder: $0.ResponseHeader.create)
    ..hasRequiredFields = false
  ;

  FriendApplyHandleResp._() : super();
  factory FriendApplyHandleResp({
    $0.ResponseHeader? header,
  }) {
    final _result = create();
    if (header != null) {
      _result.header = header;
    }
    return _result;
  }
  factory FriendApplyHandleResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FriendApplyHandleResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FriendApplyHandleResp clone() => FriendApplyHandleResp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FriendApplyHandleResp copyWith(void Function(FriendApplyHandleResp) updates) => super.copyWith((message) => updates(message as FriendApplyHandleResp)) as FriendApplyHandleResp; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static FriendApplyHandleResp create() => FriendApplyHandleResp._();
  FriendApplyHandleResp createEmptyInstance() => create();
  static $pb.PbList<FriendApplyHandleResp> createRepeated() => $pb.PbList<FriendApplyHandleResp>();
  @$core.pragma('dart2js:noInline')
  static FriendApplyHandleResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FriendApplyHandleResp>(create);
  static FriendApplyHandleResp? _defaultInstance;

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

class ListFriendApplyReq_Filter extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ListFriendApplyReq.Filter', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pb'), createEmptyInstance: create)
    ..e<FriendApplyStatus>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'status', $pb.PbFieldType.OE, defaultOrMaker: FriendApplyStatus.Applying, valueOf: FriendApplyStatus.valueOf, enumValues: FriendApplyStatus.values)
    ..hasRequiredFields = false
  ;

  ListFriendApplyReq_Filter._() : super();
  factory ListFriendApplyReq_Filter({
    FriendApplyStatus? status,
  }) {
    final _result = create();
    if (status != null) {
      _result.status = status;
    }
    return _result;
  }
  factory ListFriendApplyReq_Filter.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListFriendApplyReq_Filter.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListFriendApplyReq_Filter clone() => ListFriendApplyReq_Filter()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListFriendApplyReq_Filter copyWith(void Function(ListFriendApplyReq_Filter) updates) => super.copyWith((message) => updates(message as ListFriendApplyReq_Filter)) as ListFriendApplyReq_Filter; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListFriendApplyReq_Filter create() => ListFriendApplyReq_Filter._();
  ListFriendApplyReq_Filter createEmptyInstance() => create();
  static $pb.PbList<ListFriendApplyReq_Filter> createRepeated() => $pb.PbList<ListFriendApplyReq_Filter>();
  @$core.pragma('dart2js:noInline')
  static ListFriendApplyReq_Filter getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListFriendApplyReq_Filter>(create);
  static ListFriendApplyReq_Filter? _defaultInstance;

  @$pb.TagNumber(1)
  FriendApplyStatus get status => $_getN(0);
  @$pb.TagNumber(1)
  set status(FriendApplyStatus v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearStatus() => clearField(1);
}

class ListFriendApplyReq_Option extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ListFriendApplyReq.Option', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pb'), createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'includeApplyByMe', protoName: 'includeApplyByMe')
    ..hasRequiredFields = false
  ;

  ListFriendApplyReq_Option._() : super();
  factory ListFriendApplyReq_Option({
    $core.bool? includeApplyByMe,
  }) {
    final _result = create();
    if (includeApplyByMe != null) {
      _result.includeApplyByMe = includeApplyByMe;
    }
    return _result;
  }
  factory ListFriendApplyReq_Option.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListFriendApplyReq_Option.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListFriendApplyReq_Option clone() => ListFriendApplyReq_Option()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListFriendApplyReq_Option copyWith(void Function(ListFriendApplyReq_Option) updates) => super.copyWith((message) => updates(message as ListFriendApplyReq_Option)) as ListFriendApplyReq_Option; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListFriendApplyReq_Option create() => ListFriendApplyReq_Option._();
  ListFriendApplyReq_Option createEmptyInstance() => create();
  static $pb.PbList<ListFriendApplyReq_Option> createRepeated() => $pb.PbList<ListFriendApplyReq_Option>();
  @$core.pragma('dart2js:noInline')
  static ListFriendApplyReq_Option getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListFriendApplyReq_Option>(create);
  static ListFriendApplyReq_Option? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get includeApplyByMe => $_getBF(0);
  @$pb.TagNumber(1)
  set includeApplyByMe($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasIncludeApplyByMe() => $_has(0);
  @$pb.TagNumber(1)
  void clearIncludeApplyByMe() => clearField(1);
}

class ListFriendApplyReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ListFriendApplyReq', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pb'), createEmptyInstance: create)
    ..aOM<$0.RequestHeader>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'header', subBuilder: $0.RequestHeader.create)
    ..aInt64(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'cursor')
    ..aInt64(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'limit')
    ..aOM<ListFriendApplyReq_Filter>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'filter', subBuilder: ListFriendApplyReq_Filter.create)
    ..aOM<ListFriendApplyReq_Option>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'option', subBuilder: ListFriendApplyReq_Option.create)
    ..hasRequiredFields = false
  ;

  ListFriendApplyReq._() : super();
  factory ListFriendApplyReq({
    $0.RequestHeader? header,
    $fixnum.Int64? cursor,
    $fixnum.Int64? limit,
    ListFriendApplyReq_Filter? filter,
    ListFriendApplyReq_Option? option,
  }) {
    final _result = create();
    if (header != null) {
      _result.header = header;
    }
    if (cursor != null) {
      _result.cursor = cursor;
    }
    if (limit != null) {
      _result.limit = limit;
    }
    if (filter != null) {
      _result.filter = filter;
    }
    if (option != null) {
      _result.option = option;
    }
    return _result;
  }
  factory ListFriendApplyReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListFriendApplyReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListFriendApplyReq clone() => ListFriendApplyReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListFriendApplyReq copyWith(void Function(ListFriendApplyReq) updates) => super.copyWith((message) => updates(message as ListFriendApplyReq)) as ListFriendApplyReq; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListFriendApplyReq create() => ListFriendApplyReq._();
  ListFriendApplyReq createEmptyInstance() => create();
  static $pb.PbList<ListFriendApplyReq> createRepeated() => $pb.PbList<ListFriendApplyReq>();
  @$core.pragma('dart2js:noInline')
  static ListFriendApplyReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListFriendApplyReq>(create);
  static ListFriendApplyReq? _defaultInstance;

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
  $fixnum.Int64 get cursor => $_getI64(1);
  @$pb.TagNumber(2)
  set cursor($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCursor() => $_has(1);
  @$pb.TagNumber(2)
  void clearCursor() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get limit => $_getI64(2);
  @$pb.TagNumber(3)
  set limit($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasLimit() => $_has(2);
  @$pb.TagNumber(3)
  void clearLimit() => clearField(3);

  @$pb.TagNumber(4)
  ListFriendApplyReq_Filter get filter => $_getN(3);
  @$pb.TagNumber(4)
  set filter(ListFriendApplyReq_Filter v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasFilter() => $_has(3);
  @$pb.TagNumber(4)
  void clearFilter() => clearField(4);
  @$pb.TagNumber(4)
  ListFriendApplyReq_Filter ensureFilter() => $_ensure(3);

  @$pb.TagNumber(5)
  ListFriendApplyReq_Option get option => $_getN(4);
  @$pb.TagNumber(5)
  set option(ListFriendApplyReq_Option v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasOption() => $_has(4);
  @$pb.TagNumber(5)
  void clearOption() => clearField(5);
  @$pb.TagNumber(5)
  ListFriendApplyReq_Option ensureOption() => $_ensure(4);
}

class ListFriendApplyResp_FriendApply extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ListFriendApplyResp.FriendApply', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pb'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'applyId', protoName: 'applyId')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'fromUserId', protoName: 'fromUserId')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'toUserId', protoName: 'toUserId')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'message')
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'answer')
    ..hasRequiredFields = false
  ;

  ListFriendApplyResp_FriendApply._() : super();
  factory ListFriendApplyResp_FriendApply({
    $core.String? applyId,
    $core.String? fromUserId,
    $core.String? toUserId,
    $core.String? message,
    $core.String? answer,
  }) {
    final _result = create();
    if (applyId != null) {
      _result.applyId = applyId;
    }
    if (fromUserId != null) {
      _result.fromUserId = fromUserId;
    }
    if (toUserId != null) {
      _result.toUserId = toUserId;
    }
    if (message != null) {
      _result.message = message;
    }
    if (answer != null) {
      _result.answer = answer;
    }
    return _result;
  }
  factory ListFriendApplyResp_FriendApply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListFriendApplyResp_FriendApply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListFriendApplyResp_FriendApply clone() => ListFriendApplyResp_FriendApply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListFriendApplyResp_FriendApply copyWith(void Function(ListFriendApplyResp_FriendApply) updates) => super.copyWith((message) => updates(message as ListFriendApplyResp_FriendApply)) as ListFriendApplyResp_FriendApply; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListFriendApplyResp_FriendApply create() => ListFriendApplyResp_FriendApply._();
  ListFriendApplyResp_FriendApply createEmptyInstance() => create();
  static $pb.PbList<ListFriendApplyResp_FriendApply> createRepeated() => $pb.PbList<ListFriendApplyResp_FriendApply>();
  @$core.pragma('dart2js:noInline')
  static ListFriendApplyResp_FriendApply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListFriendApplyResp_FriendApply>(create);
  static ListFriendApplyResp_FriendApply? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get applyId => $_getSZ(0);
  @$pb.TagNumber(1)
  set applyId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasApplyId() => $_has(0);
  @$pb.TagNumber(1)
  void clearApplyId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get fromUserId => $_getSZ(1);
  @$pb.TagNumber(2)
  set fromUserId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasFromUserId() => $_has(1);
  @$pb.TagNumber(2)
  void clearFromUserId() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get toUserId => $_getSZ(2);
  @$pb.TagNumber(3)
  set toUserId($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasToUserId() => $_has(2);
  @$pb.TagNumber(3)
  void clearToUserId() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get message => $_getSZ(3);
  @$pb.TagNumber(4)
  set message($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasMessage() => $_has(3);
  @$pb.TagNumber(4)
  void clearMessage() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get answer => $_getSZ(4);
  @$pb.TagNumber(5)
  set answer($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasAnswer() => $_has(4);
  @$pb.TagNumber(5)
  void clearAnswer() => clearField(5);
}

class ListFriendApplyResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ListFriendApplyResp', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pb'), createEmptyInstance: create)
    ..aOM<$0.ResponseHeader>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'header', subBuilder: $0.ResponseHeader.create)
    ..aInt64(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'cursor')
    ..pc<ListFriendApplyResp_FriendApply>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'friendApplyList', $pb.PbFieldType.PM, protoName: 'friendApplyList', subBuilder: ListFriendApplyResp_FriendApply.create)
    ..hasRequiredFields = false
  ;

  ListFriendApplyResp._() : super();
  factory ListFriendApplyResp({
    $0.ResponseHeader? header,
    $fixnum.Int64? cursor,
    $core.Iterable<ListFriendApplyResp_FriendApply>? friendApplyList,
  }) {
    final _result = create();
    if (header != null) {
      _result.header = header;
    }
    if (cursor != null) {
      _result.cursor = cursor;
    }
    if (friendApplyList != null) {
      _result.friendApplyList.addAll(friendApplyList);
    }
    return _result;
  }
  factory ListFriendApplyResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListFriendApplyResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListFriendApplyResp clone() => ListFriendApplyResp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListFriendApplyResp copyWith(void Function(ListFriendApplyResp) updates) => super.copyWith((message) => updates(message as ListFriendApplyResp)) as ListFriendApplyResp; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListFriendApplyResp create() => ListFriendApplyResp._();
  ListFriendApplyResp createEmptyInstance() => create();
  static $pb.PbList<ListFriendApplyResp> createRepeated() => $pb.PbList<ListFriendApplyResp>();
  @$core.pragma('dart2js:noInline')
  static ListFriendApplyResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListFriendApplyResp>(create);
  static ListFriendApplyResp? _defaultInstance;

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
  $fixnum.Int64 get cursor => $_getI64(1);
  @$pb.TagNumber(2)
  set cursor($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCursor() => $_has(1);
  @$pb.TagNumber(2)
  void clearCursor() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<ListFriendApplyResp_FriendApply> get friendApplyList => $_getList(2);
}

class CountFriendReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CountFriendReq', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pb'), createEmptyInstance: create)
    ..aOM<$0.RequestHeader>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'header', subBuilder: $0.RequestHeader.create)
    ..hasRequiredFields = false
  ;

  CountFriendReq._() : super();
  factory CountFriendReq({
    $0.RequestHeader? header,
  }) {
    final _result = create();
    if (header != null) {
      _result.header = header;
    }
    return _result;
  }
  factory CountFriendReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CountFriendReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CountFriendReq clone() => CountFriendReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CountFriendReq copyWith(void Function(CountFriendReq) updates) => super.copyWith((message) => updates(message as CountFriendReq)) as CountFriendReq; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CountFriendReq create() => CountFriendReq._();
  CountFriendReq createEmptyInstance() => create();
  static $pb.PbList<CountFriendReq> createRepeated() => $pb.PbList<CountFriendReq>();
  @$core.pragma('dart2js:noInline')
  static CountFriendReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CountFriendReq>(create);
  static CountFriendReq? _defaultInstance;

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

class CountFriendResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CountFriendResp', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pb'), createEmptyInstance: create)
    ..aOM<$0.ResponseHeader>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'header', subBuilder: $0.ResponseHeader.create)
    ..aInt64(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'count')
    ..hasRequiredFields = false
  ;

  CountFriendResp._() : super();
  factory CountFriendResp({
    $0.ResponseHeader? header,
    $fixnum.Int64? count,
  }) {
    final _result = create();
    if (header != null) {
      _result.header = header;
    }
    if (count != null) {
      _result.count = count;
    }
    return _result;
  }
  factory CountFriendResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CountFriendResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CountFriendResp clone() => CountFriendResp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CountFriendResp copyWith(void Function(CountFriendResp) updates) => super.copyWith((message) => updates(message as CountFriendResp)) as CountFriendResp; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CountFriendResp create() => CountFriendResp._();
  CountFriendResp createEmptyInstance() => create();
  static $pb.PbList<CountFriendResp> createRepeated() => $pb.PbList<CountFriendResp>();
  @$core.pragma('dart2js:noInline')
  static CountFriendResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CountFriendResp>(create);
  static CountFriendResp? _defaultInstance;

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
  $fixnum.Int64 get count => $_getI64(1);
  @$pb.TagNumber(2)
  set count($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCount() => $_has(1);
  @$pb.TagNumber(2)
  void clearCount() => clearField(2);
}

class ConversationSettingUpdateReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ConversationSettingUpdateReq', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pb'), createEmptyInstance: create)
    ..aOM<$0.RequestHeader>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'header', subBuilder: $0.RequestHeader.create)
    ..hasRequiredFields = false
  ;

  ConversationSettingUpdateReq._() : super();
  factory ConversationSettingUpdateReq({
    $0.RequestHeader? header,
  }) {
    final _result = create();
    if (header != null) {
      _result.header = header;
    }
    return _result;
  }
  factory ConversationSettingUpdateReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ConversationSettingUpdateReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ConversationSettingUpdateReq clone() => ConversationSettingUpdateReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ConversationSettingUpdateReq copyWith(void Function(ConversationSettingUpdateReq) updates) => super.copyWith((message) => updates(message as ConversationSettingUpdateReq)) as ConversationSettingUpdateReq; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ConversationSettingUpdateReq create() => ConversationSettingUpdateReq._();
  ConversationSettingUpdateReq createEmptyInstance() => create();
  static $pb.PbList<ConversationSettingUpdateReq> createRepeated() => $pb.PbList<ConversationSettingUpdateReq>();
  @$core.pragma('dart2js:noInline')
  static ConversationSettingUpdateReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ConversationSettingUpdateReq>(create);
  static ConversationSettingUpdateReq? _defaultInstance;

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

class ConversationSettingUpdateResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ConversationSettingUpdateResp', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pb'), createEmptyInstance: create)
    ..aOM<$0.ResponseHeader>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'header', subBuilder: $0.ResponseHeader.create)
    ..hasRequiredFields = false
  ;

  ConversationSettingUpdateResp._() : super();
  factory ConversationSettingUpdateResp({
    $0.ResponseHeader? header,
  }) {
    final _result = create();
    if (header != null) {
      _result.header = header;
    }
    return _result;
  }
  factory ConversationSettingUpdateResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ConversationSettingUpdateResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ConversationSettingUpdateResp clone() => ConversationSettingUpdateResp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ConversationSettingUpdateResp copyWith(void Function(ConversationSettingUpdateResp) updates) => super.copyWith((message) => updates(message as ConversationSettingUpdateResp)) as ConversationSettingUpdateResp; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ConversationSettingUpdateResp create() => ConversationSettingUpdateResp._();
  ConversationSettingUpdateResp createEmptyInstance() => create();
  static $pb.PbList<ConversationSettingUpdateResp> createRepeated() => $pb.PbList<ConversationSettingUpdateResp>();
  @$core.pragma('dart2js:noInline')
  static ConversationSettingUpdateResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ConversationSettingUpdateResp>(create);
  static ConversationSettingUpdateResp? _defaultInstance;

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

class ListJoinedConversationsReq_Filter_SettingKV extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ListJoinedConversationsReq.Filter.SettingKV', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pb'), createEmptyInstance: create)
    ..e<$0.ConversationSettingKey>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'key', $pb.PbFieldType.OE, defaultOrMaker: $0.ConversationSettingKey.IsPinned, valueOf: $0.ConversationSettingKey.valueOf, enumValues: $0.ConversationSettingKey.values)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'value')
    ..e<ListJoinedConversationsReq_Filter_SettingKV_Operator>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'operator', $pb.PbFieldType.OE, defaultOrMaker: ListJoinedConversationsReq_Filter_SettingKV_Operator.Equal, valueOf: ListJoinedConversationsReq_Filter_SettingKV_Operator.valueOf, enumValues: ListJoinedConversationsReq_Filter_SettingKV_Operator.values)
    ..aOB(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'orNotExists', protoName: 'orNotExists')
    ..aOB(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'orExists', protoName: 'orExists')
    ..hasRequiredFields = false
  ;

  ListJoinedConversationsReq_Filter_SettingKV._() : super();
  factory ListJoinedConversationsReq_Filter_SettingKV({
    $0.ConversationSettingKey? key,
    $core.String? value,
    ListJoinedConversationsReq_Filter_SettingKV_Operator? operator,
    $core.bool? orNotExists,
    $core.bool? orExists,
  }) {
    final _result = create();
    if (key != null) {
      _result.key = key;
    }
    if (value != null) {
      _result.value = value;
    }
    if (operator != null) {
      _result.operator = operator;
    }
    if (orNotExists != null) {
      _result.orNotExists = orNotExists;
    }
    if (orExists != null) {
      _result.orExists = orExists;
    }
    return _result;
  }
  factory ListJoinedConversationsReq_Filter_SettingKV.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListJoinedConversationsReq_Filter_SettingKV.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListJoinedConversationsReq_Filter_SettingKV clone() => ListJoinedConversationsReq_Filter_SettingKV()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListJoinedConversationsReq_Filter_SettingKV copyWith(void Function(ListJoinedConversationsReq_Filter_SettingKV) updates) => super.copyWith((message) => updates(message as ListJoinedConversationsReq_Filter_SettingKV)) as ListJoinedConversationsReq_Filter_SettingKV; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListJoinedConversationsReq_Filter_SettingKV create() => ListJoinedConversationsReq_Filter_SettingKV._();
  ListJoinedConversationsReq_Filter_SettingKV createEmptyInstance() => create();
  static $pb.PbList<ListJoinedConversationsReq_Filter_SettingKV> createRepeated() => $pb.PbList<ListJoinedConversationsReq_Filter_SettingKV>();
  @$core.pragma('dart2js:noInline')
  static ListJoinedConversationsReq_Filter_SettingKV getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListJoinedConversationsReq_Filter_SettingKV>(create);
  static ListJoinedConversationsReq_Filter_SettingKV? _defaultInstance;

  @$pb.TagNumber(1)
  $0.ConversationSettingKey get key => $_getN(0);
  @$pb.TagNumber(1)
  set key($0.ConversationSettingKey v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasKey() => $_has(0);
  @$pb.TagNumber(1)
  void clearKey() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get value => $_getSZ(1);
  @$pb.TagNumber(2)
  set value($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasValue() => $_has(1);
  @$pb.TagNumber(2)
  void clearValue() => clearField(2);

  @$pb.TagNumber(3)
  ListJoinedConversationsReq_Filter_SettingKV_Operator get operator => $_getN(2);
  @$pb.TagNumber(3)
  set operator(ListJoinedConversationsReq_Filter_SettingKV_Operator v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasOperator() => $_has(2);
  @$pb.TagNumber(3)
  void clearOperator() => clearField(3);

  @$pb.TagNumber(4)
  $core.bool get orNotExists => $_getBF(3);
  @$pb.TagNumber(4)
  set orNotExists($core.bool v) { $_setBool(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasOrNotExists() => $_has(3);
  @$pb.TagNumber(4)
  void clearOrNotExists() => clearField(4);

  @$pb.TagNumber(5)
  $core.bool get orExists => $_getBF(4);
  @$pb.TagNumber(5)
  set orExists($core.bool v) { $_setBool(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasOrExists() => $_has(4);
  @$pb.TagNumber(5)
  void clearOrExists() => clearField(5);
}

class ListJoinedConversationsReq_Filter extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ListJoinedConversationsReq.Filter', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pb'), createEmptyInstance: create)
    ..pc<ListJoinedConversationsReq_Filter_SettingKV>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'settingList', $pb.PbFieldType.PM, protoName: 'settingList', subBuilder: ListJoinedConversationsReq_Filter_SettingKV.create)
    ..hasRequiredFields = false
  ;

  ListJoinedConversationsReq_Filter._() : super();
  factory ListJoinedConversationsReq_Filter({
    $core.Iterable<ListJoinedConversationsReq_Filter_SettingKV>? settingList,
  }) {
    final _result = create();
    if (settingList != null) {
      _result.settingList.addAll(settingList);
    }
    return _result;
  }
  factory ListJoinedConversationsReq_Filter.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListJoinedConversationsReq_Filter.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListJoinedConversationsReq_Filter clone() => ListJoinedConversationsReq_Filter()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListJoinedConversationsReq_Filter copyWith(void Function(ListJoinedConversationsReq_Filter) updates) => super.copyWith((message) => updates(message as ListJoinedConversationsReq_Filter)) as ListJoinedConversationsReq_Filter; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListJoinedConversationsReq_Filter create() => ListJoinedConversationsReq_Filter._();
  ListJoinedConversationsReq_Filter createEmptyInstance() => create();
  static $pb.PbList<ListJoinedConversationsReq_Filter> createRepeated() => $pb.PbList<ListJoinedConversationsReq_Filter>();
  @$core.pragma('dart2js:noInline')
  static ListJoinedConversationsReq_Filter getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListJoinedConversationsReq_Filter>(create);
  static ListJoinedConversationsReq_Filter? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<ListJoinedConversationsReq_Filter_SettingKV> get settingList => $_getList(0);
}

class ListJoinedConversationsReq_Option extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ListJoinedConversationsReq.Option', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pb'), createEmptyInstance: create)
    ..aOB(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'includeSelfMemberInfo', protoName: 'includeSelfMemberInfo')
    ..hasRequiredFields = false
  ;

  ListJoinedConversationsReq_Option._() : super();
  factory ListJoinedConversationsReq_Option({
    $core.bool? includeSelfMemberInfo,
  }) {
    final _result = create();
    if (includeSelfMemberInfo != null) {
      _result.includeSelfMemberInfo = includeSelfMemberInfo;
    }
    return _result;
  }
  factory ListJoinedConversationsReq_Option.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListJoinedConversationsReq_Option.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListJoinedConversationsReq_Option clone() => ListJoinedConversationsReq_Option()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListJoinedConversationsReq_Option copyWith(void Function(ListJoinedConversationsReq_Option) updates) => super.copyWith((message) => updates(message as ListJoinedConversationsReq_Option)) as ListJoinedConversationsReq_Option; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListJoinedConversationsReq_Option create() => ListJoinedConversationsReq_Option._();
  ListJoinedConversationsReq_Option createEmptyInstance() => create();
  static $pb.PbList<ListJoinedConversationsReq_Option> createRepeated() => $pb.PbList<ListJoinedConversationsReq_Option>();
  @$core.pragma('dart2js:noInline')
  static ListJoinedConversationsReq_Option getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListJoinedConversationsReq_Option>(create);
  static ListJoinedConversationsReq_Option? _defaultInstance;

  @$pb.TagNumber(2)
  $core.bool get includeSelfMemberInfo => $_getBF(0);
  @$pb.TagNumber(2)
  set includeSelfMemberInfo($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(2)
  $core.bool hasIncludeSelfMemberInfo() => $_has(0);
  @$pb.TagNumber(2)
  void clearIncludeSelfMemberInfo() => clearField(2);
}

class ListJoinedConversationsReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ListJoinedConversationsReq', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pb'), createEmptyInstance: create)
    ..aOM<$0.RequestHeader>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'header', subBuilder: $0.RequestHeader.create)
    ..e<$0.ConversationType>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'conversationType', $pb.PbFieldType.OE, protoName: 'conversationType', defaultOrMaker: $0.ConversationType.Single, valueOf: $0.ConversationType.valueOf, enumValues: $0.ConversationType.values)
    ..aInt64(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'cursor')
    ..aInt64(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'limit')
    ..aOM<ListJoinedConversationsReq_Filter>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'filter', subBuilder: ListJoinedConversationsReq_Filter.create)
    ..aOM<ListJoinedConversationsReq_Option>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'option', subBuilder: ListJoinedConversationsReq_Option.create)
    ..hasRequiredFields = false
  ;

  ListJoinedConversationsReq._() : super();
  factory ListJoinedConversationsReq({
    $0.RequestHeader? header,
    $0.ConversationType? conversationType,
    $fixnum.Int64? cursor,
    $fixnum.Int64? limit,
    ListJoinedConversationsReq_Filter? filter,
    ListJoinedConversationsReq_Option? option,
  }) {
    final _result = create();
    if (header != null) {
      _result.header = header;
    }
    if (conversationType != null) {
      _result.conversationType = conversationType;
    }
    if (cursor != null) {
      _result.cursor = cursor;
    }
    if (limit != null) {
      _result.limit = limit;
    }
    if (filter != null) {
      _result.filter = filter;
    }
    if (option != null) {
      _result.option = option;
    }
    return _result;
  }
  factory ListJoinedConversationsReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListJoinedConversationsReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListJoinedConversationsReq clone() => ListJoinedConversationsReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListJoinedConversationsReq copyWith(void Function(ListJoinedConversationsReq) updates) => super.copyWith((message) => updates(message as ListJoinedConversationsReq)) as ListJoinedConversationsReq; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListJoinedConversationsReq create() => ListJoinedConversationsReq._();
  ListJoinedConversationsReq createEmptyInstance() => create();
  static $pb.PbList<ListJoinedConversationsReq> createRepeated() => $pb.PbList<ListJoinedConversationsReq>();
  @$core.pragma('dart2js:noInline')
  static ListJoinedConversationsReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListJoinedConversationsReq>(create);
  static ListJoinedConversationsReq? _defaultInstance;

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
  $0.ConversationType get conversationType => $_getN(1);
  @$pb.TagNumber(2)
  set conversationType($0.ConversationType v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasConversationType() => $_has(1);
  @$pb.TagNumber(2)
  void clearConversationType() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get cursor => $_getI64(2);
  @$pb.TagNumber(3)
  set cursor($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasCursor() => $_has(2);
  @$pb.TagNumber(3)
  void clearCursor() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get limit => $_getI64(3);
  @$pb.TagNumber(4)
  set limit($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasLimit() => $_has(3);
  @$pb.TagNumber(4)
  void clearLimit() => clearField(4);

  @$pb.TagNumber(5)
  ListJoinedConversationsReq_Filter get filter => $_getN(4);
  @$pb.TagNumber(5)
  set filter(ListJoinedConversationsReq_Filter v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasFilter() => $_has(4);
  @$pb.TagNumber(5)
  void clearFilter() => clearField(5);
  @$pb.TagNumber(5)
  ListJoinedConversationsReq_Filter ensureFilter() => $_ensure(4);

  @$pb.TagNumber(6)
  ListJoinedConversationsReq_Option get option => $_getN(5);
  @$pb.TagNumber(6)
  set option(ListJoinedConversationsReq_Option v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasOption() => $_has(5);
  @$pb.TagNumber(6)
  void clearOption() => clearField(6);
  @$pb.TagNumber(6)
  ListJoinedConversationsReq_Option ensureOption() => $_ensure(5);
}

class ListJoinedConversationsResp_Conversation_SelfMemberInfo extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ListJoinedConversationsResp.Conversation.SelfMemberInfo', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pb'), createEmptyInstance: create)
    ..aInt64(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'joinTime', protoName: 'joinTime')
    ..hasRequiredFields = false
  ;

  ListJoinedConversationsResp_Conversation_SelfMemberInfo._() : super();
  factory ListJoinedConversationsResp_Conversation_SelfMemberInfo({
    $fixnum.Int64? joinTime,
  }) {
    final _result = create();
    if (joinTime != null) {
      _result.joinTime = joinTime;
    }
    return _result;
  }
  factory ListJoinedConversationsResp_Conversation_SelfMemberInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListJoinedConversationsResp_Conversation_SelfMemberInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListJoinedConversationsResp_Conversation_SelfMemberInfo clone() => ListJoinedConversationsResp_Conversation_SelfMemberInfo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListJoinedConversationsResp_Conversation_SelfMemberInfo copyWith(void Function(ListJoinedConversationsResp_Conversation_SelfMemberInfo) updates) => super.copyWith((message) => updates(message as ListJoinedConversationsResp_Conversation_SelfMemberInfo)) as ListJoinedConversationsResp_Conversation_SelfMemberInfo; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListJoinedConversationsResp_Conversation_SelfMemberInfo create() => ListJoinedConversationsResp_Conversation_SelfMemberInfo._();
  ListJoinedConversationsResp_Conversation_SelfMemberInfo createEmptyInstance() => create();
  static $pb.PbList<ListJoinedConversationsResp_Conversation_SelfMemberInfo> createRepeated() => $pb.PbList<ListJoinedConversationsResp_Conversation_SelfMemberInfo>();
  @$core.pragma('dart2js:noInline')
  static ListJoinedConversationsResp_Conversation_SelfMemberInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListJoinedConversationsResp_Conversation_SelfMemberInfo>(create);
  static ListJoinedConversationsResp_Conversation_SelfMemberInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get joinTime => $_getI64(0);
  @$pb.TagNumber(1)
  set joinTime($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasJoinTime() => $_has(0);
  @$pb.TagNumber(1)
  void clearJoinTime() => clearField(1);
}

class ListJoinedConversationsResp_Conversation extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ListJoinedConversationsResp.Conversation', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pb'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'conversationId', protoName: 'conversationId')
    ..e<$0.ConversationType>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'conversationType', $pb.PbFieldType.OE, protoName: 'conversationType', defaultOrMaker: $0.ConversationType.Single, valueOf: $0.ConversationType.valueOf, enumValues: $0.ConversationType.values)
    ..aOM<ListJoinedConversationsResp_Conversation_SelfMemberInfo>(31, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'selfMemberInfo', protoName: 'selfMemberInfo', subBuilder: ListJoinedConversationsResp_Conversation_SelfMemberInfo.create)
    ..hasRequiredFields = false
  ;

  ListJoinedConversationsResp_Conversation._() : super();
  factory ListJoinedConversationsResp_Conversation({
    $core.String? conversationId,
    $0.ConversationType? conversationType,
    ListJoinedConversationsResp_Conversation_SelfMemberInfo? selfMemberInfo,
  }) {
    final _result = create();
    if (conversationId != null) {
      _result.conversationId = conversationId;
    }
    if (conversationType != null) {
      _result.conversationType = conversationType;
    }
    if (selfMemberInfo != null) {
      _result.selfMemberInfo = selfMemberInfo;
    }
    return _result;
  }
  factory ListJoinedConversationsResp_Conversation.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListJoinedConversationsResp_Conversation.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListJoinedConversationsResp_Conversation clone() => ListJoinedConversationsResp_Conversation()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListJoinedConversationsResp_Conversation copyWith(void Function(ListJoinedConversationsResp_Conversation) updates) => super.copyWith((message) => updates(message as ListJoinedConversationsResp_Conversation)) as ListJoinedConversationsResp_Conversation; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListJoinedConversationsResp_Conversation create() => ListJoinedConversationsResp_Conversation._();
  ListJoinedConversationsResp_Conversation createEmptyInstance() => create();
  static $pb.PbList<ListJoinedConversationsResp_Conversation> createRepeated() => $pb.PbList<ListJoinedConversationsResp_Conversation>();
  @$core.pragma('dart2js:noInline')
  static ListJoinedConversationsResp_Conversation getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListJoinedConversationsResp_Conversation>(create);
  static ListJoinedConversationsResp_Conversation? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get conversationId => $_getSZ(0);
  @$pb.TagNumber(1)
  set conversationId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasConversationId() => $_has(0);
  @$pb.TagNumber(1)
  void clearConversationId() => clearField(1);

  @$pb.TagNumber(2)
  $0.ConversationType get conversationType => $_getN(1);
  @$pb.TagNumber(2)
  set conversationType($0.ConversationType v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasConversationType() => $_has(1);
  @$pb.TagNumber(2)
  void clearConversationType() => clearField(2);

  @$pb.TagNumber(31)
  ListJoinedConversationsResp_Conversation_SelfMemberInfo get selfMemberInfo => $_getN(2);
  @$pb.TagNumber(31)
  set selfMemberInfo(ListJoinedConversationsResp_Conversation_SelfMemberInfo v) { setField(31, v); }
  @$pb.TagNumber(31)
  $core.bool hasSelfMemberInfo() => $_has(2);
  @$pb.TagNumber(31)
  void clearSelfMemberInfo() => clearField(31);
  @$pb.TagNumber(31)
  ListJoinedConversationsResp_Conversation_SelfMemberInfo ensureSelfMemberInfo() => $_ensure(2);
}

class ListJoinedConversationsResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ListJoinedConversationsResp', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pb'), createEmptyInstance: create)
    ..aOM<$0.ResponseHeader>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'header', subBuilder: $0.ResponseHeader.create)
    ..pc<ListJoinedConversationsResp_Conversation>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'conversationList', $pb.PbFieldType.PM, protoName: 'conversationList', subBuilder: ListJoinedConversationsResp_Conversation.create)
    ..hasRequiredFields = false
  ;

  ListJoinedConversationsResp._() : super();
  factory ListJoinedConversationsResp({
    $0.ResponseHeader? header,
    $core.Iterable<ListJoinedConversationsResp_Conversation>? conversationList,
  }) {
    final _result = create();
    if (header != null) {
      _result.header = header;
    }
    if (conversationList != null) {
      _result.conversationList.addAll(conversationList);
    }
    return _result;
  }
  factory ListJoinedConversationsResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListJoinedConversationsResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListJoinedConversationsResp clone() => ListJoinedConversationsResp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListJoinedConversationsResp copyWith(void Function(ListJoinedConversationsResp) updates) => super.copyWith((message) => updates(message as ListJoinedConversationsResp)) as ListJoinedConversationsResp; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListJoinedConversationsResp create() => ListJoinedConversationsResp._();
  ListJoinedConversationsResp createEmptyInstance() => create();
  static $pb.PbList<ListJoinedConversationsResp> createRepeated() => $pb.PbList<ListJoinedConversationsResp>();
  @$core.pragma('dart2js:noInline')
  static ListJoinedConversationsResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListJoinedConversationsResp>(create);
  static ListJoinedConversationsResp? _defaultInstance;

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

  @$pb.TagNumber(3)
  $core.List<ListJoinedConversationsResp_Conversation> get conversationList => $_getList(1);
}

class SubscriptionSubscribeReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SubscriptionSubscribeReq', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pb'), createEmptyInstance: create)
    ..aOM<$0.RequestHeader>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'header', subBuilder: $0.RequestHeader.create)
    ..hasRequiredFields = false
  ;

  SubscriptionSubscribeReq._() : super();
  factory SubscriptionSubscribeReq({
    $0.RequestHeader? header,
  }) {
    final _result = create();
    if (header != null) {
      _result.header = header;
    }
    return _result;
  }
  factory SubscriptionSubscribeReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SubscriptionSubscribeReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SubscriptionSubscribeReq clone() => SubscriptionSubscribeReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SubscriptionSubscribeReq copyWith(void Function(SubscriptionSubscribeReq) updates) => super.copyWith((message) => updates(message as SubscriptionSubscribeReq)) as SubscriptionSubscribeReq; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SubscriptionSubscribeReq create() => SubscriptionSubscribeReq._();
  SubscriptionSubscribeReq createEmptyInstance() => create();
  static $pb.PbList<SubscriptionSubscribeReq> createRepeated() => $pb.PbList<SubscriptionSubscribeReq>();
  @$core.pragma('dart2js:noInline')
  static SubscriptionSubscribeReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SubscriptionSubscribeReq>(create);
  static SubscriptionSubscribeReq? _defaultInstance;

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

class SubscriptionSubscribeResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SubscriptionSubscribeResp', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pb'), createEmptyInstance: create)
    ..aOM<$0.ResponseHeader>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'header', subBuilder: $0.ResponseHeader.create)
    ..hasRequiredFields = false
  ;

  SubscriptionSubscribeResp._() : super();
  factory SubscriptionSubscribeResp({
    $0.ResponseHeader? header,
  }) {
    final _result = create();
    if (header != null) {
      _result.header = header;
    }
    return _result;
  }
  factory SubscriptionSubscribeResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SubscriptionSubscribeResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SubscriptionSubscribeResp clone() => SubscriptionSubscribeResp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SubscriptionSubscribeResp copyWith(void Function(SubscriptionSubscribeResp) updates) => super.copyWith((message) => updates(message as SubscriptionSubscribeResp)) as SubscriptionSubscribeResp; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SubscriptionSubscribeResp create() => SubscriptionSubscribeResp._();
  SubscriptionSubscribeResp createEmptyInstance() => create();
  static $pb.PbList<SubscriptionSubscribeResp> createRepeated() => $pb.PbList<SubscriptionSubscribeResp>();
  @$core.pragma('dart2js:noInline')
  static SubscriptionSubscribeResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SubscriptionSubscribeResp>(create);
  static SubscriptionSubscribeResp? _defaultInstance;

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

class SubscriptionAfterOnlineReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SubscriptionAfterOnlineReq', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pb'), createEmptyInstance: create)
    ..aOM<$0.RequestHeader>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'header', subBuilder: $0.RequestHeader.create)
    ..hasRequiredFields = false
  ;

  SubscriptionAfterOnlineReq._() : super();
  factory SubscriptionAfterOnlineReq({
    $0.RequestHeader? header,
  }) {
    final _result = create();
    if (header != null) {
      _result.header = header;
    }
    return _result;
  }
  factory SubscriptionAfterOnlineReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SubscriptionAfterOnlineReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SubscriptionAfterOnlineReq clone() => SubscriptionAfterOnlineReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SubscriptionAfterOnlineReq copyWith(void Function(SubscriptionAfterOnlineReq) updates) => super.copyWith((message) => updates(message as SubscriptionAfterOnlineReq)) as SubscriptionAfterOnlineReq; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SubscriptionAfterOnlineReq create() => SubscriptionAfterOnlineReq._();
  SubscriptionAfterOnlineReq createEmptyInstance() => create();
  static $pb.PbList<SubscriptionAfterOnlineReq> createRepeated() => $pb.PbList<SubscriptionAfterOnlineReq>();
  @$core.pragma('dart2js:noInline')
  static SubscriptionAfterOnlineReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SubscriptionAfterOnlineReq>(create);
  static SubscriptionAfterOnlineReq? _defaultInstance;

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

class SubscriptionAfterOnlineResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SubscriptionAfterOnlineResp', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pb'), createEmptyInstance: create)
    ..aOM<$0.ResponseHeader>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'header', subBuilder: $0.ResponseHeader.create)
    ..hasRequiredFields = false
  ;

  SubscriptionAfterOnlineResp._() : super();
  factory SubscriptionAfterOnlineResp({
    $0.ResponseHeader? header,
  }) {
    final _result = create();
    if (header != null) {
      _result.header = header;
    }
    return _result;
  }
  factory SubscriptionAfterOnlineResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SubscriptionAfterOnlineResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SubscriptionAfterOnlineResp clone() => SubscriptionAfterOnlineResp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SubscriptionAfterOnlineResp copyWith(void Function(SubscriptionAfterOnlineResp) updates) => super.copyWith((message) => updates(message as SubscriptionAfterOnlineResp)) as SubscriptionAfterOnlineResp; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SubscriptionAfterOnlineResp create() => SubscriptionAfterOnlineResp._();
  SubscriptionAfterOnlineResp createEmptyInstance() => create();
  static $pb.PbList<SubscriptionAfterOnlineResp> createRepeated() => $pb.PbList<SubscriptionAfterOnlineResp>();
  @$core.pragma('dart2js:noInline')
  static SubscriptionAfterOnlineResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SubscriptionAfterOnlineResp>(create);
  static SubscriptionAfterOnlineResp? _defaultInstance;

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

class SubscriptionAfterOfflineReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SubscriptionAfterOfflineReq', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pb'), createEmptyInstance: create)
    ..aOM<$0.RequestHeader>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'header', subBuilder: $0.RequestHeader.create)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'userId', protoName: 'userId')
    ..hasRequiredFields = false
  ;

  SubscriptionAfterOfflineReq._() : super();
  factory SubscriptionAfterOfflineReq({
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
  factory SubscriptionAfterOfflineReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SubscriptionAfterOfflineReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SubscriptionAfterOfflineReq clone() => SubscriptionAfterOfflineReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SubscriptionAfterOfflineReq copyWith(void Function(SubscriptionAfterOfflineReq) updates) => super.copyWith((message) => updates(message as SubscriptionAfterOfflineReq)) as SubscriptionAfterOfflineReq; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SubscriptionAfterOfflineReq create() => SubscriptionAfterOfflineReq._();
  SubscriptionAfterOfflineReq createEmptyInstance() => create();
  static $pb.PbList<SubscriptionAfterOfflineReq> createRepeated() => $pb.PbList<SubscriptionAfterOfflineReq>();
  @$core.pragma('dart2js:noInline')
  static SubscriptionAfterOfflineReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SubscriptionAfterOfflineReq>(create);
  static SubscriptionAfterOfflineReq? _defaultInstance;

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

class SubscriptionAfterOfflineResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SubscriptionAfterOfflineResp', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pb'), createEmptyInstance: create)
    ..aOM<$0.ResponseHeader>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'header', subBuilder: $0.ResponseHeader.create)
    ..hasRequiredFields = false
  ;

  SubscriptionAfterOfflineResp._() : super();
  factory SubscriptionAfterOfflineResp({
    $0.ResponseHeader? header,
  }) {
    final _result = create();
    if (header != null) {
      _result.header = header;
    }
    return _result;
  }
  factory SubscriptionAfterOfflineResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SubscriptionAfterOfflineResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SubscriptionAfterOfflineResp clone() => SubscriptionAfterOfflineResp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SubscriptionAfterOfflineResp copyWith(void Function(SubscriptionAfterOfflineResp) updates) => super.copyWith((message) => updates(message as SubscriptionAfterOfflineResp)) as SubscriptionAfterOfflineResp; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SubscriptionAfterOfflineResp create() => SubscriptionAfterOfflineResp._();
  SubscriptionAfterOfflineResp createEmptyInstance() => create();
  static $pb.PbList<SubscriptionAfterOfflineResp> createRepeated() => $pb.PbList<SubscriptionAfterOfflineResp>();
  @$core.pragma('dart2js:noInline')
  static SubscriptionAfterOfflineResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SubscriptionAfterOfflineResp>(create);
  static SubscriptionAfterOfflineResp? _defaultInstance;

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

class UserSubscription extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UserSubscription', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pb'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'subscriptionId', protoName: 'subscriptionId')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Subscriber', protoName: 'Subscriber')
    ..aInt64(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'subscribeTime', protoName: 'subscribeTime')
    ..m<$core.String, $core.String>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'extraMap', protoName: 'extraMap', entryClassName: 'UserSubscription.ExtraMapEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OS, packageName: const $pb.PackageName('pb'))
    ..hasRequiredFields = false
  ;

  UserSubscription._() : super();
  factory UserSubscription({
    $core.String? subscriptionId,
    $core.String? subscriber,
    $fixnum.Int64? subscribeTime,
    $core.Map<$core.String, $core.String>? extraMap,
  }) {
    final _result = create();
    if (subscriptionId != null) {
      _result.subscriptionId = subscriptionId;
    }
    if (subscriber != null) {
      _result.subscriber = subscriber;
    }
    if (subscribeTime != null) {
      _result.subscribeTime = subscribeTime;
    }
    if (extraMap != null) {
      _result.extraMap.addAll(extraMap);
    }
    return _result;
  }
  factory UserSubscription.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserSubscription.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UserSubscription clone() => UserSubscription()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UserSubscription copyWith(void Function(UserSubscription) updates) => super.copyWith((message) => updates(message as UserSubscription)) as UserSubscription; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UserSubscription create() => UserSubscription._();
  UserSubscription createEmptyInstance() => create();
  static $pb.PbList<UserSubscription> createRepeated() => $pb.PbList<UserSubscription>();
  @$core.pragma('dart2js:noInline')
  static UserSubscription getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserSubscription>(create);
  static UserSubscription? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get subscriptionId => $_getSZ(0);
  @$pb.TagNumber(1)
  set subscriptionId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSubscriptionId() => $_has(0);
  @$pb.TagNumber(1)
  void clearSubscriptionId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get subscriber => $_getSZ(1);
  @$pb.TagNumber(2)
  set subscriber($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSubscriber() => $_has(1);
  @$pb.TagNumber(2)
  void clearSubscriber() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get subscribeTime => $_getI64(2);
  @$pb.TagNumber(3)
  set subscribeTime($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasSubscribeTime() => $_has(2);
  @$pb.TagNumber(3)
  void clearSubscribeTime() => clearField(3);

  @$pb.TagNumber(6)
  $core.Map<$core.String, $core.String> get extraMap => $_getMap(3);
}

class UpsertUserSubscriptionReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UpsertUserSubscriptionReq', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pb'), createEmptyInstance: create)
    ..aOM<$0.RequestHeader>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'header', subBuilder: $0.RequestHeader.create)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'subscriptionId', protoName: 'subscriptionId')
    ..aOM<UserSubscription>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'userSubscription', protoName: 'userSubscription', subBuilder: UserSubscription.create)
    ..hasRequiredFields = false
  ;

  UpsertUserSubscriptionReq._() : super();
  factory UpsertUserSubscriptionReq({
    $0.RequestHeader? header,
    $core.String? subscriptionId,
    UserSubscription? userSubscription,
  }) {
    final _result = create();
    if (header != null) {
      _result.header = header;
    }
    if (subscriptionId != null) {
      _result.subscriptionId = subscriptionId;
    }
    if (userSubscription != null) {
      _result.userSubscription = userSubscription;
    }
    return _result;
  }
  factory UpsertUserSubscriptionReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpsertUserSubscriptionReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpsertUserSubscriptionReq clone() => UpsertUserSubscriptionReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpsertUserSubscriptionReq copyWith(void Function(UpsertUserSubscriptionReq) updates) => super.copyWith((message) => updates(message as UpsertUserSubscriptionReq)) as UpsertUserSubscriptionReq; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UpsertUserSubscriptionReq create() => UpsertUserSubscriptionReq._();
  UpsertUserSubscriptionReq createEmptyInstance() => create();
  static $pb.PbList<UpsertUserSubscriptionReq> createRepeated() => $pb.PbList<UpsertUserSubscriptionReq>();
  @$core.pragma('dart2js:noInline')
  static UpsertUserSubscriptionReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpsertUserSubscriptionReq>(create);
  static UpsertUserSubscriptionReq? _defaultInstance;

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
  $core.String get subscriptionId => $_getSZ(1);
  @$pb.TagNumber(2)
  set subscriptionId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSubscriptionId() => $_has(1);
  @$pb.TagNumber(2)
  void clearSubscriptionId() => clearField(2);

  @$pb.TagNumber(3)
  UserSubscription get userSubscription => $_getN(2);
  @$pb.TagNumber(3)
  set userSubscription(UserSubscription v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasUserSubscription() => $_has(2);
  @$pb.TagNumber(3)
  void clearUserSubscription() => clearField(3);
  @$pb.TagNumber(3)
  UserSubscription ensureUserSubscription() => $_ensure(2);
}

class UpsertUserSubscriptionResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UpsertUserSubscriptionResp', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pb'), createEmptyInstance: create)
    ..aOM<$0.ResponseHeader>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'header', subBuilder: $0.ResponseHeader.create)
    ..hasRequiredFields = false
  ;

  UpsertUserSubscriptionResp._() : super();
  factory UpsertUserSubscriptionResp({
    $0.ResponseHeader? header,
  }) {
    final _result = create();
    if (header != null) {
      _result.header = header;
    }
    return _result;
  }
  factory UpsertUserSubscriptionResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpsertUserSubscriptionResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpsertUserSubscriptionResp clone() => UpsertUserSubscriptionResp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpsertUserSubscriptionResp copyWith(void Function(UpsertUserSubscriptionResp) updates) => super.copyWith((message) => updates(message as UpsertUserSubscriptionResp)) as UpsertUserSubscriptionResp; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UpsertUserSubscriptionResp create() => UpsertUserSubscriptionResp._();
  UpsertUserSubscriptionResp createEmptyInstance() => create();
  static $pb.PbList<UpsertUserSubscriptionResp> createRepeated() => $pb.PbList<UpsertUserSubscriptionResp>();
  @$core.pragma('dart2js:noInline')
  static UpsertUserSubscriptionResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpsertUserSubscriptionResp>(create);
  static UpsertUserSubscriptionResp? _defaultInstance;

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

class DeleteUserSubscriptionReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DeleteUserSubscriptionReq', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pb'), createEmptyInstance: create)
    ..aOM<$0.RequestHeader>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'header', subBuilder: $0.RequestHeader.create)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'subscriptionId', protoName: 'subscriptionId')
    ..hasRequiredFields = false
  ;

  DeleteUserSubscriptionReq._() : super();
  factory DeleteUserSubscriptionReq({
    $0.RequestHeader? header,
    $core.String? subscriptionId,
  }) {
    final _result = create();
    if (header != null) {
      _result.header = header;
    }
    if (subscriptionId != null) {
      _result.subscriptionId = subscriptionId;
    }
    return _result;
  }
  factory DeleteUserSubscriptionReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteUserSubscriptionReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeleteUserSubscriptionReq clone() => DeleteUserSubscriptionReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeleteUserSubscriptionReq copyWith(void Function(DeleteUserSubscriptionReq) updates) => super.copyWith((message) => updates(message as DeleteUserSubscriptionReq)) as DeleteUserSubscriptionReq; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DeleteUserSubscriptionReq create() => DeleteUserSubscriptionReq._();
  DeleteUserSubscriptionReq createEmptyInstance() => create();
  static $pb.PbList<DeleteUserSubscriptionReq> createRepeated() => $pb.PbList<DeleteUserSubscriptionReq>();
  @$core.pragma('dart2js:noInline')
  static DeleteUserSubscriptionReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteUserSubscriptionReq>(create);
  static DeleteUserSubscriptionReq? _defaultInstance;

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
  $core.String get subscriptionId => $_getSZ(1);
  @$pb.TagNumber(2)
  set subscriptionId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSubscriptionId() => $_has(1);
  @$pb.TagNumber(2)
  void clearSubscriptionId() => clearField(2);
}

class DeleteUserSubscriptionResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DeleteUserSubscriptionResp', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pb'), createEmptyInstance: create)
    ..aOM<$0.ResponseHeader>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'header', subBuilder: $0.ResponseHeader.create)
    ..hasRequiredFields = false
  ;

  DeleteUserSubscriptionResp._() : super();
  factory DeleteUserSubscriptionResp({
    $0.ResponseHeader? header,
  }) {
    final _result = create();
    if (header != null) {
      _result.header = header;
    }
    return _result;
  }
  factory DeleteUserSubscriptionResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteUserSubscriptionResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeleteUserSubscriptionResp clone() => DeleteUserSubscriptionResp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeleteUserSubscriptionResp copyWith(void Function(DeleteUserSubscriptionResp) updates) => super.copyWith((message) => updates(message as DeleteUserSubscriptionResp)) as DeleteUserSubscriptionResp; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DeleteUserSubscriptionResp create() => DeleteUserSubscriptionResp._();
  DeleteUserSubscriptionResp createEmptyInstance() => create();
  static $pb.PbList<DeleteUserSubscriptionResp> createRepeated() => $pb.PbList<DeleteUserSubscriptionResp>();
  @$core.pragma('dart2js:noInline')
  static DeleteUserSubscriptionResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteUserSubscriptionResp>(create);
  static DeleteUserSubscriptionResp? _defaultInstance;

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

class ListSubscriptionSubscribersReq_Filter extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ListSubscriptionSubscribersReq.Filter', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pb'), createEmptyInstance: create)
    ..aInt64(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'subscribeTimeGte', protoName: 'subscribeTimeGte')
    ..hasRequiredFields = false
  ;

  ListSubscriptionSubscribersReq_Filter._() : super();
  factory ListSubscriptionSubscribersReq_Filter({
    $fixnum.Int64? subscribeTimeGte,
  }) {
    final _result = create();
    if (subscribeTimeGte != null) {
      _result.subscribeTimeGte = subscribeTimeGte;
    }
    return _result;
  }
  factory ListSubscriptionSubscribersReq_Filter.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListSubscriptionSubscribersReq_Filter.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListSubscriptionSubscribersReq_Filter clone() => ListSubscriptionSubscribersReq_Filter()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListSubscriptionSubscribersReq_Filter copyWith(void Function(ListSubscriptionSubscribersReq_Filter) updates) => super.copyWith((message) => updates(message as ListSubscriptionSubscribersReq_Filter)) as ListSubscriptionSubscribersReq_Filter; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListSubscriptionSubscribersReq_Filter create() => ListSubscriptionSubscribersReq_Filter._();
  ListSubscriptionSubscribersReq_Filter createEmptyInstance() => create();
  static $pb.PbList<ListSubscriptionSubscribersReq_Filter> createRepeated() => $pb.PbList<ListSubscriptionSubscribersReq_Filter>();
  @$core.pragma('dart2js:noInline')
  static ListSubscriptionSubscribersReq_Filter getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListSubscriptionSubscribersReq_Filter>(create);
  static ListSubscriptionSubscribersReq_Filter? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get subscribeTimeGte => $_getI64(0);
  @$pb.TagNumber(1)
  set subscribeTimeGte($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSubscribeTimeGte() => $_has(0);
  @$pb.TagNumber(1)
  void clearSubscribeTimeGte() => clearField(1);
}

class ListSubscriptionSubscribersReq_Option extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ListSubscriptionSubscribersReq.Option', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pb'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  ListSubscriptionSubscribersReq_Option._() : super();
  factory ListSubscriptionSubscribersReq_Option() => create();
  factory ListSubscriptionSubscribersReq_Option.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListSubscriptionSubscribersReq_Option.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListSubscriptionSubscribersReq_Option clone() => ListSubscriptionSubscribersReq_Option()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListSubscriptionSubscribersReq_Option copyWith(void Function(ListSubscriptionSubscribersReq_Option) updates) => super.copyWith((message) => updates(message as ListSubscriptionSubscribersReq_Option)) as ListSubscriptionSubscribersReq_Option; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListSubscriptionSubscribersReq_Option create() => ListSubscriptionSubscribersReq_Option._();
  ListSubscriptionSubscribersReq_Option createEmptyInstance() => create();
  static $pb.PbList<ListSubscriptionSubscribersReq_Option> createRepeated() => $pb.PbList<ListSubscriptionSubscribersReq_Option>();
  @$core.pragma('dart2js:noInline')
  static ListSubscriptionSubscribersReq_Option getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListSubscriptionSubscribersReq_Option>(create);
  static ListSubscriptionSubscribersReq_Option? _defaultInstance;
}

class ListSubscriptionSubscribersReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ListSubscriptionSubscribersReq', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pb'), createEmptyInstance: create)
    ..aOM<$0.RequestHeader>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'header', subBuilder: $0.RequestHeader.create)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'subscriptionId', protoName: 'subscriptionId')
    ..aInt64(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'cursor')
    ..aInt64(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'limit')
    ..aOM<ListSubscriptionSubscribersReq_Filter>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'filter', subBuilder: ListSubscriptionSubscribersReq_Filter.create)
    ..aOM<ListSubscriptionSubscribersReq_Option>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'option', subBuilder: ListSubscriptionSubscribersReq_Option.create)
    ..hasRequiredFields = false
  ;

  ListSubscriptionSubscribersReq._() : super();
  factory ListSubscriptionSubscribersReq({
    $0.RequestHeader? header,
    $core.String? subscriptionId,
    $fixnum.Int64? cursor,
    $fixnum.Int64? limit,
    ListSubscriptionSubscribersReq_Filter? filter,
    ListSubscriptionSubscribersReq_Option? option,
  }) {
    final _result = create();
    if (header != null) {
      _result.header = header;
    }
    if (subscriptionId != null) {
      _result.subscriptionId = subscriptionId;
    }
    if (cursor != null) {
      _result.cursor = cursor;
    }
    if (limit != null) {
      _result.limit = limit;
    }
    if (filter != null) {
      _result.filter = filter;
    }
    if (option != null) {
      _result.option = option;
    }
    return _result;
  }
  factory ListSubscriptionSubscribersReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListSubscriptionSubscribersReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListSubscriptionSubscribersReq clone() => ListSubscriptionSubscribersReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListSubscriptionSubscribersReq copyWith(void Function(ListSubscriptionSubscribersReq) updates) => super.copyWith((message) => updates(message as ListSubscriptionSubscribersReq)) as ListSubscriptionSubscribersReq; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListSubscriptionSubscribersReq create() => ListSubscriptionSubscribersReq._();
  ListSubscriptionSubscribersReq createEmptyInstance() => create();
  static $pb.PbList<ListSubscriptionSubscribersReq> createRepeated() => $pb.PbList<ListSubscriptionSubscribersReq>();
  @$core.pragma('dart2js:noInline')
  static ListSubscriptionSubscribersReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListSubscriptionSubscribersReq>(create);
  static ListSubscriptionSubscribersReq? _defaultInstance;

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
  $core.String get subscriptionId => $_getSZ(1);
  @$pb.TagNumber(2)
  set subscriptionId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSubscriptionId() => $_has(1);
  @$pb.TagNumber(2)
  void clearSubscriptionId() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get cursor => $_getI64(2);
  @$pb.TagNumber(3)
  set cursor($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasCursor() => $_has(2);
  @$pb.TagNumber(3)
  void clearCursor() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get limit => $_getI64(3);
  @$pb.TagNumber(4)
  set limit($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasLimit() => $_has(3);
  @$pb.TagNumber(4)
  void clearLimit() => clearField(4);

  @$pb.TagNumber(5)
  ListSubscriptionSubscribersReq_Filter get filter => $_getN(4);
  @$pb.TagNumber(5)
  set filter(ListSubscriptionSubscribersReq_Filter v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasFilter() => $_has(4);
  @$pb.TagNumber(5)
  void clearFilter() => clearField(5);
  @$pb.TagNumber(5)
  ListSubscriptionSubscribersReq_Filter ensureFilter() => $_ensure(4);

  @$pb.TagNumber(6)
  ListSubscriptionSubscribersReq_Option get option => $_getN(5);
  @$pb.TagNumber(6)
  set option(ListSubscriptionSubscribersReq_Option v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasOption() => $_has(5);
  @$pb.TagNumber(6)
  void clearOption() => clearField(6);
  @$pb.TagNumber(6)
  ListSubscriptionSubscribersReq_Option ensureOption() => $_ensure(5);
}

class ListSubscriptionSubscribersResp_Subscriber extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ListSubscriptionSubscribersResp.Subscriber', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pb'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'userId', protoName: 'userId')
    ..aInt64(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'subscribeTime', protoName: 'subscribeTime')
    ..hasRequiredFields = false
  ;

  ListSubscriptionSubscribersResp_Subscriber._() : super();
  factory ListSubscriptionSubscribersResp_Subscriber({
    $core.String? userId,
    $fixnum.Int64? subscribeTime,
  }) {
    final _result = create();
    if (userId != null) {
      _result.userId = userId;
    }
    if (subscribeTime != null) {
      _result.subscribeTime = subscribeTime;
    }
    return _result;
  }
  factory ListSubscriptionSubscribersResp_Subscriber.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListSubscriptionSubscribersResp_Subscriber.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListSubscriptionSubscribersResp_Subscriber clone() => ListSubscriptionSubscribersResp_Subscriber()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListSubscriptionSubscribersResp_Subscriber copyWith(void Function(ListSubscriptionSubscribersResp_Subscriber) updates) => super.copyWith((message) => updates(message as ListSubscriptionSubscribersResp_Subscriber)) as ListSubscriptionSubscribersResp_Subscriber; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListSubscriptionSubscribersResp_Subscriber create() => ListSubscriptionSubscribersResp_Subscriber._();
  ListSubscriptionSubscribersResp_Subscriber createEmptyInstance() => create();
  static $pb.PbList<ListSubscriptionSubscribersResp_Subscriber> createRepeated() => $pb.PbList<ListSubscriptionSubscribersResp_Subscriber>();
  @$core.pragma('dart2js:noInline')
  static ListSubscriptionSubscribersResp_Subscriber getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListSubscriptionSubscribersResp_Subscriber>(create);
  static ListSubscriptionSubscribersResp_Subscriber? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get userId => $_getSZ(0);
  @$pb.TagNumber(1)
  set userId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUserId() => $_has(0);
  @$pb.TagNumber(1)
  void clearUserId() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get subscribeTime => $_getI64(1);
  @$pb.TagNumber(2)
  set subscribeTime($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSubscribeTime() => $_has(1);
  @$pb.TagNumber(2)
  void clearSubscribeTime() => clearField(2);
}

class ListSubscriptionSubscribersResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ListSubscriptionSubscribersResp', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pb'), createEmptyInstance: create)
    ..aOM<$0.ResponseHeader>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'header', subBuilder: $0.ResponseHeader.create)
    ..pc<ListSubscriptionSubscribersResp_Subscriber>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'subscriberList', $pb.PbFieldType.PM, protoName: 'subscriberList', subBuilder: ListSubscriptionSubscribersResp_Subscriber.create)
    ..hasRequiredFields = false
  ;

  ListSubscriptionSubscribersResp._() : super();
  factory ListSubscriptionSubscribersResp({
    $0.ResponseHeader? header,
    $core.Iterable<ListSubscriptionSubscribersResp_Subscriber>? subscriberList,
  }) {
    final _result = create();
    if (header != null) {
      _result.header = header;
    }
    if (subscriberList != null) {
      _result.subscriberList.addAll(subscriberList);
    }
    return _result;
  }
  factory ListSubscriptionSubscribersResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListSubscriptionSubscribersResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListSubscriptionSubscribersResp clone() => ListSubscriptionSubscribersResp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListSubscriptionSubscribersResp copyWith(void Function(ListSubscriptionSubscribersResp) updates) => super.copyWith((message) => updates(message as ListSubscriptionSubscribersResp)) as ListSubscriptionSubscribersResp; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListSubscriptionSubscribersResp create() => ListSubscriptionSubscribersResp._();
  ListSubscriptionSubscribersResp createEmptyInstance() => create();
  static $pb.PbList<ListSubscriptionSubscribersResp> createRepeated() => $pb.PbList<ListSubscriptionSubscribersResp>();
  @$core.pragma('dart2js:noInline')
  static ListSubscriptionSubscribersResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListSubscriptionSubscribersResp>(create);
  static ListSubscriptionSubscribersResp? _defaultInstance;

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
  $core.List<ListSubscriptionSubscribersResp_Subscriber> get subscriberList => $_getList(1);
}

class groupServiceApi {
  $pb.RpcClient _client;
  groupServiceApi(this._client);

  $async.Future<GroupCreateResp> groupCreate($pb.ClientContext? ctx, GroupCreateReq request) {
    var emptyResponse = GroupCreateResp();
    return _client.invoke<GroupCreateResp>(ctx, 'groupService', 'GroupCreate', request, emptyResponse);
  }
  $async.Future<CountJoinGroupResp> countJoinGroup($pb.ClientContext? ctx, CountJoinGroupReq request) {
    var emptyResponse = CountJoinGroupResp();
    return _client.invoke<CountJoinGroupResp>(ctx, 'groupService', 'CountJoinGroup', request, emptyResponse);
  }
  $async.Future<CountCreateGroupResp> countCreateGroup($pb.ClientContext? ctx, CountCreateGroupReq request) {
    var emptyResponse = CountCreateGroupResp();
    return _client.invoke<CountCreateGroupResp>(ctx, 'groupService', 'CountCreateGroup', request, emptyResponse);
  }
  $async.Future<GroupSubscribeResp> groupSubscribe($pb.ClientContext? ctx, GroupSubscribeReq request) {
    var emptyResponse = GroupSubscribeResp();
    return _client.invoke<GroupSubscribeResp>(ctx, 'groupService', 'GroupSubscribe', request, emptyResponse);
  }
  $async.Future<ListGroupSubscribersResp> listGroupSubscribers($pb.ClientContext? ctx, ListGroupSubscribersReq request) {
    var emptyResponse = ListGroupSubscribersResp();
    return _client.invoke<ListGroupSubscribersResp>(ctx, 'groupService', 'ListGroupSubscribers', request, emptyResponse);
  }
}

class friendServiceApi {
  $pb.RpcClient _client;
  friendServiceApi(this._client);

  $async.Future<FriendApplyResp> friendApply($pb.ClientContext? ctx, FriendApplyReq request) {
    var emptyResponse = FriendApplyResp();
    return _client.invoke<FriendApplyResp>(ctx, 'friendService', 'FriendApply', request, emptyResponse);
  }
  $async.Future<FriendApplyHandleResp> friendApplyHandle($pb.ClientContext? ctx, FriendApplyHandleReq request) {
    var emptyResponse = FriendApplyHandleResp();
    return _client.invoke<FriendApplyHandleResp>(ctx, 'friendService', 'FriendApplyHandle', request, emptyResponse);
  }
  $async.Future<ListFriendApplyResp> listFriendApply($pb.ClientContext? ctx, ListFriendApplyReq request) {
    var emptyResponse = ListFriendApplyResp();
    return _client.invoke<ListFriendApplyResp>(ctx, 'friendService', 'ListFriendApply', request, emptyResponse);
  }
  $async.Future<CountFriendResp> countFriend($pb.ClientContext? ctx, CountFriendReq request) {
    var emptyResponse = CountFriendResp();
    return _client.invoke<CountFriendResp>(ctx, 'friendService', 'CountFriend', request, emptyResponse);
  }
}

class conversationServiceApi {
  $pb.RpcClient _client;
  conversationServiceApi(this._client);

  $async.Future<ConversationSettingUpdateResp> conversationSettingUpdate($pb.ClientContext? ctx, ConversationSettingUpdateReq request) {
    var emptyResponse = ConversationSettingUpdateResp();
    return _client.invoke<ConversationSettingUpdateResp>(ctx, 'conversationService', 'ConversationSettingUpdate', request, emptyResponse);
  }
  $async.Future<ListJoinedConversationsResp> listJoinedConversations($pb.ClientContext? ctx, ListJoinedConversationsReq request) {
    var emptyResponse = ListJoinedConversationsResp();
    return _client.invoke<ListJoinedConversationsResp>(ctx, 'conversationService', 'ListJoinedConversations', request, emptyResponse);
  }
}

class subscriptionServiceApi {
  $pb.RpcClient _client;
  subscriptionServiceApi(this._client);

  $async.Future<SubscriptionSubscribeResp> subscriptionSubscribe($pb.ClientContext? ctx, SubscriptionSubscribeReq request) {
    var emptyResponse = SubscriptionSubscribeResp();
    return _client.invoke<SubscriptionSubscribeResp>(ctx, 'subscriptionService', 'SubscriptionSubscribe', request, emptyResponse);
  }
  $async.Future<SubscriptionAfterOnlineResp> subscriptionAfterOnline($pb.ClientContext? ctx, SubscriptionAfterOnlineReq request) {
    var emptyResponse = SubscriptionAfterOnlineResp();
    return _client.invoke<SubscriptionAfterOnlineResp>(ctx, 'subscriptionService', 'SubscriptionAfterOnline', request, emptyResponse);
  }
  $async.Future<SubscriptionAfterOfflineResp> subscriptionAfterOffline($pb.ClientContext? ctx, SubscriptionAfterOfflineReq request) {
    var emptyResponse = SubscriptionAfterOfflineResp();
    return _client.invoke<SubscriptionAfterOfflineResp>(ctx, 'subscriptionService', 'SubscriptionAfterOffline', request, emptyResponse);
  }
  $async.Future<UpsertUserSubscriptionResp> upsertUserSubscription($pb.ClientContext? ctx, UpsertUserSubscriptionReq request) {
    var emptyResponse = UpsertUserSubscriptionResp();
    return _client.invoke<UpsertUserSubscriptionResp>(ctx, 'subscriptionService', 'UpsertUserSubscription', request, emptyResponse);
  }
  $async.Future<DeleteUserSubscriptionResp> deleteUserSubscription($pb.ClientContext? ctx, DeleteUserSubscriptionReq request) {
    var emptyResponse = DeleteUserSubscriptionResp();
    return _client.invoke<DeleteUserSubscriptionResp>(ctx, 'subscriptionService', 'DeleteUserSubscription', request, emptyResponse);
  }
  $async.Future<ListSubscriptionSubscribersResp> listSubscriptionSubscribers($pb.ClientContext? ctx, ListSubscriptionSubscribersReq request) {
    var emptyResponse = ListSubscriptionSubscribersResp();
    return _client.invoke<ListSubscriptionSubscribersResp>(ctx, 'subscriptionService', 'ListSubscriptionSubscribers', request, emptyResponse);
  }
}

