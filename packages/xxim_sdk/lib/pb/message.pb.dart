///
//  Generated code. Do not modify.
//  source: message.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'common.pb.dart' as $0;

import 'message.pbenum.dart';
import 'common.pbenum.dart' as $0;

export 'message.pbenum.dart';

class MessageSendReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MessageSendReq', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pb'), createEmptyInstance: create)
    ..aOM<$0.RequestHeader>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'header', subBuilder: $0.RequestHeader.create)
    ..aOM<$0.Message>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'message', subBuilder: $0.Message.create)
    ..aOB(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'disableQueue', protoName: 'disableQueue')
    ..hasRequiredFields = false
  ;

  MessageSendReq._() : super();
  factory MessageSendReq({
    $0.RequestHeader? header,
    $0.Message? message,
    $core.bool? disableQueue,
  }) {
    final _result = create();
    if (header != null) {
      _result.header = header;
    }
    if (message != null) {
      _result.message = message;
    }
    if (disableQueue != null) {
      _result.disableQueue = disableQueue;
    }
    return _result;
  }
  factory MessageSendReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MessageSendReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MessageSendReq clone() => MessageSendReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MessageSendReq copyWith(void Function(MessageSendReq) updates) => super.copyWith((message) => updates(message as MessageSendReq)) as MessageSendReq; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MessageSendReq create() => MessageSendReq._();
  MessageSendReq createEmptyInstance() => create();
  static $pb.PbList<MessageSendReq> createRepeated() => $pb.PbList<MessageSendReq>();
  @$core.pragma('dart2js:noInline')
  static MessageSendReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MessageSendReq>(create);
  static MessageSendReq? _defaultInstance;

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
  $0.Message get message => $_getN(1);
  @$pb.TagNumber(2)
  set message($0.Message v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasMessage() => $_has(1);
  @$pb.TagNumber(2)
  void clearMessage() => clearField(2);
  @$pb.TagNumber(2)
  $0.Message ensureMessage() => $_ensure(1);

  @$pb.TagNumber(3)
  $core.bool get disableQueue => $_getBF(2);
  @$pb.TagNumber(3)
  set disableQueue($core.bool v) { $_setBool(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasDisableQueue() => $_has(2);
  @$pb.TagNumber(3)
  void clearDisableQueue() => clearField(3);
}

class MessageSendResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MessageSendResp', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pb'), createEmptyInstance: create)
    ..aOM<$0.ResponseHeader>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'header', subBuilder: $0.ResponseHeader.create)
    ..hasRequiredFields = false
  ;

  MessageSendResp._() : super();
  factory MessageSendResp({
    $0.ResponseHeader? header,
  }) {
    final _result = create();
    if (header != null) {
      _result.header = header;
    }
    return _result;
  }
  factory MessageSendResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MessageSendResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MessageSendResp clone() => MessageSendResp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MessageSendResp copyWith(void Function(MessageSendResp) updates) => super.copyWith((message) => updates(message as MessageSendResp)) as MessageSendResp; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MessageSendResp create() => MessageSendResp._();
  MessageSendResp createEmptyInstance() => create();
  static $pb.PbList<MessageSendResp> createRepeated() => $pb.PbList<MessageSendResp>();
  @$core.pragma('dart2js:noInline')
  static MessageSendResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MessageSendResp>(create);
  static MessageSendResp? _defaultInstance;

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

class MessageBatchSendReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MessageBatchSendReq', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pb'), createEmptyInstance: create)
    ..aOM<$0.RequestHeader>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'header', subBuilder: $0.RequestHeader.create)
    ..pc<$0.Message>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'messages', $pb.PbFieldType.PM, subBuilder: $0.Message.create)
    ..aOB(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'disableQueue', protoName: 'disableQueue')
    ..hasRequiredFields = false
  ;

  MessageBatchSendReq._() : super();
  factory MessageBatchSendReq({
    $0.RequestHeader? header,
    $core.Iterable<$0.Message>? messages,
    $core.bool? disableQueue,
  }) {
    final _result = create();
    if (header != null) {
      _result.header = header;
    }
    if (messages != null) {
      _result.messages.addAll(messages);
    }
    if (disableQueue != null) {
      _result.disableQueue = disableQueue;
    }
    return _result;
  }
  factory MessageBatchSendReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MessageBatchSendReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MessageBatchSendReq clone() => MessageBatchSendReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MessageBatchSendReq copyWith(void Function(MessageBatchSendReq) updates) => super.copyWith((message) => updates(message as MessageBatchSendReq)) as MessageBatchSendReq; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MessageBatchSendReq create() => MessageBatchSendReq._();
  MessageBatchSendReq createEmptyInstance() => create();
  static $pb.PbList<MessageBatchSendReq> createRepeated() => $pb.PbList<MessageBatchSendReq>();
  @$core.pragma('dart2js:noInline')
  static MessageBatchSendReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MessageBatchSendReq>(create);
  static MessageBatchSendReq? _defaultInstance;

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
  $core.List<$0.Message> get messages => $_getList(1);

  @$pb.TagNumber(3)
  $core.bool get disableQueue => $_getBF(2);
  @$pb.TagNumber(3)
  set disableQueue($core.bool v) { $_setBool(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasDisableQueue() => $_has(2);
  @$pb.TagNumber(3)
  void clearDisableQueue() => clearField(3);
}

class MessageBatchSendResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MessageBatchSendResp', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pb'), createEmptyInstance: create)
    ..aOM<$0.ResponseHeader>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'header', subBuilder: $0.ResponseHeader.create)
    ..hasRequiredFields = false
  ;

  MessageBatchSendResp._() : super();
  factory MessageBatchSendResp({
    $0.ResponseHeader? header,
  }) {
    final _result = create();
    if (header != null) {
      _result.header = header;
    }
    return _result;
  }
  factory MessageBatchSendResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MessageBatchSendResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MessageBatchSendResp clone() => MessageBatchSendResp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MessageBatchSendResp copyWith(void Function(MessageBatchSendResp) updates) => super.copyWith((message) => updates(message as MessageBatchSendResp)) as MessageBatchSendResp; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MessageBatchSendResp create() => MessageBatchSendResp._();
  MessageBatchSendResp createEmptyInstance() => create();
  static $pb.PbList<MessageBatchSendResp> createRepeated() => $pb.PbList<MessageBatchSendResp>();
  @$core.pragma('dart2js:noInline')
  static MessageBatchSendResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MessageBatchSendResp>(create);
  static MessageBatchSendResp? _defaultInstance;

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

class MessageInsertReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MessageInsertReq', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pb'), createEmptyInstance: create)
    ..aOM<$0.RequestHeader>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'header', subBuilder: $0.RequestHeader.create)
    ..pc<$0.Message>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'messages', $pb.PbFieldType.PM, subBuilder: $0.Message.create)
    ..hasRequiredFields = false
  ;

  MessageInsertReq._() : super();
  factory MessageInsertReq({
    $0.RequestHeader? header,
    $core.Iterable<$0.Message>? messages,
  }) {
    final _result = create();
    if (header != null) {
      _result.header = header;
    }
    if (messages != null) {
      _result.messages.addAll(messages);
    }
    return _result;
  }
  factory MessageInsertReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MessageInsertReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MessageInsertReq clone() => MessageInsertReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MessageInsertReq copyWith(void Function(MessageInsertReq) updates) => super.copyWith((message) => updates(message as MessageInsertReq)) as MessageInsertReq; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MessageInsertReq create() => MessageInsertReq._();
  MessageInsertReq createEmptyInstance() => create();
  static $pb.PbList<MessageInsertReq> createRepeated() => $pb.PbList<MessageInsertReq>();
  @$core.pragma('dart2js:noInline')
  static MessageInsertReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MessageInsertReq>(create);
  static MessageInsertReq? _defaultInstance;

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
  $core.List<$0.Message> get messages => $_getList(1);
}

class MessageInsertResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MessageInsertResp', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pb'), createEmptyInstance: create)
    ..aOM<$0.ResponseHeader>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'header', subBuilder: $0.ResponseHeader.create)
    ..hasRequiredFields = false
  ;

  MessageInsertResp._() : super();
  factory MessageInsertResp({
    $0.ResponseHeader? header,
  }) {
    final _result = create();
    if (header != null) {
      _result.header = header;
    }
    return _result;
  }
  factory MessageInsertResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MessageInsertResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MessageInsertResp clone() => MessageInsertResp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MessageInsertResp copyWith(void Function(MessageInsertResp) updates) => super.copyWith((message) => updates(message as MessageInsertResp)) as MessageInsertResp; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MessageInsertResp create() => MessageInsertResp._();
  MessageInsertResp createEmptyInstance() => create();
  static $pb.PbList<MessageInsertResp> createRepeated() => $pb.PbList<MessageInsertResp>();
  @$core.pragma('dart2js:noInline')
  static MessageInsertResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MessageInsertResp>(create);
  static MessageInsertResp? _defaultInstance;

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

class MessagePushReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MessagePushReq', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pb'), createEmptyInstance: create)
    ..aOM<$0.RequestHeader>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'header', subBuilder: $0.RequestHeader.create)
    ..pc<$0.Message>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'message', $pb.PbFieldType.PM, subBuilder: $0.Message.create)
    ..hasRequiredFields = false
  ;

  MessagePushReq._() : super();
  factory MessagePushReq({
    $0.RequestHeader? header,
    $core.Iterable<$0.Message>? message,
  }) {
    final _result = create();
    if (header != null) {
      _result.header = header;
    }
    if (message != null) {
      _result.message.addAll(message);
    }
    return _result;
  }
  factory MessagePushReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MessagePushReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MessagePushReq clone() => MessagePushReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MessagePushReq copyWith(void Function(MessagePushReq) updates) => super.copyWith((message) => updates(message as MessagePushReq)) as MessagePushReq; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MessagePushReq create() => MessagePushReq._();
  MessagePushReq createEmptyInstance() => create();
  static $pb.PbList<MessagePushReq> createRepeated() => $pb.PbList<MessagePushReq>();
  @$core.pragma('dart2js:noInline')
  static MessagePushReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MessagePushReq>(create);
  static MessagePushReq? _defaultInstance;

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
  $core.List<$0.Message> get message => $_getList(1);
}

class MessagePushResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MessagePushResp', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pb'), createEmptyInstance: create)
    ..aOM<$0.ResponseHeader>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'header', subBuilder: $0.ResponseHeader.create)
    ..hasRequiredFields = false
  ;

  MessagePushResp._() : super();
  factory MessagePushResp({
    $0.ResponseHeader? header,
  }) {
    final _result = create();
    if (header != null) {
      _result.header = header;
    }
    return _result;
  }
  factory MessagePushResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MessagePushResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MessagePushResp clone() => MessagePushResp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MessagePushResp copyWith(void Function(MessagePushResp) updates) => super.copyWith((message) => updates(message as MessagePushResp)) as MessagePushResp; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MessagePushResp create() => MessagePushResp._();
  MessagePushResp createEmptyInstance() => create();
  static $pb.PbList<MessagePushResp> createRepeated() => $pb.PbList<MessagePushResp>();
  @$core.pragma('dart2js:noInline')
  static MessagePushResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MessagePushResp>(create);
  static MessagePushResp? _defaultInstance;

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

class MessageContentText_Item_Image extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MessageContentText.Item.Image', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pb'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'url')
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'width', $pb.PbFieldType.O3)
    ..a<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'height', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  MessageContentText_Item_Image._() : super();
  factory MessageContentText_Item_Image({
    $core.String? url,
    $core.int? width,
    $core.int? height,
  }) {
    final _result = create();
    if (url != null) {
      _result.url = url;
    }
    if (width != null) {
      _result.width = width;
    }
    if (height != null) {
      _result.height = height;
    }
    return _result;
  }
  factory MessageContentText_Item_Image.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MessageContentText_Item_Image.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MessageContentText_Item_Image clone() => MessageContentText_Item_Image()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MessageContentText_Item_Image copyWith(void Function(MessageContentText_Item_Image) updates) => super.copyWith((message) => updates(message as MessageContentText_Item_Image)) as MessageContentText_Item_Image; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MessageContentText_Item_Image create() => MessageContentText_Item_Image._();
  MessageContentText_Item_Image createEmptyInstance() => create();
  static $pb.PbList<MessageContentText_Item_Image> createRepeated() => $pb.PbList<MessageContentText_Item_Image>();
  @$core.pragma('dart2js:noInline')
  static MessageContentText_Item_Image getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MessageContentText_Item_Image>(create);
  static MessageContentText_Item_Image? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get url => $_getSZ(0);
  @$pb.TagNumber(1)
  set url($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUrl() => $_has(0);
  @$pb.TagNumber(1)
  void clearUrl() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get width => $_getIZ(1);
  @$pb.TagNumber(2)
  set width($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasWidth() => $_has(1);
  @$pb.TagNumber(2)
  void clearWidth() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get height => $_getIZ(2);
  @$pb.TagNumber(3)
  set height($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasHeight() => $_has(2);
  @$pb.TagNumber(3)
  void clearHeight() => clearField(3);
}

class MessageContentText_Item_At extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MessageContentText.Item.At', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pb'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'userId', protoName: 'userId')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..hasRequiredFields = false
  ;

  MessageContentText_Item_At._() : super();
  factory MessageContentText_Item_At({
    $core.String? userId,
    $core.String? name,
  }) {
    final _result = create();
    if (userId != null) {
      _result.userId = userId;
    }
    if (name != null) {
      _result.name = name;
    }
    return _result;
  }
  factory MessageContentText_Item_At.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MessageContentText_Item_At.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MessageContentText_Item_At clone() => MessageContentText_Item_At()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MessageContentText_Item_At copyWith(void Function(MessageContentText_Item_At) updates) => super.copyWith((message) => updates(message as MessageContentText_Item_At)) as MessageContentText_Item_At; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MessageContentText_Item_At create() => MessageContentText_Item_At._();
  MessageContentText_Item_At createEmptyInstance() => create();
  static $pb.PbList<MessageContentText_Item_At> createRepeated() => $pb.PbList<MessageContentText_Item_At>();
  @$core.pragma('dart2js:noInline')
  static MessageContentText_Item_At getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MessageContentText_Item_At>(create);
  static MessageContentText_Item_At? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get userId => $_getSZ(0);
  @$pb.TagNumber(1)
  set userId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUserId() => $_has(0);
  @$pb.TagNumber(1)
  void clearUserId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);
}

class MessageContentText_Item extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MessageContentText.Item', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pb'), createEmptyInstance: create)
    ..e<MessageContentText_Item_Type>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'type', $pb.PbFieldType.OE, defaultOrMaker: MessageContentText_Item_Type.TEXT, valueOf: MessageContentText_Item_Type.valueOf, enumValues: MessageContentText_Item_Type.values)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'text')
    ..aOM<MessageContentText_Item_Image>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'image', subBuilder: MessageContentText_Item_Image.create)
    ..aOM<MessageContentText_Item_At>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'at', subBuilder: MessageContentText_Item_At.create)
    ..hasRequiredFields = false
  ;

  MessageContentText_Item._() : super();
  factory MessageContentText_Item({
    MessageContentText_Item_Type? type,
    $core.String? text,
    MessageContentText_Item_Image? image,
    MessageContentText_Item_At? at,
  }) {
    final _result = create();
    if (type != null) {
      _result.type = type;
    }
    if (text != null) {
      _result.text = text;
    }
    if (image != null) {
      _result.image = image;
    }
    if (at != null) {
      _result.at = at;
    }
    return _result;
  }
  factory MessageContentText_Item.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MessageContentText_Item.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MessageContentText_Item clone() => MessageContentText_Item()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MessageContentText_Item copyWith(void Function(MessageContentText_Item) updates) => super.copyWith((message) => updates(message as MessageContentText_Item)) as MessageContentText_Item; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MessageContentText_Item create() => MessageContentText_Item._();
  MessageContentText_Item createEmptyInstance() => create();
  static $pb.PbList<MessageContentText_Item> createRepeated() => $pb.PbList<MessageContentText_Item>();
  @$core.pragma('dart2js:noInline')
  static MessageContentText_Item getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MessageContentText_Item>(create);
  static MessageContentText_Item? _defaultInstance;

  @$pb.TagNumber(1)
  MessageContentText_Item_Type get type => $_getN(0);
  @$pb.TagNumber(1)
  set type(MessageContentText_Item_Type v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get text => $_getSZ(1);
  @$pb.TagNumber(2)
  set text($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasText() => $_has(1);
  @$pb.TagNumber(2)
  void clearText() => clearField(2);

  @$pb.TagNumber(3)
  MessageContentText_Item_Image get image => $_getN(2);
  @$pb.TagNumber(3)
  set image(MessageContentText_Item_Image v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasImage() => $_has(2);
  @$pb.TagNumber(3)
  void clearImage() => clearField(3);
  @$pb.TagNumber(3)
  MessageContentText_Item_Image ensureImage() => $_ensure(2);

  @$pb.TagNumber(4)
  MessageContentText_Item_At get at => $_getN(3);
  @$pb.TagNumber(4)
  set at(MessageContentText_Item_At v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasAt() => $_has(3);
  @$pb.TagNumber(4)
  void clearAt() => clearField(4);
  @$pb.TagNumber(4)
  MessageContentText_Item_At ensureAt() => $_ensure(3);
}

class MessageContentText extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MessageContentText', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pb'), createEmptyInstance: create)
    ..pc<MessageContentText_Item>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'items', $pb.PbFieldType.PM, subBuilder: MessageContentText_Item.create)
    ..hasRequiredFields = false
  ;

  MessageContentText._() : super();
  factory MessageContentText({
    $core.Iterable<MessageContentText_Item>? items,
  }) {
    final _result = create();
    if (items != null) {
      _result.items.addAll(items);
    }
    return _result;
  }
  factory MessageContentText.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MessageContentText.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MessageContentText clone() => MessageContentText()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MessageContentText copyWith(void Function(MessageContentText) updates) => super.copyWith((message) => updates(message as MessageContentText)) as MessageContentText; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MessageContentText create() => MessageContentText._();
  MessageContentText createEmptyInstance() => create();
  static $pb.PbList<MessageContentText> createRepeated() => $pb.PbList<MessageContentText>();
  @$core.pragma('dart2js:noInline')
  static MessageContentText getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MessageContentText>(create);
  static MessageContentText? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<MessageContentText_Item> get items => $_getList(0);
}

class NoticeContentNewFriendRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'NoticeContentNewFriendRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pb'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  NoticeContentNewFriendRequest._() : super();
  factory NoticeContentNewFriendRequest() => create();
  factory NoticeContentNewFriendRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory NoticeContentNewFriendRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  NoticeContentNewFriendRequest clone() => NoticeContentNewFriendRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  NoticeContentNewFriendRequest copyWith(void Function(NoticeContentNewFriendRequest) updates) => super.copyWith((message) => updates(message as NoticeContentNewFriendRequest)) as NoticeContentNewFriendRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static NoticeContentNewFriendRequest create() => NoticeContentNewFriendRequest._();
  NoticeContentNewFriendRequest createEmptyInstance() => create();
  static $pb.PbList<NoticeContentNewFriendRequest> createRepeated() => $pb.PbList<NoticeContentNewFriendRequest>();
  @$core.pragma('dart2js:noInline')
  static NoticeContentNewFriendRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<NoticeContentNewFriendRequest>(create);
  static NoticeContentNewFriendRequest? _defaultInstance;
}

class NoticeContentJoinNewGroup extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'NoticeContentJoinNewGroup', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pb'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'groupId', protoName: 'groupId')
    ..hasRequiredFields = false
  ;

  NoticeContentJoinNewGroup._() : super();
  factory NoticeContentJoinNewGroup({
    $core.String? groupId,
  }) {
    final _result = create();
    if (groupId != null) {
      _result.groupId = groupId;
    }
    return _result;
  }
  factory NoticeContentJoinNewGroup.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory NoticeContentJoinNewGroup.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  NoticeContentJoinNewGroup clone() => NoticeContentJoinNewGroup()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  NoticeContentJoinNewGroup copyWith(void Function(NoticeContentJoinNewGroup) updates) => super.copyWith((message) => updates(message as NoticeContentJoinNewGroup)) as NoticeContentJoinNewGroup; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static NoticeContentJoinNewGroup create() => NoticeContentJoinNewGroup._();
  NoticeContentJoinNewGroup createEmptyInstance() => create();
  static $pb.PbList<NoticeContentJoinNewGroup> createRepeated() => $pb.PbList<NoticeContentJoinNewGroup>();
  @$core.pragma('dart2js:noInline')
  static NoticeContentJoinNewGroup getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<NoticeContentJoinNewGroup>(create);
  static NoticeContentJoinNewGroup? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get groupId => $_getSZ(0);
  @$pb.TagNumber(1)
  set groupId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasGroupId() => $_has(0);
  @$pb.TagNumber(1)
  void clearGroupId() => clearField(1);
}

class NoticeContentOnlineStatus extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'NoticeContentOnlineStatus', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pb'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'userId', protoName: 'userId')
    ..aOB(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'online')
    ..hasRequiredFields = false
  ;

  NoticeContentOnlineStatus._() : super();
  factory NoticeContentOnlineStatus({
    $core.String? userId,
    $core.bool? online,
  }) {
    final _result = create();
    if (userId != null) {
      _result.userId = userId;
    }
    if (online != null) {
      _result.online = online;
    }
    return _result;
  }
  factory NoticeContentOnlineStatus.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory NoticeContentOnlineStatus.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  NoticeContentOnlineStatus clone() => NoticeContentOnlineStatus()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  NoticeContentOnlineStatus copyWith(void Function(NoticeContentOnlineStatus) updates) => super.copyWith((message) => updates(message as NoticeContentOnlineStatus)) as NoticeContentOnlineStatus; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static NoticeContentOnlineStatus create() => NoticeContentOnlineStatus._();
  NoticeContentOnlineStatus createEmptyInstance() => create();
  static $pb.PbList<NoticeContentOnlineStatus> createRepeated() => $pb.PbList<NoticeContentOnlineStatus>();
  @$core.pragma('dart2js:noInline')
  static NoticeContentOnlineStatus getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<NoticeContentOnlineStatus>(create);
  static NoticeContentOnlineStatus? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get userId => $_getSZ(0);
  @$pb.TagNumber(1)
  set userId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUserId() => $_has(0);
  @$pb.TagNumber(1)
  void clearUserId() => clearField(1);

  @$pb.TagNumber(2)
  $core.bool get online => $_getBF(1);
  @$pb.TagNumber(2)
  set online($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasOnline() => $_has(1);
  @$pb.TagNumber(2)
  void clearOnline() => clearField(2);
}

class NoticeSendReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'NoticeSendReq', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pb'), createEmptyInstance: create)
    ..aOM<$0.RequestHeader>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'header', subBuilder: $0.RequestHeader.create)
    ..aOM<$0.Notice>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'notice', subBuilder: $0.Notice.create)
    ..pPS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'userIds', protoName: 'userIds')
    ..aOB(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'broadcast')
    ..hasRequiredFields = false
  ;

  NoticeSendReq._() : super();
  factory NoticeSendReq({
    $0.RequestHeader? header,
    $0.Notice? notice,
    $core.Iterable<$core.String>? userIds,
    $core.bool? broadcast,
  }) {
    final _result = create();
    if (header != null) {
      _result.header = header;
    }
    if (notice != null) {
      _result.notice = notice;
    }
    if (userIds != null) {
      _result.userIds.addAll(userIds);
    }
    if (broadcast != null) {
      _result.broadcast = broadcast;
    }
    return _result;
  }
  factory NoticeSendReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory NoticeSendReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  NoticeSendReq clone() => NoticeSendReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  NoticeSendReq copyWith(void Function(NoticeSendReq) updates) => super.copyWith((message) => updates(message as NoticeSendReq)) as NoticeSendReq; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static NoticeSendReq create() => NoticeSendReq._();
  NoticeSendReq createEmptyInstance() => create();
  static $pb.PbList<NoticeSendReq> createRepeated() => $pb.PbList<NoticeSendReq>();
  @$core.pragma('dart2js:noInline')
  static NoticeSendReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<NoticeSendReq>(create);
  static NoticeSendReq? _defaultInstance;

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
  $0.Notice get notice => $_getN(1);
  @$pb.TagNumber(2)
  set notice($0.Notice v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasNotice() => $_has(1);
  @$pb.TagNumber(2)
  void clearNotice() => clearField(2);
  @$pb.TagNumber(2)
  $0.Notice ensureNotice() => $_ensure(1);

  @$pb.TagNumber(3)
  $core.List<$core.String> get userIds => $_getList(2);

  @$pb.TagNumber(4)
  $core.bool get broadcast => $_getBF(3);
  @$pb.TagNumber(4)
  set broadcast($core.bool v) { $_setBool(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasBroadcast() => $_has(3);
  @$pb.TagNumber(4)
  void clearBroadcast() => clearField(4);
}

class NoticeSendResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'NoticeSendResp', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pb'), createEmptyInstance: create)
    ..aOM<$0.ResponseHeader>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'header', subBuilder: $0.ResponseHeader.create)
    ..hasRequiredFields = false
  ;

  NoticeSendResp._() : super();
  factory NoticeSendResp({
    $0.ResponseHeader? header,
  }) {
    final _result = create();
    if (header != null) {
      _result.header = header;
    }
    return _result;
  }
  factory NoticeSendResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory NoticeSendResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  NoticeSendResp clone() => NoticeSendResp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  NoticeSendResp copyWith(void Function(NoticeSendResp) updates) => super.copyWith((message) => updates(message as NoticeSendResp)) as NoticeSendResp; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static NoticeSendResp create() => NoticeSendResp._();
  NoticeSendResp createEmptyInstance() => create();
  static $pb.PbList<NoticeSendResp> createRepeated() => $pb.PbList<NoticeSendResp>();
  @$core.pragma('dart2js:noInline')
  static NoticeSendResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<NoticeSendResp>(create);
  static NoticeSendResp? _defaultInstance;

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

class NoticeBatchSendReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'NoticeBatchSendReq', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pb'), createEmptyInstance: create)
    ..aOM<$0.RequestHeader>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'header', subBuilder: $0.RequestHeader.create)
    ..pc<NoticeSendReq>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'notices', $pb.PbFieldType.PM, subBuilder: NoticeSendReq.create)
    ..hasRequiredFields = false
  ;

  NoticeBatchSendReq._() : super();
  factory NoticeBatchSendReq({
    $0.RequestHeader? header,
    $core.Iterable<NoticeSendReq>? notices,
  }) {
    final _result = create();
    if (header != null) {
      _result.header = header;
    }
    if (notices != null) {
      _result.notices.addAll(notices);
    }
    return _result;
  }
  factory NoticeBatchSendReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory NoticeBatchSendReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  NoticeBatchSendReq clone() => NoticeBatchSendReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  NoticeBatchSendReq copyWith(void Function(NoticeBatchSendReq) updates) => super.copyWith((message) => updates(message as NoticeBatchSendReq)) as NoticeBatchSendReq; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static NoticeBatchSendReq create() => NoticeBatchSendReq._();
  NoticeBatchSendReq createEmptyInstance() => create();
  static $pb.PbList<NoticeBatchSendReq> createRepeated() => $pb.PbList<NoticeBatchSendReq>();
  @$core.pragma('dart2js:noInline')
  static NoticeBatchSendReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<NoticeBatchSendReq>(create);
  static NoticeBatchSendReq? _defaultInstance;

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
  $core.List<NoticeSendReq> get notices => $_getList(1);
}

class NoticeBatchSendResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'NoticeBatchSendResp', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pb'), createEmptyInstance: create)
    ..aOM<$0.ResponseHeader>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'header', subBuilder: $0.ResponseHeader.create)
    ..hasRequiredFields = false
  ;

  NoticeBatchSendResp._() : super();
  factory NoticeBatchSendResp({
    $0.ResponseHeader? header,
  }) {
    final _result = create();
    if (header != null) {
      _result.header = header;
    }
    return _result;
  }
  factory NoticeBatchSendResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory NoticeBatchSendResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  NoticeBatchSendResp clone() => NoticeBatchSendResp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  NoticeBatchSendResp copyWith(void Function(NoticeBatchSendResp) updates) => super.copyWith((message) => updates(message as NoticeBatchSendResp)) as NoticeBatchSendResp; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static NoticeBatchSendResp create() => NoticeBatchSendResp._();
  NoticeBatchSendResp createEmptyInstance() => create();
  static $pb.PbList<NoticeBatchSendResp> createRepeated() => $pb.PbList<NoticeBatchSendResp>();
  @$core.pragma('dart2js:noInline')
  static NoticeBatchSendResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<NoticeBatchSendResp>(create);
  static NoticeBatchSendResp? _defaultInstance;

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

class ListNoticeReq_Conversation extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ListNoticeReq.Conversation', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pb'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'conversationId', protoName: 'conversationId')
    ..e<$0.ConversationType>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'conversationType', $pb.PbFieldType.OE, protoName: 'conversationType', defaultOrMaker: $0.ConversationType.Single, valueOf: $0.ConversationType.valueOf, enumValues: $0.ConversationType.values)
    ..hasRequiredFields = false
  ;

  ListNoticeReq_Conversation._() : super();
  factory ListNoticeReq_Conversation({
    $core.String? conversationId,
    $0.ConversationType? conversationType,
  }) {
    final _result = create();
    if (conversationId != null) {
      _result.conversationId = conversationId;
    }
    if (conversationType != null) {
      _result.conversationType = conversationType;
    }
    return _result;
  }
  factory ListNoticeReq_Conversation.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListNoticeReq_Conversation.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListNoticeReq_Conversation clone() => ListNoticeReq_Conversation()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListNoticeReq_Conversation copyWith(void Function(ListNoticeReq_Conversation) updates) => super.copyWith((message) => updates(message as ListNoticeReq_Conversation)) as ListNoticeReq_Conversation; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListNoticeReq_Conversation create() => ListNoticeReq_Conversation._();
  ListNoticeReq_Conversation createEmptyInstance() => create();
  static $pb.PbList<ListNoticeReq_Conversation> createRepeated() => $pb.PbList<ListNoticeReq_Conversation>();
  @$core.pragma('dart2js:noInline')
  static ListNoticeReq_Conversation getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListNoticeReq_Conversation>(create);
  static ListNoticeReq_Conversation? _defaultInstance;

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
}

class ListNoticeReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ListNoticeReq', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pb'), createEmptyInstance: create)
    ..aOM<$0.RequestHeader>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'header', subBuilder: $0.RequestHeader.create)
    ..pc<ListNoticeReq_Conversation>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'convList', $pb.PbFieldType.PM, protoName: 'convList', subBuilder: ListNoticeReq_Conversation.create)
    ..aInt64(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'SortGt', protoName: 'SortGt')
    ..aInt64(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Limit', protoName: 'Limit')
    ..hasRequiredFields = false
  ;

  ListNoticeReq._() : super();
  factory ListNoticeReq({
    $0.RequestHeader? header,
    $core.Iterable<ListNoticeReq_Conversation>? convList,
    $fixnum.Int64? sortGt,
    $fixnum.Int64? limit,
  }) {
    final _result = create();
    if (header != null) {
      _result.header = header;
    }
    if (convList != null) {
      _result.convList.addAll(convList);
    }
    if (sortGt != null) {
      _result.sortGt = sortGt;
    }
    if (limit != null) {
      _result.limit = limit;
    }
    return _result;
  }
  factory ListNoticeReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListNoticeReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListNoticeReq clone() => ListNoticeReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListNoticeReq copyWith(void Function(ListNoticeReq) updates) => super.copyWith((message) => updates(message as ListNoticeReq)) as ListNoticeReq; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListNoticeReq create() => ListNoticeReq._();
  ListNoticeReq createEmptyInstance() => create();
  static $pb.PbList<ListNoticeReq> createRepeated() => $pb.PbList<ListNoticeReq>();
  @$core.pragma('dart2js:noInline')
  static ListNoticeReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListNoticeReq>(create);
  static ListNoticeReq? _defaultInstance;

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
  $core.List<ListNoticeReq_Conversation> get convList => $_getList(1);

  @$pb.TagNumber(3)
  $fixnum.Int64 get sortGt => $_getI64(2);
  @$pb.TagNumber(3)
  set sortGt($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasSortGt() => $_has(2);
  @$pb.TagNumber(3)
  void clearSortGt() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get limit => $_getI64(3);
  @$pb.TagNumber(4)
  set limit($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasLimit() => $_has(3);
  @$pb.TagNumber(4)
  void clearLimit() => clearField(4);
}

class ListNoticeResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ListNoticeResp', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pb'), createEmptyInstance: create)
    ..aOM<$0.ResponseHeader>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'header', subBuilder: $0.ResponseHeader.create)
    ..pc<$0.Notice>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'notices', $pb.PbFieldType.PM, subBuilder: $0.Notice.create)
    ..hasRequiredFields = false
  ;

  ListNoticeResp._() : super();
  factory ListNoticeResp({
    $0.ResponseHeader? header,
    $core.Iterable<$0.Notice>? notices,
  }) {
    final _result = create();
    if (header != null) {
      _result.header = header;
    }
    if (notices != null) {
      _result.notices.addAll(notices);
    }
    return _result;
  }
  factory ListNoticeResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListNoticeResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListNoticeResp clone() => ListNoticeResp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListNoticeResp copyWith(void Function(ListNoticeResp) updates) => super.copyWith((message) => updates(message as ListNoticeResp)) as ListNoticeResp; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListNoticeResp create() => ListNoticeResp._();
  ListNoticeResp createEmptyInstance() => create();
  static $pb.PbList<ListNoticeResp> createRepeated() => $pb.PbList<ListNoticeResp>();
  @$core.pragma('dart2js:noInline')
  static ListNoticeResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListNoticeResp>(create);
  static ListNoticeResp? _defaultInstance;

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
  $core.List<$0.Notice> get notices => $_getList(1);
}

class messageServiceApi {
  $pb.RpcClient _client;
  messageServiceApi(this._client);

  $async.Future<MessageInsertResp> messageInsert($pb.ClientContext? ctx, MessageInsertReq request) {
    var emptyResponse = MessageInsertResp();
    return _client.invoke<MessageInsertResp>(ctx, 'messageService', 'MessageInsert', request, emptyResponse);
  }
  $async.Future<MessageSendResp> messageSend($pb.ClientContext? ctx, MessageSendReq request) {
    var emptyResponse = MessageSendResp();
    return _client.invoke<MessageSendResp>(ctx, 'messageService', 'MessageSend', request, emptyResponse);
  }
  $async.Future<MessageBatchSendResp> messageBatchSend($pb.ClientContext? ctx, MessageBatchSendReq request) {
    var emptyResponse = MessageBatchSendResp();
    return _client.invoke<MessageBatchSendResp>(ctx, 'messageService', 'MessageBatchSend', request, emptyResponse);
  }
  $async.Future<MessagePushResp> messagePush($pb.ClientContext? ctx, MessagePushReq request) {
    var emptyResponse = MessagePushResp();
    return _client.invoke<MessagePushResp>(ctx, 'messageService', 'MessagePush', request, emptyResponse);
  }
}

class noticeServiceApi {
  $pb.RpcClient _client;
  noticeServiceApi(this._client);

  $async.Future<NoticeSendResp> noticeSend($pb.ClientContext? ctx, NoticeSendReq request) {
    var emptyResponse = NoticeSendResp();
    return _client.invoke<NoticeSendResp>(ctx, 'noticeService', 'NoticeSend', request, emptyResponse);
  }
  $async.Future<NoticeBatchSendResp> noticeBatchSend($pb.ClientContext? ctx, NoticeBatchSendReq request) {
    var emptyResponse = NoticeBatchSendResp();
    return _client.invoke<NoticeBatchSendResp>(ctx, 'noticeService', 'NoticeBatchSend', request, emptyResponse);
  }
  $async.Future<ListNoticeResp> listNotice($pb.ClientContext? ctx, ListNoticeReq request) {
    var emptyResponse = ListNoticeResp();
    return _client.invoke<ListNoticeResp>(ctx, 'noticeService', 'ListNotice', request, emptyResponse);
  }
}

