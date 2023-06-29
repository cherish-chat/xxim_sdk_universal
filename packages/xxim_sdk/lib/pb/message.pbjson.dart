///
//  Generated code. Do not modify.
//  source: message.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
import 'common.pbjson.dart' as $0;

@$core.Deprecated('Use messageSendReqDescriptor instead')
const MessageSendReq$json = const {
  '1': 'MessageSendReq',
  '2': const [
    const {'1': 'header', '3': 1, '4': 1, '5': 11, '6': '.pb.RequestHeader', '10': 'header'},
    const {'1': 'message', '3': 2, '4': 1, '5': 11, '6': '.pb.Message', '10': 'message'},
    const {'1': 'disableQueue', '3': 3, '4': 1, '5': 8, '10': 'disableQueue'},
  ],
};

/// Descriptor for `MessageSendReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List messageSendReqDescriptor = $convert.base64Decode('Cg5NZXNzYWdlU2VuZFJlcRIpCgZoZWFkZXIYASABKAsyES5wYi5SZXF1ZXN0SGVhZGVyUgZoZWFkZXISJQoHbWVzc2FnZRgCIAEoCzILLnBiLk1lc3NhZ2VSB21lc3NhZ2USIgoMZGlzYWJsZVF1ZXVlGAMgASgIUgxkaXNhYmxlUXVldWU=');
@$core.Deprecated('Use messageSendRespDescriptor instead')
const MessageSendResp$json = const {
  '1': 'MessageSendResp',
  '2': const [
    const {'1': 'header', '3': 1, '4': 1, '5': 11, '6': '.pb.ResponseHeader', '10': 'header'},
  ],
};

/// Descriptor for `MessageSendResp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List messageSendRespDescriptor = $convert.base64Decode('Cg9NZXNzYWdlU2VuZFJlc3ASKgoGaGVhZGVyGAEgASgLMhIucGIuUmVzcG9uc2VIZWFkZXJSBmhlYWRlcg==');
@$core.Deprecated('Use messageBatchSendReqDescriptor instead')
const MessageBatchSendReq$json = const {
  '1': 'MessageBatchSendReq',
  '2': const [
    const {'1': 'header', '3': 1, '4': 1, '5': 11, '6': '.pb.RequestHeader', '10': 'header'},
    const {'1': 'messages', '3': 2, '4': 3, '5': 11, '6': '.pb.Message', '10': 'messages'},
    const {'1': 'disableQueue', '3': 3, '4': 1, '5': 8, '10': 'disableQueue'},
  ],
};

/// Descriptor for `MessageBatchSendReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List messageBatchSendReqDescriptor = $convert.base64Decode('ChNNZXNzYWdlQmF0Y2hTZW5kUmVxEikKBmhlYWRlchgBIAEoCzIRLnBiLlJlcXVlc3RIZWFkZXJSBmhlYWRlchInCghtZXNzYWdlcxgCIAMoCzILLnBiLk1lc3NhZ2VSCG1lc3NhZ2VzEiIKDGRpc2FibGVRdWV1ZRgDIAEoCFIMZGlzYWJsZVF1ZXVl');
@$core.Deprecated('Use messageBatchSendRespDescriptor instead')
const MessageBatchSendResp$json = const {
  '1': 'MessageBatchSendResp',
  '2': const [
    const {'1': 'header', '3': 1, '4': 1, '5': 11, '6': '.pb.ResponseHeader', '10': 'header'},
  ],
};

/// Descriptor for `MessageBatchSendResp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List messageBatchSendRespDescriptor = $convert.base64Decode('ChRNZXNzYWdlQmF0Y2hTZW5kUmVzcBIqCgZoZWFkZXIYASABKAsyEi5wYi5SZXNwb25zZUhlYWRlclIGaGVhZGVy');
@$core.Deprecated('Use messageInsertReqDescriptor instead')
const MessageInsertReq$json = const {
  '1': 'MessageInsertReq',
  '2': const [
    const {'1': 'header', '3': 1, '4': 1, '5': 11, '6': '.pb.RequestHeader', '10': 'header'},
    const {'1': 'messages', '3': 2, '4': 3, '5': 11, '6': '.pb.Message', '10': 'messages'},
  ],
};

/// Descriptor for `MessageInsertReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List messageInsertReqDescriptor = $convert.base64Decode('ChBNZXNzYWdlSW5zZXJ0UmVxEikKBmhlYWRlchgBIAEoCzIRLnBiLlJlcXVlc3RIZWFkZXJSBmhlYWRlchInCghtZXNzYWdlcxgCIAMoCzILLnBiLk1lc3NhZ2VSCG1lc3NhZ2Vz');
@$core.Deprecated('Use messageInsertRespDescriptor instead')
const MessageInsertResp$json = const {
  '1': 'MessageInsertResp',
  '2': const [
    const {'1': 'header', '3': 1, '4': 1, '5': 11, '6': '.pb.ResponseHeader', '10': 'header'},
  ],
};

/// Descriptor for `MessageInsertResp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List messageInsertRespDescriptor = $convert.base64Decode('ChFNZXNzYWdlSW5zZXJ0UmVzcBIqCgZoZWFkZXIYASABKAsyEi5wYi5SZXNwb25zZUhlYWRlclIGaGVhZGVy');
@$core.Deprecated('Use messagePushReqDescriptor instead')
const MessagePushReq$json = const {
  '1': 'MessagePushReq',
  '2': const [
    const {'1': 'header', '3': 1, '4': 1, '5': 11, '6': '.pb.RequestHeader', '10': 'header'},
    const {'1': 'message', '3': 2, '4': 3, '5': 11, '6': '.pb.Message', '10': 'message'},
  ],
};

/// Descriptor for `MessagePushReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List messagePushReqDescriptor = $convert.base64Decode('Cg5NZXNzYWdlUHVzaFJlcRIpCgZoZWFkZXIYASABKAsyES5wYi5SZXF1ZXN0SGVhZGVyUgZoZWFkZXISJQoHbWVzc2FnZRgCIAMoCzILLnBiLk1lc3NhZ2VSB21lc3NhZ2U=');
@$core.Deprecated('Use messagePushRespDescriptor instead')
const MessagePushResp$json = const {
  '1': 'MessagePushResp',
  '2': const [
    const {'1': 'header', '3': 1, '4': 1, '5': 11, '6': '.pb.ResponseHeader', '10': 'header'},
  ],
};

/// Descriptor for `MessagePushResp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List messagePushRespDescriptor = $convert.base64Decode('Cg9NZXNzYWdlUHVzaFJlc3ASKgoGaGVhZGVyGAEgASgLMhIucGIuUmVzcG9uc2VIZWFkZXJSBmhlYWRlcg==');
@$core.Deprecated('Use messageContentTextDescriptor instead')
const MessageContentText$json = const {
  '1': 'MessageContentText',
  '2': const [
    const {'1': 'items', '3': 1, '4': 3, '5': 11, '6': '.pb.MessageContentText.Item', '10': 'items'},
  ],
  '3': const [MessageContentText_Item$json],
};

@$core.Deprecated('Use messageContentTextDescriptor instead')
const MessageContentText_Item$json = const {
  '1': 'Item',
  '2': const [
    const {'1': 'type', '3': 1, '4': 1, '5': 14, '6': '.pb.MessageContentText.Item.Type', '10': 'type'},
    const {'1': 'text', '3': 2, '4': 1, '5': 9, '10': 'text'},
    const {'1': 'image', '3': 3, '4': 1, '5': 11, '6': '.pb.MessageContentText.Item.Image', '9': 0, '10': 'image', '17': true},
    const {'1': 'at', '3': 4, '4': 1, '5': 11, '6': '.pb.MessageContentText.Item.At', '9': 1, '10': 'at', '17': true},
  ],
  '3': const [MessageContentText_Item_Image$json, MessageContentText_Item_At$json],
  '4': const [MessageContentText_Item_Type$json],
  '8': const [
    const {'1': '_image'},
    const {'1': '_at'},
  ],
};

@$core.Deprecated('Use messageContentTextDescriptor instead')
const MessageContentText_Item_Image$json = const {
  '1': 'Image',
  '2': const [
    const {'1': 'url', '3': 1, '4': 1, '5': 9, '10': 'url'},
    const {'1': 'width', '3': 2, '4': 1, '5': 5, '10': 'width'},
    const {'1': 'height', '3': 3, '4': 1, '5': 5, '10': 'height'},
  ],
};

@$core.Deprecated('Use messageContentTextDescriptor instead')
const MessageContentText_Item_At$json = const {
  '1': 'At',
  '2': const [
    const {'1': 'userId', '3': 1, '4': 1, '5': 9, '10': 'userId'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
  ],
};

@$core.Deprecated('Use messageContentTextDescriptor instead')
const MessageContentText_Item_Type$json = const {
  '1': 'Type',
  '2': const [
    const {'1': 'TEXT', '2': 0},
    const {'1': 'IMAGE', '2': 1},
    const {'1': 'AT', '2': 2},
  ],
};

/// Descriptor for `MessageContentText`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List messageContentTextDescriptor = $convert.base64Decode('ChJNZXNzYWdlQ29udGVudFRleHQSMQoFaXRlbXMYASADKAsyGy5wYi5NZXNzYWdlQ29udGVudFRleHQuSXRlbVIFaXRlbXMa9AIKBEl0ZW0SNAoEdHlwZRgBIAEoDjIgLnBiLk1lc3NhZ2VDb250ZW50VGV4dC5JdGVtLlR5cGVSBHR5cGUSEgoEdGV4dBgCIAEoCVIEdGV4dBI8CgVpbWFnZRgDIAEoCzIhLnBiLk1lc3NhZ2VDb250ZW50VGV4dC5JdGVtLkltYWdlSABSBWltYWdliAEBEjMKAmF0GAQgASgLMh4ucGIuTWVzc2FnZUNvbnRlbnRUZXh0Lkl0ZW0uQXRIAVICYXSIAQEaRwoFSW1hZ2USEAoDdXJsGAEgASgJUgN1cmwSFAoFd2lkdGgYAiABKAVSBXdpZHRoEhYKBmhlaWdodBgDIAEoBVIGaGVpZ2h0GjAKAkF0EhYKBnVzZXJJZBgBIAEoCVIGdXNlcklkEhIKBG5hbWUYAiABKAlSBG5hbWUiIwoEVHlwZRIICgRURVhUEAASCQoFSU1BR0UQARIGCgJBVBACQggKBl9pbWFnZUIFCgNfYXQ=');
@$core.Deprecated('Use noticeContentNewFriendRequestDescriptor instead')
const NoticeContentNewFriendRequest$json = const {
  '1': 'NoticeContentNewFriendRequest',
};

/// Descriptor for `NoticeContentNewFriendRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List noticeContentNewFriendRequestDescriptor = $convert.base64Decode('Ch1Ob3RpY2VDb250ZW50TmV3RnJpZW5kUmVxdWVzdA==');
@$core.Deprecated('Use noticeContentJoinNewGroupDescriptor instead')
const NoticeContentJoinNewGroup$json = const {
  '1': 'NoticeContentJoinNewGroup',
  '2': const [
    const {'1': 'groupId', '3': 1, '4': 1, '5': 9, '10': 'groupId'},
  ],
};

/// Descriptor for `NoticeContentJoinNewGroup`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List noticeContentJoinNewGroupDescriptor = $convert.base64Decode('ChlOb3RpY2VDb250ZW50Sm9pbk5ld0dyb3VwEhgKB2dyb3VwSWQYASABKAlSB2dyb3VwSWQ=');
@$core.Deprecated('Use noticeContentOnlineStatusDescriptor instead')
const NoticeContentOnlineStatus$json = const {
  '1': 'NoticeContentOnlineStatus',
  '2': const [
    const {'1': 'userId', '3': 1, '4': 1, '5': 9, '10': 'userId'},
    const {'1': 'online', '3': 2, '4': 1, '5': 8, '10': 'online'},
  ],
};

/// Descriptor for `NoticeContentOnlineStatus`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List noticeContentOnlineStatusDescriptor = $convert.base64Decode('ChlOb3RpY2VDb250ZW50T25saW5lU3RhdHVzEhYKBnVzZXJJZBgBIAEoCVIGdXNlcklkEhYKBm9ubGluZRgCIAEoCFIGb25saW5l');
@$core.Deprecated('Use noticeSendReqDescriptor instead')
const NoticeSendReq$json = const {
  '1': 'NoticeSendReq',
  '2': const [
    const {'1': 'header', '3': 1, '4': 1, '5': 11, '6': '.pb.RequestHeader', '10': 'header'},
    const {'1': 'notice', '3': 2, '4': 1, '5': 11, '6': '.pb.Notice', '10': 'notice'},
    const {'1': 'userIds', '3': 3, '4': 3, '5': 9, '10': 'userIds'},
    const {'1': 'broadcast', '3': 4, '4': 1, '5': 8, '10': 'broadcast'},
  ],
};

/// Descriptor for `NoticeSendReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List noticeSendReqDescriptor = $convert.base64Decode('Cg1Ob3RpY2VTZW5kUmVxEikKBmhlYWRlchgBIAEoCzIRLnBiLlJlcXVlc3RIZWFkZXJSBmhlYWRlchIiCgZub3RpY2UYAiABKAsyCi5wYi5Ob3RpY2VSBm5vdGljZRIYCgd1c2VySWRzGAMgAygJUgd1c2VySWRzEhwKCWJyb2FkY2FzdBgEIAEoCFIJYnJvYWRjYXN0');
@$core.Deprecated('Use noticeSendRespDescriptor instead')
const NoticeSendResp$json = const {
  '1': 'NoticeSendResp',
  '2': const [
    const {'1': 'header', '3': 1, '4': 1, '5': 11, '6': '.pb.ResponseHeader', '10': 'header'},
  ],
};

/// Descriptor for `NoticeSendResp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List noticeSendRespDescriptor = $convert.base64Decode('Cg5Ob3RpY2VTZW5kUmVzcBIqCgZoZWFkZXIYASABKAsyEi5wYi5SZXNwb25zZUhlYWRlclIGaGVhZGVy');
@$core.Deprecated('Use noticeBatchSendReqDescriptor instead')
const NoticeBatchSendReq$json = const {
  '1': 'NoticeBatchSendReq',
  '2': const [
    const {'1': 'header', '3': 1, '4': 1, '5': 11, '6': '.pb.RequestHeader', '10': 'header'},
    const {'1': 'notices', '3': 2, '4': 3, '5': 11, '6': '.pb.NoticeSendReq', '10': 'notices'},
  ],
};

/// Descriptor for `NoticeBatchSendReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List noticeBatchSendReqDescriptor = $convert.base64Decode('ChJOb3RpY2VCYXRjaFNlbmRSZXESKQoGaGVhZGVyGAEgASgLMhEucGIuUmVxdWVzdEhlYWRlclIGaGVhZGVyEisKB25vdGljZXMYAiADKAsyES5wYi5Ob3RpY2VTZW5kUmVxUgdub3RpY2Vz');
@$core.Deprecated('Use noticeBatchSendRespDescriptor instead')
const NoticeBatchSendResp$json = const {
  '1': 'NoticeBatchSendResp',
  '2': const [
    const {'1': 'header', '3': 1, '4': 1, '5': 11, '6': '.pb.ResponseHeader', '10': 'header'},
  ],
};

/// Descriptor for `NoticeBatchSendResp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List noticeBatchSendRespDescriptor = $convert.base64Decode('ChNOb3RpY2VCYXRjaFNlbmRSZXNwEioKBmhlYWRlchgBIAEoCzISLnBiLlJlc3BvbnNlSGVhZGVyUgZoZWFkZXI=');
@$core.Deprecated('Use listNoticeReqDescriptor instead')
const ListNoticeReq$json = const {
  '1': 'ListNoticeReq',
  '2': const [
    const {'1': 'header', '3': 1, '4': 1, '5': 11, '6': '.pb.RequestHeader', '10': 'header'},
    const {'1': 'convList', '3': 2, '4': 3, '5': 11, '6': '.pb.ListNoticeReq.Conversation', '10': 'convList'},
    const {'1': 'SortGt', '3': 3, '4': 1, '5': 3, '10': 'SortGt'},
    const {'1': 'Limit', '3': 4, '4': 1, '5': 3, '10': 'Limit'},
  ],
  '3': const [ListNoticeReq_Conversation$json],
};

@$core.Deprecated('Use listNoticeReqDescriptor instead')
const ListNoticeReq_Conversation$json = const {
  '1': 'Conversation',
  '2': const [
    const {'1': 'conversationId', '3': 1, '4': 1, '5': 9, '10': 'conversationId'},
    const {'1': 'conversationType', '3': 2, '4': 1, '5': 14, '6': '.pb.ConversationType', '10': 'conversationType'},
  ],
};

/// Descriptor for `ListNoticeReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listNoticeReqDescriptor = $convert.base64Decode('Cg1MaXN0Tm90aWNlUmVxEikKBmhlYWRlchgBIAEoCzIRLnBiLlJlcXVlc3RIZWFkZXJSBmhlYWRlchI6Cghjb252TGlzdBgCIAMoCzIeLnBiLkxpc3ROb3RpY2VSZXEuQ29udmVyc2F0aW9uUghjb252TGlzdBIWCgZTb3J0R3QYAyABKANSBlNvcnRHdBIUCgVMaW1pdBgEIAEoA1IFTGltaXQaeAoMQ29udmVyc2F0aW9uEiYKDmNvbnZlcnNhdGlvbklkGAEgASgJUg5jb252ZXJzYXRpb25JZBJAChBjb252ZXJzYXRpb25UeXBlGAIgASgOMhQucGIuQ29udmVyc2F0aW9uVHlwZVIQY29udmVyc2F0aW9uVHlwZQ==');
@$core.Deprecated('Use listNoticeRespDescriptor instead')
const ListNoticeResp$json = const {
  '1': 'ListNoticeResp',
  '2': const [
    const {'1': 'header', '3': 1, '4': 1, '5': 11, '6': '.pb.ResponseHeader', '10': 'header'},
    const {'1': 'notices', '3': 2, '4': 3, '5': 11, '6': '.pb.Notice', '10': 'notices'},
  ],
};

/// Descriptor for `ListNoticeResp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listNoticeRespDescriptor = $convert.base64Decode('Cg5MaXN0Tm90aWNlUmVzcBIqCgZoZWFkZXIYASABKAsyEi5wYi5SZXNwb25zZUhlYWRlclIGaGVhZGVyEiQKB25vdGljZXMYAiADKAsyCi5wYi5Ob3RpY2VSB25vdGljZXM=');
const $core.Map<$core.String, $core.dynamic> messageServiceBase$json = const {
  '1': 'messageService',
  '2': const [
    const {'1': 'MessageInsert', '2': '.pb.MessageInsertReq', '3': '.pb.MessageInsertResp'},
    const {'1': 'MessageSend', '2': '.pb.MessageSendReq', '3': '.pb.MessageSendResp'},
    const {'1': 'MessageBatchSend', '2': '.pb.MessageBatchSendReq', '3': '.pb.MessageBatchSendResp'},
    const {'1': 'MessagePush', '2': '.pb.MessagePushReq', '3': '.pb.MessagePushResp'},
  ],
};

@$core.Deprecated('Use messageServiceDescriptor instead')
const $core.Map<$core.String, $core.Map<$core.String, $core.dynamic>> messageServiceBase$messageJson = const {
  '.pb.MessageInsertReq': MessageInsertReq$json,
  '.pb.RequestHeader': $0.RequestHeader$json,
  '.pb.Message': $0.Message$json,
  '.pb.Message.Sender': $0.Message_Sender$json,
  '.pb.Message.Option': $0.Message_Option$json,
  '.pb.Message.ExtraMapEntry': $0.Message_ExtraMapEntry$json,
  '.pb.MessageInsertResp': MessageInsertResp$json,
  '.pb.ResponseHeader': $0.ResponseHeader$json,
  '.pb.MessageSendReq': MessageSendReq$json,
  '.pb.MessageSendResp': MessageSendResp$json,
  '.pb.MessageBatchSendReq': MessageBatchSendReq$json,
  '.pb.MessageBatchSendResp': MessageBatchSendResp$json,
  '.pb.MessagePushReq': MessagePushReq$json,
  '.pb.MessagePushResp': MessagePushResp$json,
};

/// Descriptor for `messageService`. Decode as a `google.protobuf.ServiceDescriptorProto`.
final $typed_data.Uint8List messageServiceDescriptor = $convert.base64Decode('Cg5tZXNzYWdlU2VydmljZRI8Cg1NZXNzYWdlSW5zZXJ0EhQucGIuTWVzc2FnZUluc2VydFJlcRoVLnBiLk1lc3NhZ2VJbnNlcnRSZXNwEjYKC01lc3NhZ2VTZW5kEhIucGIuTWVzc2FnZVNlbmRSZXEaEy5wYi5NZXNzYWdlU2VuZFJlc3ASRQoQTWVzc2FnZUJhdGNoU2VuZBIXLnBiLk1lc3NhZ2VCYXRjaFNlbmRSZXEaGC5wYi5NZXNzYWdlQmF0Y2hTZW5kUmVzcBI2CgtNZXNzYWdlUHVzaBISLnBiLk1lc3NhZ2VQdXNoUmVxGhMucGIuTWVzc2FnZVB1c2hSZXNw');
const $core.Map<$core.String, $core.dynamic> noticeServiceBase$json = const {
  '1': 'noticeService',
  '2': const [
    const {'1': 'NoticeSend', '2': '.pb.NoticeSendReq', '3': '.pb.NoticeSendResp'},
    const {'1': 'NoticeBatchSend', '2': '.pb.NoticeBatchSendReq', '3': '.pb.NoticeBatchSendResp'},
    const {'1': 'ListNotice', '2': '.pb.ListNoticeReq', '3': '.pb.ListNoticeResp'},
  ],
};

@$core.Deprecated('Use noticeServiceDescriptor instead')
const $core.Map<$core.String, $core.Map<$core.String, $core.dynamic>> noticeServiceBase$messageJson = const {
  '.pb.NoticeSendReq': NoticeSendReq$json,
  '.pb.RequestHeader': $0.RequestHeader$json,
  '.pb.Notice': $0.Notice$json,
  '.pb.NoticeSendResp': NoticeSendResp$json,
  '.pb.ResponseHeader': $0.ResponseHeader$json,
  '.pb.NoticeBatchSendReq': NoticeBatchSendReq$json,
  '.pb.NoticeBatchSendResp': NoticeBatchSendResp$json,
  '.pb.ListNoticeReq': ListNoticeReq$json,
  '.pb.ListNoticeReq.Conversation': ListNoticeReq_Conversation$json,
  '.pb.ListNoticeResp': ListNoticeResp$json,
};

/// Descriptor for `noticeService`. Decode as a `google.protobuf.ServiceDescriptorProto`.
final $typed_data.Uint8List noticeServiceDescriptor = $convert.base64Decode('Cg1ub3RpY2VTZXJ2aWNlEjMKCk5vdGljZVNlbmQSES5wYi5Ob3RpY2VTZW5kUmVxGhIucGIuTm90aWNlU2VuZFJlc3ASQgoPTm90aWNlQmF0Y2hTZW5kEhYucGIuTm90aWNlQmF0Y2hTZW5kUmVxGhcucGIuTm90aWNlQmF0Y2hTZW5kUmVzcBIzCgpMaXN0Tm90aWNlEhEucGIuTGlzdE5vdGljZVJlcRoSLnBiLkxpc3ROb3RpY2VSZXNw');
