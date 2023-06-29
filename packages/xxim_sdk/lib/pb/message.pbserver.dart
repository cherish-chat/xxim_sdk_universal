///
//  Generated code. Do not modify.
//  source: message.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'package:protobuf/protobuf.dart' as $pb;

import 'dart:core' as $core;
import 'message.pb.dart' as $3;
import 'message.pbjson.dart';

export 'message.pb.dart';

abstract class messageServiceBase extends $pb.GeneratedService {
  $async.Future<$3.MessageInsertResp> messageInsert($pb.ServerContext ctx, $3.MessageInsertReq request);
  $async.Future<$3.MessageSendResp> messageSend($pb.ServerContext ctx, $3.MessageSendReq request);
  $async.Future<$3.MessageBatchSendResp> messageBatchSend($pb.ServerContext ctx, $3.MessageBatchSendReq request);
  $async.Future<$3.MessagePushResp> messagePush($pb.ServerContext ctx, $3.MessagePushReq request);

  $pb.GeneratedMessage createRequest($core.String method) {
    switch (method) {
      case 'MessageInsert': return $3.MessageInsertReq();
      case 'MessageSend': return $3.MessageSendReq();
      case 'MessageBatchSend': return $3.MessageBatchSendReq();
      case 'MessagePush': return $3.MessagePushReq();
      default: throw $core.ArgumentError('Unknown method: $method');
    }
  }

  $async.Future<$pb.GeneratedMessage> handleCall($pb.ServerContext ctx, $core.String method, $pb.GeneratedMessage request) {
    switch (method) {
      case 'MessageInsert': return this.messageInsert(ctx, request as $3.MessageInsertReq);
      case 'MessageSend': return this.messageSend(ctx, request as $3.MessageSendReq);
      case 'MessageBatchSend': return this.messageBatchSend(ctx, request as $3.MessageBatchSendReq);
      case 'MessagePush': return this.messagePush(ctx, request as $3.MessagePushReq);
      default: throw $core.ArgumentError('Unknown method: $method');
    }
  }

  $core.Map<$core.String, $core.dynamic> get $json => messageServiceBase$json;
  $core.Map<$core.String, $core.Map<$core.String, $core.dynamic>> get $messageJson => messageServiceBase$messageJson;
}

abstract class noticeServiceBase extends $pb.GeneratedService {
  $async.Future<$3.NoticeSendResp> noticeSend($pb.ServerContext ctx, $3.NoticeSendReq request);
  $async.Future<$3.NoticeBatchSendResp> noticeBatchSend($pb.ServerContext ctx, $3.NoticeBatchSendReq request);
  $async.Future<$3.ListNoticeResp> listNotice($pb.ServerContext ctx, $3.ListNoticeReq request);

  $pb.GeneratedMessage createRequest($core.String method) {
    switch (method) {
      case 'NoticeSend': return $3.NoticeSendReq();
      case 'NoticeBatchSend': return $3.NoticeBatchSendReq();
      case 'ListNotice': return $3.ListNoticeReq();
      default: throw $core.ArgumentError('Unknown method: $method');
    }
  }

  $async.Future<$pb.GeneratedMessage> handleCall($pb.ServerContext ctx, $core.String method, $pb.GeneratedMessage request) {
    switch (method) {
      case 'NoticeSend': return this.noticeSend(ctx, request as $3.NoticeSendReq);
      case 'NoticeBatchSend': return this.noticeBatchSend(ctx, request as $3.NoticeBatchSendReq);
      case 'ListNotice': return this.listNotice(ctx, request as $3.ListNoticeReq);
      default: throw $core.ArgumentError('Unknown method: $method');
    }
  }

  $core.Map<$core.String, $core.dynamic> get $json => noticeServiceBase$json;
  $core.Map<$core.String, $core.Map<$core.String, $core.dynamic>> get $messageJson => noticeServiceBase$messageJson;
}

