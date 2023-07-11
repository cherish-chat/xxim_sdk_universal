///
//  Generated code. Do not modify.
//  source: common.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use platformDescriptor instead')
const Platform$json = const {
  '1': 'Platform',
  '2': const [
    const {'1': 'IOS', '2': 0},
    const {'1': 'ANDROID', '2': 1},
    const {'1': 'WEB', '2': 2},
    const {'1': 'WINDOWS', '2': 3},
    const {'1': 'MAC', '2': 4},
    const {'1': 'LINUX', '2': 5},
    const {'1': 'Ipad', '2': 6},
    const {'1': 'AndroidPad', '2': 7},
  ],
};

/// Descriptor for `Platform`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List platformDescriptor = $convert.base64Decode('CghQbGF0Zm9ybRIHCgNJT1MQABILCgdBTkRST0lEEAESBwoDV0VCEAISCwoHV0lORE9XUxADEgcKA01BQxAEEgkKBUxJTlVYEAUSCAoESXBhZBAGEg4KCkFuZHJvaWRQYWQQBw==');
@$core.Deprecated('Use responseCodeDescriptor instead')
const ResponseCode$json = const {
  '1': 'ResponseCode',
  '2': const [
    const {'1': 'SUCCESS', '2': 0},
    const {'1': 'INVALID_DATA', '2': 1},
    const {'1': 'UNAUTHORIZED', '2': 2},
    const {'1': 'FORBIDDEN', '2': 3},
    const {'1': 'INVALID_METHOD', '2': 4},
    const {'1': 'TIMEOUT', '2': 5},
    const {'1': 'SERVER_ERROR', '2': 6},
  ],
};

/// Descriptor for `ResponseCode`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List responseCodeDescriptor = $convert.base64Decode('CgxSZXNwb25zZUNvZGUSCwoHU1VDQ0VTUxAAEhAKDElOVkFMSURfREFUQRABEhAKDFVOQVVUSE9SSVpFRBACEg0KCUZPUkJJRERFThADEhIKDklOVkFMSURfTUVUSE9EEAQSCwoHVElNRU9VVBAFEhAKDFNFUlZFUl9FUlJPUhAG');
@$core.Deprecated('Use responseActionTypeDescriptor instead')
const ResponseActionType$json = const {
  '1': 'ResponseActionType',
  '2': const [
    const {'1': 'NONE_ACTION', '2': 0},
    const {'1': 'TOAST_ACTION', '2': 1},
    const {'1': 'ALERT_ACTION', '2': 2},
    const {'1': 'SECOND_AUTH_ACTION', '2': 3},
  ],
};

/// Descriptor for `ResponseActionType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List responseActionTypeDescriptor = $convert.base64Decode('ChJSZXNwb25zZUFjdGlvblR5cGUSDwoLTk9ORV9BQ1RJT04QABIQCgxUT0FTVF9BQ1RJT04QARIQCgxBTEVSVF9BQ1RJT04QAhIWChJTRUNPTkRfQVVUSF9BQ1RJT04QAw==');
@$core.Deprecated('Use websocketCustomCloseCodeDescriptor instead')
const WebsocketCustomCloseCode$json = const {
  '1': 'WebsocketCustomCloseCode',
  '2': const [
    const {'1': 'CloseCodeZero', '2': 0},
    const {'1': 'CloseCodeNormalClose', '2': 1000},
    const {'1': 'CloseCodeGoingAway', '2': 1001},
    const {'1': 'CloseCodeProtocolError', '2': 1002},
    const {'1': 'CloseCodeUnsupportedData', '2': 1003},
    const {'1': 'CloseCodeNoStatusReceived', '2': 1005},
    const {'1': 'CloseCodeAbnormalClosure', '2': 1006},
    const {'1': 'CloseCodeAuthenticationFailed', '2': 4001},
    const {'1': 'CloseCodeDuplicateConnection', '2': 4002},
    const {'1': 'CloseCodeServerInternalError', '2': 4003},
    const {'1': 'CloseCodeHeartbeatTimeout', '2': 4004},
  ],
};

/// Descriptor for `WebsocketCustomCloseCode`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List websocketCustomCloseCodeDescriptor = $convert.base64Decode('ChhXZWJzb2NrZXRDdXN0b21DbG9zZUNvZGUSEQoNQ2xvc2VDb2RlWmVybxAAEhkKFENsb3NlQ29kZU5vcm1hbENsb3NlEOgHEhcKEkNsb3NlQ29kZUdvaW5nQXdheRDpBxIbChZDbG9zZUNvZGVQcm90b2NvbEVycm9yEOoHEh0KGENsb3NlQ29kZVVuc3VwcG9ydGVkRGF0YRDrBxIeChlDbG9zZUNvZGVOb1N0YXR1c1JlY2VpdmVkEO0HEh0KGENsb3NlQ29kZUFibm9ybWFsQ2xvc3VyZRDuBxIiCh1DbG9zZUNvZGVBdXRoZW50aWNhdGlvbkZhaWxlZBChHxIhChxDbG9zZUNvZGVEdXBsaWNhdGVDb25uZWN0aW9uEKIfEiEKHENsb3NlQ29kZVNlcnZlckludGVybmFsRXJyb3IQox8SHgoZQ2xvc2VDb2RlSGVhcnRiZWF0VGltZW91dBCkHw==');
@$core.Deprecated('Use conversationTypeDescriptor instead')
const ConversationType$json = const {
  '1': 'ConversationType',
  '2': const [
    const {'1': 'Single', '2': 0},
    const {'1': 'Group', '2': 1},
    const {'1': 'Subscription', '2': 2},
  ],
};

/// Descriptor for `ConversationType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List conversationTypeDescriptor = $convert.base64Decode('ChBDb252ZXJzYXRpb25UeXBlEgoKBlNpbmdsZRAAEgkKBUdyb3VwEAESEAoMU3Vic2NyaXB0aW9uEAI=');
@$core.Deprecated('Use noticeContentTypeDescriptor instead')
const NoticeContentType$json = const {
  '1': 'NoticeContentType',
  '2': const [
    const {'1': 'NewFriendRequest', '2': 0},
    const {'1': 'JoinNewGroup', '2': 1},
    const {'1': 'OnlineStatus', '2': 2},
  ],
};

/// Descriptor for `NoticeContentType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List noticeContentTypeDescriptor = $convert.base64Decode('ChFOb3RpY2VDb250ZW50VHlwZRIUChBOZXdGcmllbmRSZXF1ZXN0EAASEAoMSm9pbk5ld0dyb3VwEAESEAoMT25saW5lU3RhdHVzEAI=');
@$core.Deprecated('Use messageContentTypeDescriptor instead')
const MessageContentType$json = const {
  '1': 'MessageContentType',
  '2': const [
    const {'1': 'Text', '2': 0},
    const {'1': 'Markdown', '2': 1},
    const {'1': 'Image', '2': 2},
    const {'1': 'Voice', '2': 3},
    const {'1': 'Video', '2': 4},
    const {'1': 'Typing', '2': 101},
    const {'1': 'Read', '2': 102},
    const {'1': 'Recall', '2': 103},
  ],
};

/// Descriptor for `MessageContentType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List messageContentTypeDescriptor = $convert.base64Decode('ChJNZXNzYWdlQ29udGVudFR5cGUSCAoEVGV4dBAAEgwKCE1hcmtkb3duEAESCQoFSW1hZ2UQAhIJCgVWb2ljZRADEgkKBVZpZGVvEAQSCgoGVHlwaW5nEGUSCAoEUmVhZBBmEgoKBlJlY2FsbBBn');
@$core.Deprecated('Use conversationSettingKeyDescriptor instead')
const ConversationSettingKey$json = const {
  '1': 'ConversationSettingKey',
  '2': const [
    const {'1': 'IsPinned', '2': 0},
    const {'1': 'IsMuted', '2': 1},
    const {'1': 'IsBlocked', '2': 2},
    const {'1': 'IsFolded', '2': 3},
    const {'1': 'ConversationAlias', '2': 4},
    const {'1': 'NicknameInConversation', '2': 5},
  ],
};

/// Descriptor for `ConversationSettingKey`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List conversationSettingKeyDescriptor = $convert.base64Decode('ChZDb252ZXJzYXRpb25TZXR0aW5nS2V5EgwKCElzUGlubmVkEAASCwoHSXNNdXRlZBABEg0KCUlzQmxvY2tlZBACEgwKCElzRm9sZGVkEAMSFQoRQ29udmVyc2F0aW9uQWxpYXMQBBIaChZOaWNrbmFtZUluQ29udmVyc2F0aW9uEAU=');
@$core.Deprecated('Use requestHeaderDescriptor instead')
const RequestHeader$json = const {
  '1': 'RequestHeader',
  '2': const [
    const {'1': 'appId', '3': 1, '4': 1, '5': 9, '10': 'appId'},
    const {'1': 'userId', '3': 2, '4': 1, '5': 9, '10': 'userId'},
    const {'1': 'clientIp', '3': 3, '4': 1, '5': 9, '10': 'clientIp'},
    const {'1': 'installId', '3': 4, '4': 1, '5': 9, '10': 'installId'},
    const {'1': 'platform', '3': 5, '4': 1, '5': 14, '6': '.pb.Platform', '10': 'platform'},
    const {'1': 'deviceModel', '3': 6, '4': 1, '5': 9, '10': 'deviceModel'},
    const {'1': 'osVersion', '3': 7, '4': 1, '5': 9, '10': 'osVersion'},
    const {'1': 'appVersion', '3': 8, '4': 1, '5': 9, '10': 'appVersion'},
    const {'1': 'extra', '3': 9, '4': 1, '5': 9, '10': 'extra'},
  ],
};

/// Descriptor for `RequestHeader`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List requestHeaderDescriptor = $convert.base64Decode('Cg1SZXF1ZXN0SGVhZGVyEhQKBWFwcElkGAEgASgJUgVhcHBJZBIWCgZ1c2VySWQYAiABKAlSBnVzZXJJZBIaCghjbGllbnRJcBgDIAEoCVIIY2xpZW50SXASHAoJaW5zdGFsbElkGAQgASgJUglpbnN0YWxsSWQSKAoIcGxhdGZvcm0YBSABKA4yDC5wYi5QbGF0Zm9ybVIIcGxhdGZvcm0SIAoLZGV2aWNlTW9kZWwYBiABKAlSC2RldmljZU1vZGVsEhwKCW9zVmVyc2lvbhgHIAEoCVIJb3NWZXJzaW9uEh4KCmFwcFZlcnNpb24YCCABKAlSCmFwcFZlcnNpb24SFAoFZXh0cmEYCSABKAlSBWV4dHJh');
@$core.Deprecated('Use toastActionDataDescriptor instead')
const ToastActionData$json = const {
  '1': 'ToastActionData',
  '2': const [
    const {'1': 'level', '3': 1, '4': 1, '5': 14, '6': '.pb.ToastActionData.Level', '10': 'level'},
    const {'1': 'message', '3': 2, '4': 1, '5': 9, '10': 'message'},
  ],
  '4': const [ToastActionData_Level$json],
};

@$core.Deprecated('Use toastActionDataDescriptor instead')
const ToastActionData_Level$json = const {
  '1': 'Level',
  '2': const [
    const {'1': 'INFO', '2': 0},
    const {'1': 'WARN', '2': 1},
    const {'1': 'ERROR', '2': 2},
  ],
};

/// Descriptor for `ToastActionData`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List toastActionDataDescriptor = $convert.base64Decode('Cg9Ub2FzdEFjdGlvbkRhdGESLwoFbGV2ZWwYASABKA4yGS5wYi5Ub2FzdEFjdGlvbkRhdGEuTGV2ZWxSBWxldmVsEhgKB21lc3NhZ2UYAiABKAlSB21lc3NhZ2UiJgoFTGV2ZWwSCAoESU5GTxAAEggKBFdBUk4QARIJCgVFUlJPUhAC');
@$core.Deprecated('Use alertActionDataDescriptor instead')
const AlertActionData$json = const {
  '1': 'AlertActionData',
  '2': const [
    const {'1': 'title', '3': 1, '4': 1, '5': 9, '10': 'title'},
    const {'1': 'message', '3': 2, '4': 1, '5': 9, '10': 'message'},
    const {'1': 'buttonType', '3': 3, '4': 1, '5': 14, '6': '.pb.AlertActionData.ButtonType', '10': 'buttonType'},
    const {'1': 'buttonLabel', '3': 4, '4': 1, '5': 9, '10': 'buttonLabel'},
    const {'1': 'buttonData', '3': 5, '4': 1, '5': 9, '10': 'buttonData'},
  ],
  '4': const [AlertActionData_ButtonType$json],
};

@$core.Deprecated('Use alertActionDataDescriptor instead')
const AlertActionData_ButtonType$json = const {
  '1': 'ButtonType',
  '2': const [
    const {'1': 'NO_BUTTON', '2': 0},
    const {'1': 'JUMP_URL', '2': 1},
  ],
};

/// Descriptor for `AlertActionData`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List alertActionDataDescriptor = $convert.base64Decode('Cg9BbGVydEFjdGlvbkRhdGESFAoFdGl0bGUYASABKAlSBXRpdGxlEhgKB21lc3NhZ2UYAiABKAlSB21lc3NhZ2USPgoKYnV0dG9uVHlwZRgDIAEoDjIeLnBiLkFsZXJ0QWN0aW9uRGF0YS5CdXR0b25UeXBlUgpidXR0b25UeXBlEiAKC2J1dHRvbkxhYmVsGAQgASgJUgtidXR0b25MYWJlbBIeCgpidXR0b25EYXRhGAUgASgJUgpidXR0b25EYXRhIikKCkJ1dHRvblR5cGUSDQoJTk9fQlVUVE9OEAASDAoISlVNUF9VUkwQAQ==');
@$core.Deprecated('Use responseHeaderDescriptor instead')
const ResponseHeader$json = const {
  '1': 'ResponseHeader',
  '2': const [
    const {'1': 'code', '3': 1, '4': 1, '5': 14, '6': '.pb.ResponseCode', '10': 'code'},
    const {'1': 'actionType', '3': 2, '4': 1, '5': 14, '6': '.pb.ResponseActionType', '10': 'actionType'},
    const {'1': 'actionData', '3': 3, '4': 1, '5': 9, '10': 'actionData'},
    const {'1': 'extra', '3': 4, '4': 1, '5': 9, '10': 'extra'},
  ],
};

/// Descriptor for `ResponseHeader`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List responseHeaderDescriptor = $convert.base64Decode('Cg5SZXNwb25zZUhlYWRlchIkCgRjb2RlGAEgASgOMhAucGIuUmVzcG9uc2VDb2RlUgRjb2RlEjYKCmFjdGlvblR5cGUYAiABKA4yFi5wYi5SZXNwb25zZUFjdGlvblR5cGVSCmFjdGlvblR5cGUSHgoKYWN0aW9uRGF0YRgDIAEoCVIKYWN0aW9uRGF0YRIUCgVleHRyYRgEIAEoCVIFZXh0cmE=');
@$core.Deprecated('Use messageDescriptor instead')
const Message$json = const {
  '1': 'Message',
  '2': const [
    const {'1': 'messageId', '3': 1, '4': 1, '5': 9, '10': 'messageId'},
    const {'1': 'uuid', '3': 2, '4': 1, '5': 9, '10': 'uuid'},
    const {'1': 'conversationId', '3': 3, '4': 1, '5': 9, '10': 'conversationId'},
    const {'1': 'conversationType', '3': 4, '4': 1, '5': 14, '6': '.pb.ConversationType', '10': 'conversationType'},
    const {'1': 'sender', '3': 5, '4': 1, '5': 11, '6': '.pb.Message.Sender', '10': 'sender'},
    const {'1': 'content', '3': 6, '4': 1, '5': 12, '10': 'content'},
    const {'1': 'contentType', '3': 7, '4': 1, '5': 14, '6': '.pb.MessageContentType', '10': 'contentType'},
    const {'1': 'sendTime', '3': 8, '4': 1, '5': 3, '10': 'sendTime'},
    const {'1': 'insertTime', '3': 9, '4': 1, '5': 3, '10': 'insertTime'},
    const {'1': 'seq', '3': 10, '4': 1, '5': 3, '10': 'seq'},
    const {'1': 'option', '3': 16, '4': 1, '5': 11, '6': '.pb.Message.Option', '10': 'option'},
    const {'1': 'extraMap', '3': 17, '4': 3, '5': 11, '6': '.pb.Message.ExtraMapEntry', '10': 'extraMap'},
  ],
  '3': const [Message_Sender$json, Message_Option$json, Message_ExtraMapEntry$json],
};

@$core.Deprecated('Use messageDescriptor instead')
const Message_Sender$json = const {
  '1': 'Sender',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'avatar', '3': 3, '4': 1, '5': 9, '10': 'avatar'},
    const {'1': 'extra', '3': 11, '4': 1, '5': 9, '10': 'extra'},
  ],
};

@$core.Deprecated('Use messageDescriptor instead')
const Message_Option$json = const {
  '1': 'Option',
  '2': const [
    const {'1': 'storageForServer', '3': 1, '4': 1, '5': 8, '10': 'storageForServer'},
    const {'1': 'storageForClient', '3': 2, '4': 1, '5': 8, '10': 'storageForClient'},
    const {'1': 'needDecrypt', '3': 3, '4': 1, '5': 8, '10': 'needDecrypt'},
    const {'1': 'countUnread', '3': 4, '4': 1, '5': 8, '10': 'countUnread'},
  ],
};

@$core.Deprecated('Use messageDescriptor instead')
const Message_ExtraMapEntry$json = const {
  '1': 'ExtraMapEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': const {'7': true},
};

/// Descriptor for `Message`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List messageDescriptor = $convert.base64Decode('CgdNZXNzYWdlEhwKCW1lc3NhZ2VJZBgBIAEoCVIJbWVzc2FnZUlkEhIKBHV1aWQYAiABKAlSBHV1aWQSJgoOY29udmVyc2F0aW9uSWQYAyABKAlSDmNvbnZlcnNhdGlvbklkEkAKEGNvbnZlcnNhdGlvblR5cGUYBCABKA4yFC5wYi5Db252ZXJzYXRpb25UeXBlUhBjb252ZXJzYXRpb25UeXBlEioKBnNlbmRlchgFIAEoCzISLnBiLk1lc3NhZ2UuU2VuZGVyUgZzZW5kZXISGAoHY29udGVudBgGIAEoDFIHY29udGVudBI4Cgtjb250ZW50VHlwZRgHIAEoDjIWLnBiLk1lc3NhZ2VDb250ZW50VHlwZVILY29udGVudFR5cGUSGgoIc2VuZFRpbWUYCCABKANSCHNlbmRUaW1lEh4KCmluc2VydFRpbWUYCSABKANSCmluc2VydFRpbWUSEAoDc2VxGAogASgDUgNzZXESKgoGb3B0aW9uGBAgASgLMhIucGIuTWVzc2FnZS5PcHRpb25SBm9wdGlvbhI1CghleHRyYU1hcBgRIAMoCzIZLnBiLk1lc3NhZ2UuRXh0cmFNYXBFbnRyeVIIZXh0cmFNYXAaWgoGU2VuZGVyEg4KAmlkGAEgASgJUgJpZBISCgRuYW1lGAIgASgJUgRuYW1lEhYKBmF2YXRhchgDIAEoCVIGYXZhdGFyEhQKBWV4dHJhGAsgASgJUgVleHRyYRqkAQoGT3B0aW9uEioKEHN0b3JhZ2VGb3JTZXJ2ZXIYASABKAhSEHN0b3JhZ2VGb3JTZXJ2ZXISKgoQc3RvcmFnZUZvckNsaWVudBgCIAEoCFIQc3RvcmFnZUZvckNsaWVudBIgCgtuZWVkRGVjcnlwdBgDIAEoCFILbmVlZERlY3J5cHQSIAoLY291bnRVbnJlYWQYBCABKAhSC2NvdW50VW5yZWFkGjsKDUV4dHJhTWFwRW50cnkSEAoDa2V5GAEgASgJUgNrZXkSFAoFdmFsdWUYAiABKAlSBXZhbHVlOgI4AQ==');
@$core.Deprecated('Use noticeDescriptor instead')
const Notice$json = const {
  '1': 'Notice',
  '2': const [
    const {'1': 'noticeId', '3': 1, '4': 1, '5': 9, '10': 'noticeId'},
    const {'1': 'conversationId', '3': 2, '4': 1, '5': 9, '10': 'conversationId'},
    const {'1': 'conversationType', '3': 3, '4': 1, '5': 14, '6': '.pb.ConversationType', '10': 'conversationType'},
    const {'1': 'content', '3': 4, '4': 1, '5': 9, '10': 'content'},
    const {'1': 'contentType', '3': 5, '4': 1, '5': 14, '6': '.pb.NoticeContentType', '10': 'contentType'},
    const {'1': 'updateTime', '3': 6, '4': 1, '5': 3, '10': 'updateTime'},
    const {'1': 'sort', '3': 7, '4': 1, '5': 3, '10': 'sort'},
  ],
};

/// Descriptor for `Notice`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List noticeDescriptor = $convert.base64Decode('CgZOb3RpY2USGgoIbm90aWNlSWQYASABKAlSCG5vdGljZUlkEiYKDmNvbnZlcnNhdGlvbklkGAIgASgJUg5jb252ZXJzYXRpb25JZBJAChBjb252ZXJzYXRpb25UeXBlGAMgASgOMhQucGIuQ29udmVyc2F0aW9uVHlwZVIQY29udmVyc2F0aW9uVHlwZRIYCgdjb250ZW50GAQgASgJUgdjb250ZW50EjcKC2NvbnRlbnRUeXBlGAUgASgOMhUucGIuTm90aWNlQ29udGVudFR5cGVSC2NvbnRlbnRUeXBlEh4KCnVwZGF0ZVRpbWUYBiABKANSCnVwZGF0ZVRpbWUSEgoEc29ydBgHIAEoA1IEc29ydA==');
