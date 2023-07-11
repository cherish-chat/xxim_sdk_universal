///
//  Generated code. Do not modify.
//  source: conversation.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
import 'common.pbjson.dart' as $0;

@$core.Deprecated('Use friendApplyStatusDescriptor instead')
const FriendApplyStatus$json = const {
  '1': 'FriendApplyStatus',
  '2': const [
    const {'1': 'Applying', '2': 0},
    const {'1': 'Accepted', '2': 1},
    const {'1': 'Rejected', '2': 2},
  ],
};

/// Descriptor for `FriendApplyStatus`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List friendApplyStatusDescriptor = $convert.base64Decode('ChFGcmllbmRBcHBseVN0YXR1cxIMCghBcHBseWluZxAAEgwKCEFjY2VwdGVkEAESDAoIUmVqZWN0ZWQQAg==');
@$core.Deprecated('Use groupCreateReqDescriptor instead')
const GroupCreateReq$json = const {
  '1': 'GroupCreateReq',
  '2': const [
    const {'1': 'header', '3': 1, '4': 1, '5': 11, '6': '.pb.RequestHeader', '10': 'header'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '9': 0, '10': 'name', '17': true},
    const {'1': 'avatar', '3': 3, '4': 1, '5': 9, '9': 1, '10': 'avatar', '17': true},
    const {'1': 'memberList', '3': 4, '4': 3, '5': 9, '10': 'memberList'},
    const {'1': 'infoMap', '3': 5, '4': 3, '5': 11, '6': '.pb.GroupCreateReq.InfoMapEntry', '10': 'infoMap'},
    const {'1': 'extraMap', '3': 6, '4': 3, '5': 11, '6': '.pb.GroupCreateReq.ExtraMapEntry', '10': 'extraMap'},
  ],
  '3': const [GroupCreateReq_InfoMapEntry$json, GroupCreateReq_ExtraMapEntry$json],
  '8': const [
    const {'1': '_name'},
    const {'1': '_avatar'},
  ],
};

@$core.Deprecated('Use groupCreateReqDescriptor instead')
const GroupCreateReq_InfoMapEntry$json = const {
  '1': 'InfoMapEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': const {'7': true},
};

@$core.Deprecated('Use groupCreateReqDescriptor instead')
const GroupCreateReq_ExtraMapEntry$json = const {
  '1': 'ExtraMapEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': const {'7': true},
};

/// Descriptor for `GroupCreateReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List groupCreateReqDescriptor = $convert.base64Decode('Cg5Hcm91cENyZWF0ZVJlcRIpCgZoZWFkZXIYASABKAsyES5wYi5SZXF1ZXN0SGVhZGVyUgZoZWFkZXISFwoEbmFtZRgCIAEoCUgAUgRuYW1liAEBEhsKBmF2YXRhchgDIAEoCUgBUgZhdmF0YXKIAQESHgoKbWVtYmVyTGlzdBgEIAMoCVIKbWVtYmVyTGlzdBI5CgdpbmZvTWFwGAUgAygLMh8ucGIuR3JvdXBDcmVhdGVSZXEuSW5mb01hcEVudHJ5UgdpbmZvTWFwEjwKCGV4dHJhTWFwGAYgAygLMiAucGIuR3JvdXBDcmVhdGVSZXEuRXh0cmFNYXBFbnRyeVIIZXh0cmFNYXAaOgoMSW5mb01hcEVudHJ5EhAKA2tleRgBIAEoCVIDa2V5EhQKBXZhbHVlGAIgASgJUgV2YWx1ZToCOAEaOwoNRXh0cmFNYXBFbnRyeRIQCgNrZXkYASABKAlSA2tleRIUCgV2YWx1ZRgCIAEoCVIFdmFsdWU6AjgBQgcKBV9uYW1lQgkKB19hdmF0YXI=');
@$core.Deprecated('Use groupCreateRespDescriptor instead')
const GroupCreateResp$json = const {
  '1': 'GroupCreateResp',
  '2': const [
    const {'1': 'header', '3': 1, '4': 1, '5': 11, '6': '.pb.ResponseHeader', '10': 'header'},
    const {'1': 'groupId', '3': 2, '4': 1, '5': 9, '10': 'groupId'},
  ],
};

/// Descriptor for `GroupCreateResp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List groupCreateRespDescriptor = $convert.base64Decode('Cg9Hcm91cENyZWF0ZVJlc3ASKgoGaGVhZGVyGAEgASgLMhIucGIuUmVzcG9uc2VIZWFkZXJSBmhlYWRlchIYCgdncm91cElkGAIgASgJUgdncm91cElk');
@$core.Deprecated('Use countJoinGroupReqDescriptor instead')
const CountJoinGroupReq$json = const {
  '1': 'CountJoinGroupReq',
  '2': const [
    const {'1': 'header', '3': 1, '4': 1, '5': 11, '6': '.pb.RequestHeader', '10': 'header'},
  ],
};

/// Descriptor for `CountJoinGroupReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List countJoinGroupReqDescriptor = $convert.base64Decode('ChFDb3VudEpvaW5Hcm91cFJlcRIpCgZoZWFkZXIYASABKAsyES5wYi5SZXF1ZXN0SGVhZGVyUgZoZWFkZXI=');
@$core.Deprecated('Use countJoinGroupRespDescriptor instead')
const CountJoinGroupResp$json = const {
  '1': 'CountJoinGroupResp',
  '2': const [
    const {'1': 'header', '3': 1, '4': 1, '5': 11, '6': '.pb.ResponseHeader', '10': 'header'},
    const {'1': 'count', '3': 2, '4': 1, '5': 3, '10': 'count'},
  ],
};

/// Descriptor for `CountJoinGroupResp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List countJoinGroupRespDescriptor = $convert.base64Decode('ChJDb3VudEpvaW5Hcm91cFJlc3ASKgoGaGVhZGVyGAEgASgLMhIucGIuUmVzcG9uc2VIZWFkZXJSBmhlYWRlchIUCgVjb3VudBgCIAEoA1IFY291bnQ=');
@$core.Deprecated('Use countCreateGroupReqDescriptor instead')
const CountCreateGroupReq$json = const {
  '1': 'CountCreateGroupReq',
  '2': const [
    const {'1': 'header', '3': 1, '4': 1, '5': 11, '6': '.pb.RequestHeader', '10': 'header'},
  ],
};

/// Descriptor for `CountCreateGroupReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List countCreateGroupReqDescriptor = $convert.base64Decode('ChNDb3VudENyZWF0ZUdyb3VwUmVxEikKBmhlYWRlchgBIAEoCzIRLnBiLlJlcXVlc3RIZWFkZXJSBmhlYWRlcg==');
@$core.Deprecated('Use countCreateGroupRespDescriptor instead')
const CountCreateGroupResp$json = const {
  '1': 'CountCreateGroupResp',
  '2': const [
    const {'1': 'header', '3': 1, '4': 1, '5': 11, '6': '.pb.ResponseHeader', '10': 'header'},
    const {'1': 'count', '3': 2, '4': 1, '5': 3, '10': 'count'},
  ],
};

/// Descriptor for `CountCreateGroupResp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List countCreateGroupRespDescriptor = $convert.base64Decode('ChRDb3VudENyZWF0ZUdyb3VwUmVzcBIqCgZoZWFkZXIYASABKAsyEi5wYi5SZXNwb25zZUhlYWRlclIGaGVhZGVyEhQKBWNvdW50GAIgASgDUgVjb3VudA==');
@$core.Deprecated('Use groupSubscribeReqDescriptor instead')
const GroupSubscribeReq$json = const {
  '1': 'GroupSubscribeReq',
  '2': const [
    const {'1': 'header', '3': 1, '4': 1, '5': 11, '6': '.pb.RequestHeader', '10': 'header'},
  ],
};

/// Descriptor for `GroupSubscribeReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List groupSubscribeReqDescriptor = $convert.base64Decode('ChFHcm91cFN1YnNjcmliZVJlcRIpCgZoZWFkZXIYASABKAsyES5wYi5SZXF1ZXN0SGVhZGVyUgZoZWFkZXI=');
@$core.Deprecated('Use groupSubscribeRespDescriptor instead')
const GroupSubscribeResp$json = const {
  '1': 'GroupSubscribeResp',
  '2': const [
    const {'1': 'header', '3': 1, '4': 1, '5': 11, '6': '.pb.ResponseHeader', '10': 'header'},
  ],
};

/// Descriptor for `GroupSubscribeResp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List groupSubscribeRespDescriptor = $convert.base64Decode('ChJHcm91cFN1YnNjcmliZVJlc3ASKgoGaGVhZGVyGAEgASgLMhIucGIuUmVzcG9uc2VIZWFkZXJSBmhlYWRlcg==');
@$core.Deprecated('Use listGroupSubscribersReqDescriptor instead')
const ListGroupSubscribersReq$json = const {
  '1': 'ListGroupSubscribersReq',
  '2': const [
    const {'1': 'header', '3': 1, '4': 1, '5': 11, '6': '.pb.RequestHeader', '10': 'header'},
    const {'1': 'groupId', '3': 2, '4': 1, '5': 9, '10': 'groupId'},
    const {'1': 'cursor', '3': 3, '4': 1, '5': 3, '10': 'cursor'},
    const {'1': 'limit', '3': 4, '4': 1, '5': 3, '10': 'limit'},
    const {'1': 'filter', '3': 5, '4': 1, '5': 11, '6': '.pb.ListGroupSubscribersReq.Filter', '10': 'filter'},
    const {'1': 'option', '3': 6, '4': 1, '5': 11, '6': '.pb.ListGroupSubscribersReq.Option', '10': 'option'},
  ],
  '3': const [ListGroupSubscribersReq_Filter$json, ListGroupSubscribersReq_Option$json],
};

@$core.Deprecated('Use listGroupSubscribersReqDescriptor instead')
const ListGroupSubscribersReq_Filter$json = const {
  '1': 'Filter',
  '2': const [
    const {'1': 'subscribeTimeGte', '3': 1, '4': 1, '5': 3, '10': 'subscribeTimeGte'},
  ],
};

@$core.Deprecated('Use listGroupSubscribersReqDescriptor instead')
const ListGroupSubscribersReq_Option$json = const {
  '1': 'Option',
};

/// Descriptor for `ListGroupSubscribersReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listGroupSubscribersReqDescriptor = $convert.base64Decode('ChdMaXN0R3JvdXBTdWJzY3JpYmVyc1JlcRIpCgZoZWFkZXIYASABKAsyES5wYi5SZXF1ZXN0SGVhZGVyUgZoZWFkZXISGAoHZ3JvdXBJZBgCIAEoCVIHZ3JvdXBJZBIWCgZjdXJzb3IYAyABKANSBmN1cnNvchIUCgVsaW1pdBgEIAEoA1IFbGltaXQSOgoGZmlsdGVyGAUgASgLMiIucGIuTGlzdEdyb3VwU3Vic2NyaWJlcnNSZXEuRmlsdGVyUgZmaWx0ZXISOgoGb3B0aW9uGAYgASgLMiIucGIuTGlzdEdyb3VwU3Vic2NyaWJlcnNSZXEuT3B0aW9uUgZvcHRpb24aNAoGRmlsdGVyEioKEHN1YnNjcmliZVRpbWVHdGUYASABKANSEHN1YnNjcmliZVRpbWVHdGUaCAoGT3B0aW9u');
@$core.Deprecated('Use listGroupSubscribersRespDescriptor instead')
const ListGroupSubscribersResp$json = const {
  '1': 'ListGroupSubscribersResp',
  '2': const [
    const {'1': 'header', '3': 1, '4': 1, '5': 11, '6': '.pb.ResponseHeader', '10': 'header'},
    const {'1': 'subscriberList', '3': 2, '4': 3, '5': 11, '6': '.pb.ListGroupSubscribersResp.Subscriber', '10': 'subscriberList'},
  ],
  '3': const [ListGroupSubscribersResp_Subscriber$json],
};

@$core.Deprecated('Use listGroupSubscribersRespDescriptor instead')
const ListGroupSubscribersResp_Subscriber$json = const {
  '1': 'Subscriber',
  '2': const [
    const {'1': 'userId', '3': 1, '4': 1, '5': 9, '10': 'userId'},
    const {'1': 'subscribeTime', '3': 2, '4': 1, '5': 3, '10': 'subscribeTime'},
  ],
};

/// Descriptor for `ListGroupSubscribersResp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listGroupSubscribersRespDescriptor = $convert.base64Decode('ChhMaXN0R3JvdXBTdWJzY3JpYmVyc1Jlc3ASKgoGaGVhZGVyGAEgASgLMhIucGIuUmVzcG9uc2VIZWFkZXJSBmhlYWRlchJPCg5zdWJzY3JpYmVyTGlzdBgCIAMoCzInLnBiLkxpc3RHcm91cFN1YnNjcmliZXJzUmVzcC5TdWJzY3JpYmVyUg5zdWJzY3JpYmVyTGlzdBpKCgpTdWJzY3JpYmVyEhYKBnVzZXJJZBgBIAEoCVIGdXNlcklkEiQKDXN1YnNjcmliZVRpbWUYAiABKANSDXN1YnNjcmliZVRpbWU=');
@$core.Deprecated('Use friendApplyReqDescriptor instead')
const FriendApplyReq$json = const {
  '1': 'FriendApplyReq',
  '2': const [
    const {'1': 'header', '3': 1, '4': 1, '5': 11, '6': '.pb.RequestHeader', '10': 'header'},
    const {'1': 'toUserId', '3': 2, '4': 1, '5': 9, '10': 'toUserId'},
    const {'1': 'message', '3': 3, '4': 1, '5': 9, '9': 0, '10': 'message', '17': true},
    const {'1': 'answer', '3': 4, '4': 1, '5': 9, '9': 1, '10': 'answer', '17': true},
  ],
  '8': const [
    const {'1': '_message'},
    const {'1': '_answer'},
  ],
};

/// Descriptor for `FriendApplyReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List friendApplyReqDescriptor = $convert.base64Decode('Cg5GcmllbmRBcHBseVJlcRIpCgZoZWFkZXIYASABKAsyES5wYi5SZXF1ZXN0SGVhZGVyUgZoZWFkZXISGgoIdG9Vc2VySWQYAiABKAlSCHRvVXNlcklkEh0KB21lc3NhZ2UYAyABKAlIAFIHbWVzc2FnZYgBARIbCgZhbnN3ZXIYBCABKAlIAVIGYW5zd2VyiAEBQgoKCF9tZXNzYWdlQgkKB19hbnN3ZXI=');
@$core.Deprecated('Use friendApplyRespDescriptor instead')
const FriendApplyResp$json = const {
  '1': 'FriendApplyResp',
  '2': const [
    const {'1': 'header', '3': 1, '4': 1, '5': 11, '6': '.pb.ResponseHeader', '10': 'header'},
  ],
};

/// Descriptor for `FriendApplyResp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List friendApplyRespDescriptor = $convert.base64Decode('Cg9GcmllbmRBcHBseVJlc3ASKgoGaGVhZGVyGAEgASgLMhIucGIuUmVzcG9uc2VIZWFkZXJSBmhlYWRlcg==');
@$core.Deprecated('Use friendApplyHandleReqDescriptor instead')
const FriendApplyHandleReq$json = const {
  '1': 'FriendApplyHandleReq',
  '2': const [
    const {'1': 'header', '3': 1, '4': 1, '5': 11, '6': '.pb.RequestHeader', '10': 'header'},
    const {'1': 'applyId', '3': 2, '4': 1, '5': 9, '10': 'applyId'},
    const {'1': 'agree', '3': 3, '4': 1, '5': 8, '10': 'agree'},
    const {'1': 'firstMessage', '3': 4, '4': 1, '5': 9, '9': 0, '10': 'firstMessage', '17': true},
  ],
  '8': const [
    const {'1': '_firstMessage'},
  ],
};

/// Descriptor for `FriendApplyHandleReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List friendApplyHandleReqDescriptor = $convert.base64Decode('ChRGcmllbmRBcHBseUhhbmRsZVJlcRIpCgZoZWFkZXIYASABKAsyES5wYi5SZXF1ZXN0SGVhZGVyUgZoZWFkZXISGAoHYXBwbHlJZBgCIAEoCVIHYXBwbHlJZBIUCgVhZ3JlZRgDIAEoCFIFYWdyZWUSJwoMZmlyc3RNZXNzYWdlGAQgASgJSABSDGZpcnN0TWVzc2FnZYgBAUIPCg1fZmlyc3RNZXNzYWdl');
@$core.Deprecated('Use friendApplyHandleRespDescriptor instead')
const FriendApplyHandleResp$json = const {
  '1': 'FriendApplyHandleResp',
  '2': const [
    const {'1': 'header', '3': 1, '4': 1, '5': 11, '6': '.pb.ResponseHeader', '10': 'header'},
  ],
};

/// Descriptor for `FriendApplyHandleResp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List friendApplyHandleRespDescriptor = $convert.base64Decode('ChVGcmllbmRBcHBseUhhbmRsZVJlc3ASKgoGaGVhZGVyGAEgASgLMhIucGIuUmVzcG9uc2VIZWFkZXJSBmhlYWRlcg==');
@$core.Deprecated('Use listFriendApplyReqDescriptor instead')
const ListFriendApplyReq$json = const {
  '1': 'ListFriendApplyReq',
  '2': const [
    const {'1': 'header', '3': 1, '4': 1, '5': 11, '6': '.pb.RequestHeader', '10': 'header'},
    const {'1': 'cursor', '3': 2, '4': 1, '5': 3, '10': 'cursor'},
    const {'1': 'limit', '3': 3, '4': 1, '5': 3, '10': 'limit'},
    const {'1': 'filter', '3': 4, '4': 1, '5': 11, '6': '.pb.ListFriendApplyReq.Filter', '10': 'filter'},
    const {'1': 'option', '3': 5, '4': 1, '5': 11, '6': '.pb.ListFriendApplyReq.Option', '10': 'option'},
  ],
  '3': const [ListFriendApplyReq_Filter$json, ListFriendApplyReq_Option$json],
};

@$core.Deprecated('Use listFriendApplyReqDescriptor instead')
const ListFriendApplyReq_Filter$json = const {
  '1': 'Filter',
  '2': const [
    const {'1': 'status', '3': 1, '4': 1, '5': 14, '6': '.pb.FriendApplyStatus', '9': 0, '10': 'status', '17': true},
  ],
  '8': const [
    const {'1': '_status'},
  ],
};

@$core.Deprecated('Use listFriendApplyReqDescriptor instead')
const ListFriendApplyReq_Option$json = const {
  '1': 'Option',
  '2': const [
    const {'1': 'includeApplyByMe', '3': 1, '4': 1, '5': 8, '10': 'includeApplyByMe'},
  ],
};

/// Descriptor for `ListFriendApplyReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listFriendApplyReqDescriptor = $convert.base64Decode('ChJMaXN0RnJpZW5kQXBwbHlSZXESKQoGaGVhZGVyGAEgASgLMhEucGIuUmVxdWVzdEhlYWRlclIGaGVhZGVyEhYKBmN1cnNvchgCIAEoA1IGY3Vyc29yEhQKBWxpbWl0GAMgASgDUgVsaW1pdBI1CgZmaWx0ZXIYBCABKAsyHS5wYi5MaXN0RnJpZW5kQXBwbHlSZXEuRmlsdGVyUgZmaWx0ZXISNQoGb3B0aW9uGAUgASgLMh0ucGIuTGlzdEZyaWVuZEFwcGx5UmVxLk9wdGlvblIGb3B0aW9uGkcKBkZpbHRlchIyCgZzdGF0dXMYASABKA4yFS5wYi5GcmllbmRBcHBseVN0YXR1c0gAUgZzdGF0dXOIAQFCCQoHX3N0YXR1cxo0CgZPcHRpb24SKgoQaW5jbHVkZUFwcGx5QnlNZRgBIAEoCFIQaW5jbHVkZUFwcGx5QnlNZQ==');
@$core.Deprecated('Use listFriendApplyRespDescriptor instead')
const ListFriendApplyResp$json = const {
  '1': 'ListFriendApplyResp',
  '2': const [
    const {'1': 'header', '3': 1, '4': 1, '5': 11, '6': '.pb.ResponseHeader', '10': 'header'},
    const {'1': 'cursor', '3': 2, '4': 1, '5': 3, '10': 'cursor'},
    const {'1': 'friendApplyList', '3': 3, '4': 3, '5': 11, '6': '.pb.ListFriendApplyResp.FriendApply', '10': 'friendApplyList'},
  ],
  '3': const [ListFriendApplyResp_FriendApply$json],
};

@$core.Deprecated('Use listFriendApplyRespDescriptor instead')
const ListFriendApplyResp_FriendApply$json = const {
  '1': 'FriendApply',
  '2': const [
    const {'1': 'applyId', '3': 1, '4': 1, '5': 9, '10': 'applyId'},
    const {'1': 'fromUserId', '3': 2, '4': 1, '5': 9, '10': 'fromUserId'},
    const {'1': 'toUserId', '3': 3, '4': 1, '5': 9, '10': 'toUserId'},
    const {'1': 'message', '3': 4, '4': 1, '5': 9, '10': 'message'},
    const {'1': 'answer', '3': 5, '4': 1, '5': 9, '10': 'answer'},
  ],
};

/// Descriptor for `ListFriendApplyResp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listFriendApplyRespDescriptor = $convert.base64Decode('ChNMaXN0RnJpZW5kQXBwbHlSZXNwEioKBmhlYWRlchgBIAEoCzISLnBiLlJlc3BvbnNlSGVhZGVyUgZoZWFkZXISFgoGY3Vyc29yGAIgASgDUgZjdXJzb3ISTQoPZnJpZW5kQXBwbHlMaXN0GAMgAygLMiMucGIuTGlzdEZyaWVuZEFwcGx5UmVzcC5GcmllbmRBcHBseVIPZnJpZW5kQXBwbHlMaXN0GpUBCgtGcmllbmRBcHBseRIYCgdhcHBseUlkGAEgASgJUgdhcHBseUlkEh4KCmZyb21Vc2VySWQYAiABKAlSCmZyb21Vc2VySWQSGgoIdG9Vc2VySWQYAyABKAlSCHRvVXNlcklkEhgKB21lc3NhZ2UYBCABKAlSB21lc3NhZ2USFgoGYW5zd2VyGAUgASgJUgZhbnN3ZXI=');
@$core.Deprecated('Use countFriendReqDescriptor instead')
const CountFriendReq$json = const {
  '1': 'CountFriendReq',
  '2': const [
    const {'1': 'header', '3': 1, '4': 1, '5': 11, '6': '.pb.RequestHeader', '10': 'header'},
  ],
};

/// Descriptor for `CountFriendReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List countFriendReqDescriptor = $convert.base64Decode('Cg5Db3VudEZyaWVuZFJlcRIpCgZoZWFkZXIYASABKAsyES5wYi5SZXF1ZXN0SGVhZGVyUgZoZWFkZXI=');
@$core.Deprecated('Use countFriendRespDescriptor instead')
const CountFriendResp$json = const {
  '1': 'CountFriendResp',
  '2': const [
    const {'1': 'header', '3': 1, '4': 1, '5': 11, '6': '.pb.ResponseHeader', '10': 'header'},
    const {'1': 'count', '3': 2, '4': 1, '5': 3, '10': 'count'},
  ],
};

/// Descriptor for `CountFriendResp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List countFriendRespDescriptor = $convert.base64Decode('Cg9Db3VudEZyaWVuZFJlc3ASKgoGaGVhZGVyGAEgASgLMhIucGIuUmVzcG9uc2VIZWFkZXJSBmhlYWRlchIUCgVjb3VudBgCIAEoA1IFY291bnQ=');
@$core.Deprecated('Use conversationSettingUpdateReqDescriptor instead')
const ConversationSettingUpdateReq$json = const {
  '1': 'ConversationSettingUpdateReq',
  '2': const [
    const {'1': 'header', '3': 1, '4': 1, '5': 11, '6': '.pb.RequestHeader', '10': 'header'},
  ],
};

/// Descriptor for `ConversationSettingUpdateReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List conversationSettingUpdateReqDescriptor = $convert.base64Decode('ChxDb252ZXJzYXRpb25TZXR0aW5nVXBkYXRlUmVxEikKBmhlYWRlchgBIAEoCzIRLnBiLlJlcXVlc3RIZWFkZXJSBmhlYWRlcg==');
@$core.Deprecated('Use conversationSettingUpdateRespDescriptor instead')
const ConversationSettingUpdateResp$json = const {
  '1': 'ConversationSettingUpdateResp',
  '2': const [
    const {'1': 'header', '3': 1, '4': 1, '5': 11, '6': '.pb.ResponseHeader', '10': 'header'},
  ],
};

/// Descriptor for `ConversationSettingUpdateResp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List conversationSettingUpdateRespDescriptor = $convert.base64Decode('Ch1Db252ZXJzYXRpb25TZXR0aW5nVXBkYXRlUmVzcBIqCgZoZWFkZXIYASABKAsyEi5wYi5SZXNwb25zZUhlYWRlclIGaGVhZGVy');
@$core.Deprecated('Use listJoinedConversationsReqDescriptor instead')
const ListJoinedConversationsReq$json = const {
  '1': 'ListJoinedConversationsReq',
  '2': const [
    const {'1': 'header', '3': 1, '4': 1, '5': 11, '6': '.pb.RequestHeader', '10': 'header'},
    const {'1': 'conversationType', '3': 2, '4': 1, '5': 14, '6': '.pb.ConversationType', '10': 'conversationType'},
    const {'1': 'cursor', '3': 3, '4': 1, '5': 3, '10': 'cursor'},
    const {'1': 'limit', '3': 4, '4': 1, '5': 3, '10': 'limit'},
    const {'1': 'filter', '3': 5, '4': 1, '5': 11, '6': '.pb.ListJoinedConversationsReq.Filter', '10': 'filter'},
    const {'1': 'option', '3': 6, '4': 1, '5': 11, '6': '.pb.ListJoinedConversationsReq.Option', '10': 'option'},
  ],
  '3': const [ListJoinedConversationsReq_Filter$json, ListJoinedConversationsReq_Option$json],
};

@$core.Deprecated('Use listJoinedConversationsReqDescriptor instead')
const ListJoinedConversationsReq_Filter$json = const {
  '1': 'Filter',
  '2': const [
    const {'1': 'settingList', '3': 1, '4': 3, '5': 11, '6': '.pb.ListJoinedConversationsReq.Filter.SettingKV', '10': 'settingList'},
  ],
  '3': const [ListJoinedConversationsReq_Filter_SettingKV$json],
};

@$core.Deprecated('Use listJoinedConversationsReqDescriptor instead')
const ListJoinedConversationsReq_Filter_SettingKV$json = const {
  '1': 'SettingKV',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 14, '6': '.pb.ConversationSettingKey', '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
    const {'1': 'operator', '3': 3, '4': 1, '5': 14, '6': '.pb.ListJoinedConversationsReq.Filter.SettingKV.Operator', '10': 'operator'},
    const {'1': 'orNotExists', '3': 4, '4': 1, '5': 8, '10': 'orNotExists'},
    const {'1': 'orExists', '3': 5, '4': 1, '5': 8, '10': 'orExists'},
  ],
  '4': const [ListJoinedConversationsReq_Filter_SettingKV_Operator$json],
};

@$core.Deprecated('Use listJoinedConversationsReqDescriptor instead')
const ListJoinedConversationsReq_Filter_SettingKV_Operator$json = const {
  '1': 'Operator',
  '2': const [
    const {'1': 'Equal', '2': 0},
    const {'1': 'NotEqual', '2': 1},
  ],
};

@$core.Deprecated('Use listJoinedConversationsReqDescriptor instead')
const ListJoinedConversationsReq_Option$json = const {
  '1': 'Option',
  '2': const [
    const {'1': 'includeSelfMemberInfo', '3': 2, '4': 1, '5': 8, '10': 'includeSelfMemberInfo'},
  ],
};

/// Descriptor for `ListJoinedConversationsReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listJoinedConversationsReqDescriptor = $convert.base64Decode('ChpMaXN0Sm9pbmVkQ29udmVyc2F0aW9uc1JlcRIpCgZoZWFkZXIYASABKAsyES5wYi5SZXF1ZXN0SGVhZGVyUgZoZWFkZXISQAoQY29udmVyc2F0aW9uVHlwZRgCIAEoDjIULnBiLkNvbnZlcnNhdGlvblR5cGVSEGNvbnZlcnNhdGlvblR5cGUSFgoGY3Vyc29yGAMgASgDUgZjdXJzb3ISFAoFbGltaXQYBCABKANSBWxpbWl0Ej0KBmZpbHRlchgFIAEoCzIlLnBiLkxpc3RKb2luZWRDb252ZXJzYXRpb25zUmVxLkZpbHRlclIGZmlsdGVyEj0KBm9wdGlvbhgGIAEoCzIlLnBiLkxpc3RKb2luZWRDb252ZXJzYXRpb25zUmVxLk9wdGlvblIGb3B0aW9uGuYCCgZGaWx0ZXISUQoLc2V0dGluZ0xpc3QYASADKAsyLy5wYi5MaXN0Sm9pbmVkQ29udmVyc2F0aW9uc1JlcS5GaWx0ZXIuU2V0dGluZ0tWUgtzZXR0aW5nTGlzdBqIAgoJU2V0dGluZ0tWEiwKA2tleRgBIAEoDjIaLnBiLkNvbnZlcnNhdGlvblNldHRpbmdLZXlSA2tleRIUCgV2YWx1ZRgCIAEoCVIFdmFsdWUSVAoIb3BlcmF0b3IYAyABKA4yOC5wYi5MaXN0Sm9pbmVkQ29udmVyc2F0aW9uc1JlcS5GaWx0ZXIuU2V0dGluZ0tWLk9wZXJhdG9yUghvcGVyYXRvchIgCgtvck5vdEV4aXN0cxgEIAEoCFILb3JOb3RFeGlzdHMSGgoIb3JFeGlzdHMYBSABKAhSCG9yRXhpc3RzIiMKCE9wZXJhdG9yEgkKBUVxdWFsEAASDAoITm90RXF1YWwQARo+CgZPcHRpb24SNAoVaW5jbHVkZVNlbGZNZW1iZXJJbmZvGAIgASgIUhVpbmNsdWRlU2VsZk1lbWJlckluZm8=');
@$core.Deprecated('Use listJoinedConversationsRespDescriptor instead')
const ListJoinedConversationsResp$json = const {
  '1': 'ListJoinedConversationsResp',
  '2': const [
    const {'1': 'header', '3': 1, '4': 1, '5': 11, '6': '.pb.ResponseHeader', '10': 'header'},
    const {'1': 'conversationList', '3': 3, '4': 3, '5': 11, '6': '.pb.ListJoinedConversationsResp.Conversation', '10': 'conversationList'},
  ],
  '3': const [ListJoinedConversationsResp_Conversation$json],
};

@$core.Deprecated('Use listJoinedConversationsRespDescriptor instead')
const ListJoinedConversationsResp_Conversation$json = const {
  '1': 'Conversation',
  '2': const [
    const {'1': 'conversationId', '3': 1, '4': 1, '5': 9, '10': 'conversationId'},
    const {'1': 'conversationType', '3': 2, '4': 1, '5': 14, '6': '.pb.ConversationType', '10': 'conversationType'},
    const {'1': 'selfMemberInfo', '3': 31, '4': 1, '5': 11, '6': '.pb.ListJoinedConversationsResp.Conversation.SelfMemberInfo', '9': 0, '10': 'selfMemberInfo', '17': true},
  ],
  '3': const [ListJoinedConversationsResp_Conversation_SelfMemberInfo$json],
  '8': const [
    const {'1': '_selfMemberInfo'},
  ],
};

@$core.Deprecated('Use listJoinedConversationsRespDescriptor instead')
const ListJoinedConversationsResp_Conversation_SelfMemberInfo$json = const {
  '1': 'SelfMemberInfo',
  '2': const [
    const {'1': 'joinTime', '3': 1, '4': 1, '5': 3, '10': 'joinTime'},
  ],
};

/// Descriptor for `ListJoinedConversationsResp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listJoinedConversationsRespDescriptor = $convert.base64Decode('ChtMaXN0Sm9pbmVkQ29udmVyc2F0aW9uc1Jlc3ASKgoGaGVhZGVyGAEgASgLMhIucGIuUmVzcG9uc2VIZWFkZXJSBmhlYWRlchJYChBjb252ZXJzYXRpb25MaXN0GAMgAygLMiwucGIuTGlzdEpvaW5lZENvbnZlcnNhdGlvbnNSZXNwLkNvbnZlcnNhdGlvblIQY29udmVyc2F0aW9uTGlzdBqjAgoMQ29udmVyc2F0aW9uEiYKDmNvbnZlcnNhdGlvbklkGAEgASgJUg5jb252ZXJzYXRpb25JZBJAChBjb252ZXJzYXRpb25UeXBlGAIgASgOMhQucGIuQ29udmVyc2F0aW9uVHlwZVIQY29udmVyc2F0aW9uVHlwZRJoCg5zZWxmTWVtYmVySW5mbxgfIAEoCzI7LnBiLkxpc3RKb2luZWRDb252ZXJzYXRpb25zUmVzcC5Db252ZXJzYXRpb24uU2VsZk1lbWJlckluZm9IAFIOc2VsZk1lbWJlckluZm+IAQEaLAoOU2VsZk1lbWJlckluZm8SGgoIam9pblRpbWUYASABKANSCGpvaW5UaW1lQhEKD19zZWxmTWVtYmVySW5mbw==');
@$core.Deprecated('Use subscriptionSubscribeReqDescriptor instead')
const SubscriptionSubscribeReq$json = const {
  '1': 'SubscriptionSubscribeReq',
  '2': const [
    const {'1': 'header', '3': 1, '4': 1, '5': 11, '6': '.pb.RequestHeader', '10': 'header'},
  ],
};

/// Descriptor for `SubscriptionSubscribeReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List subscriptionSubscribeReqDescriptor = $convert.base64Decode('ChhTdWJzY3JpcHRpb25TdWJzY3JpYmVSZXESKQoGaGVhZGVyGAEgASgLMhEucGIuUmVxdWVzdEhlYWRlclIGaGVhZGVy');
@$core.Deprecated('Use subscriptionSubscribeRespDescriptor instead')
const SubscriptionSubscribeResp$json = const {
  '1': 'SubscriptionSubscribeResp',
  '2': const [
    const {'1': 'header', '3': 1, '4': 1, '5': 11, '6': '.pb.ResponseHeader', '10': 'header'},
  ],
};

/// Descriptor for `SubscriptionSubscribeResp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List subscriptionSubscribeRespDescriptor = $convert.base64Decode('ChlTdWJzY3JpcHRpb25TdWJzY3JpYmVSZXNwEioKBmhlYWRlchgBIAEoCzISLnBiLlJlc3BvbnNlSGVhZGVyUgZoZWFkZXI=');
@$core.Deprecated('Use subscriptionAfterOnlineReqDescriptor instead')
const SubscriptionAfterOnlineReq$json = const {
  '1': 'SubscriptionAfterOnlineReq',
  '2': const [
    const {'1': 'header', '3': 1, '4': 1, '5': 11, '6': '.pb.RequestHeader', '10': 'header'},
  ],
};

/// Descriptor for `SubscriptionAfterOnlineReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List subscriptionAfterOnlineReqDescriptor = $convert.base64Decode('ChpTdWJzY3JpcHRpb25BZnRlck9ubGluZVJlcRIpCgZoZWFkZXIYASABKAsyES5wYi5SZXF1ZXN0SGVhZGVyUgZoZWFkZXI=');
@$core.Deprecated('Use subscriptionAfterOnlineRespDescriptor instead')
const SubscriptionAfterOnlineResp$json = const {
  '1': 'SubscriptionAfterOnlineResp',
  '2': const [
    const {'1': 'header', '3': 1, '4': 1, '5': 11, '6': '.pb.ResponseHeader', '10': 'header'},
  ],
};

/// Descriptor for `SubscriptionAfterOnlineResp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List subscriptionAfterOnlineRespDescriptor = $convert.base64Decode('ChtTdWJzY3JpcHRpb25BZnRlck9ubGluZVJlc3ASKgoGaGVhZGVyGAEgASgLMhIucGIuUmVzcG9uc2VIZWFkZXJSBmhlYWRlcg==');
@$core.Deprecated('Use subscriptionAfterOfflineReqDescriptor instead')
const SubscriptionAfterOfflineReq$json = const {
  '1': 'SubscriptionAfterOfflineReq',
  '2': const [
    const {'1': 'header', '3': 1, '4': 1, '5': 11, '6': '.pb.RequestHeader', '10': 'header'},
    const {'1': 'userId', '3': 2, '4': 1, '5': 9, '10': 'userId'},
  ],
};

/// Descriptor for `SubscriptionAfterOfflineReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List subscriptionAfterOfflineReqDescriptor = $convert.base64Decode('ChtTdWJzY3JpcHRpb25BZnRlck9mZmxpbmVSZXESKQoGaGVhZGVyGAEgASgLMhEucGIuUmVxdWVzdEhlYWRlclIGaGVhZGVyEhYKBnVzZXJJZBgCIAEoCVIGdXNlcklk');
@$core.Deprecated('Use subscriptionAfterOfflineRespDescriptor instead')
const SubscriptionAfterOfflineResp$json = const {
  '1': 'SubscriptionAfterOfflineResp',
  '2': const [
    const {'1': 'header', '3': 1, '4': 1, '5': 11, '6': '.pb.ResponseHeader', '10': 'header'},
  ],
};

/// Descriptor for `SubscriptionAfterOfflineResp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List subscriptionAfterOfflineRespDescriptor = $convert.base64Decode('ChxTdWJzY3JpcHRpb25BZnRlck9mZmxpbmVSZXNwEioKBmhlYWRlchgBIAEoCzISLnBiLlJlc3BvbnNlSGVhZGVyUgZoZWFkZXI=');
@$core.Deprecated('Use userSubscriptionDescriptor instead')
const UserSubscription$json = const {
  '1': 'UserSubscription',
  '2': const [
    const {'1': 'subscriptionId', '3': 1, '4': 1, '5': 9, '10': 'subscriptionId'},
    const {'1': 'Subscriber', '3': 2, '4': 1, '5': 9, '10': 'Subscriber'},
    const {'1': 'subscribeTime', '3': 3, '4': 1, '5': 3, '10': 'subscribeTime'},
    const {'1': 'extraMap', '3': 6, '4': 3, '5': 11, '6': '.pb.UserSubscription.ExtraMapEntry', '10': 'extraMap'},
  ],
  '3': const [UserSubscription_ExtraMapEntry$json],
};

@$core.Deprecated('Use userSubscriptionDescriptor instead')
const UserSubscription_ExtraMapEntry$json = const {
  '1': 'ExtraMapEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': const {'7': true},
};

/// Descriptor for `UserSubscription`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userSubscriptionDescriptor = $convert.base64Decode('ChBVc2VyU3Vic2NyaXB0aW9uEiYKDnN1YnNjcmlwdGlvbklkGAEgASgJUg5zdWJzY3JpcHRpb25JZBIeCgpTdWJzY3JpYmVyGAIgASgJUgpTdWJzY3JpYmVyEiQKDXN1YnNjcmliZVRpbWUYAyABKANSDXN1YnNjcmliZVRpbWUSPgoIZXh0cmFNYXAYBiADKAsyIi5wYi5Vc2VyU3Vic2NyaXB0aW9uLkV4dHJhTWFwRW50cnlSCGV4dHJhTWFwGjsKDUV4dHJhTWFwRW50cnkSEAoDa2V5GAEgASgJUgNrZXkSFAoFdmFsdWUYAiABKAlSBXZhbHVlOgI4AQ==');
@$core.Deprecated('Use upsertUserSubscriptionReqDescriptor instead')
const UpsertUserSubscriptionReq$json = const {
  '1': 'UpsertUserSubscriptionReq',
  '2': const [
    const {'1': 'header', '3': 1, '4': 1, '5': 11, '6': '.pb.RequestHeader', '10': 'header'},
    const {'1': 'subscriptionId', '3': 2, '4': 1, '5': 9, '10': 'subscriptionId'},
    const {'1': 'userSubscription', '3': 3, '4': 1, '5': 11, '6': '.pb.UserSubscription', '10': 'userSubscription'},
  ],
};

/// Descriptor for `UpsertUserSubscriptionReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List upsertUserSubscriptionReqDescriptor = $convert.base64Decode('ChlVcHNlcnRVc2VyU3Vic2NyaXB0aW9uUmVxEikKBmhlYWRlchgBIAEoCzIRLnBiLlJlcXVlc3RIZWFkZXJSBmhlYWRlchImCg5zdWJzY3JpcHRpb25JZBgCIAEoCVIOc3Vic2NyaXB0aW9uSWQSQAoQdXNlclN1YnNjcmlwdGlvbhgDIAEoCzIULnBiLlVzZXJTdWJzY3JpcHRpb25SEHVzZXJTdWJzY3JpcHRpb24=');
@$core.Deprecated('Use upsertUserSubscriptionRespDescriptor instead')
const UpsertUserSubscriptionResp$json = const {
  '1': 'UpsertUserSubscriptionResp',
  '2': const [
    const {'1': 'header', '3': 1, '4': 1, '5': 11, '6': '.pb.ResponseHeader', '10': 'header'},
  ],
};

/// Descriptor for `UpsertUserSubscriptionResp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List upsertUserSubscriptionRespDescriptor = $convert.base64Decode('ChpVcHNlcnRVc2VyU3Vic2NyaXB0aW9uUmVzcBIqCgZoZWFkZXIYASABKAsyEi5wYi5SZXNwb25zZUhlYWRlclIGaGVhZGVy');
@$core.Deprecated('Use deleteUserSubscriptionReqDescriptor instead')
const DeleteUserSubscriptionReq$json = const {
  '1': 'DeleteUserSubscriptionReq',
  '2': const [
    const {'1': 'header', '3': 1, '4': 1, '5': 11, '6': '.pb.RequestHeader', '10': 'header'},
    const {'1': 'subscriptionId', '3': 2, '4': 1, '5': 9, '10': 'subscriptionId'},
  ],
};

/// Descriptor for `DeleteUserSubscriptionReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteUserSubscriptionReqDescriptor = $convert.base64Decode('ChlEZWxldGVVc2VyU3Vic2NyaXB0aW9uUmVxEikKBmhlYWRlchgBIAEoCzIRLnBiLlJlcXVlc3RIZWFkZXJSBmhlYWRlchImCg5zdWJzY3JpcHRpb25JZBgCIAEoCVIOc3Vic2NyaXB0aW9uSWQ=');
@$core.Deprecated('Use deleteUserSubscriptionRespDescriptor instead')
const DeleteUserSubscriptionResp$json = const {
  '1': 'DeleteUserSubscriptionResp',
  '2': const [
    const {'1': 'header', '3': 1, '4': 1, '5': 11, '6': '.pb.ResponseHeader', '10': 'header'},
  ],
};

/// Descriptor for `DeleteUserSubscriptionResp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteUserSubscriptionRespDescriptor = $convert.base64Decode('ChpEZWxldGVVc2VyU3Vic2NyaXB0aW9uUmVzcBIqCgZoZWFkZXIYASABKAsyEi5wYi5SZXNwb25zZUhlYWRlclIGaGVhZGVy');
@$core.Deprecated('Use listSubscriptionSubscribersReqDescriptor instead')
const ListSubscriptionSubscribersReq$json = const {
  '1': 'ListSubscriptionSubscribersReq',
  '2': const [
    const {'1': 'header', '3': 1, '4': 1, '5': 11, '6': '.pb.RequestHeader', '10': 'header'},
    const {'1': 'subscriptionId', '3': 2, '4': 1, '5': 9, '10': 'subscriptionId'},
    const {'1': 'cursor', '3': 3, '4': 1, '5': 3, '10': 'cursor'},
    const {'1': 'limit', '3': 4, '4': 1, '5': 3, '10': 'limit'},
    const {'1': 'filter', '3': 5, '4': 1, '5': 11, '6': '.pb.ListSubscriptionSubscribersReq.Filter', '10': 'filter'},
    const {'1': 'option', '3': 6, '4': 1, '5': 11, '6': '.pb.ListSubscriptionSubscribersReq.Option', '10': 'option'},
  ],
  '3': const [ListSubscriptionSubscribersReq_Filter$json, ListSubscriptionSubscribersReq_Option$json],
};

@$core.Deprecated('Use listSubscriptionSubscribersReqDescriptor instead')
const ListSubscriptionSubscribersReq_Filter$json = const {
  '1': 'Filter',
  '2': const [
    const {'1': 'subscribeTimeGte', '3': 1, '4': 1, '5': 3, '10': 'subscribeTimeGte'},
  ],
};

@$core.Deprecated('Use listSubscriptionSubscribersReqDescriptor instead')
const ListSubscriptionSubscribersReq_Option$json = const {
  '1': 'Option',
};

/// Descriptor for `ListSubscriptionSubscribersReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listSubscriptionSubscribersReqDescriptor = $convert.base64Decode('Ch5MaXN0U3Vic2NyaXB0aW9uU3Vic2NyaWJlcnNSZXESKQoGaGVhZGVyGAEgASgLMhEucGIuUmVxdWVzdEhlYWRlclIGaGVhZGVyEiYKDnN1YnNjcmlwdGlvbklkGAIgASgJUg5zdWJzY3JpcHRpb25JZBIWCgZjdXJzb3IYAyABKANSBmN1cnNvchIUCgVsaW1pdBgEIAEoA1IFbGltaXQSQQoGZmlsdGVyGAUgASgLMikucGIuTGlzdFN1YnNjcmlwdGlvblN1YnNjcmliZXJzUmVxLkZpbHRlclIGZmlsdGVyEkEKBm9wdGlvbhgGIAEoCzIpLnBiLkxpc3RTdWJzY3JpcHRpb25TdWJzY3JpYmVyc1JlcS5PcHRpb25SBm9wdGlvbho0CgZGaWx0ZXISKgoQc3Vic2NyaWJlVGltZUd0ZRgBIAEoA1IQc3Vic2NyaWJlVGltZUd0ZRoICgZPcHRpb24=');
@$core.Deprecated('Use listSubscriptionSubscribersRespDescriptor instead')
const ListSubscriptionSubscribersResp$json = const {
  '1': 'ListSubscriptionSubscribersResp',
  '2': const [
    const {'1': 'header', '3': 1, '4': 1, '5': 11, '6': '.pb.ResponseHeader', '10': 'header'},
    const {'1': 'subscriberList', '3': 2, '4': 3, '5': 11, '6': '.pb.ListSubscriptionSubscribersResp.Subscriber', '10': 'subscriberList'},
  ],
  '3': const [ListSubscriptionSubscribersResp_Subscriber$json],
};

@$core.Deprecated('Use listSubscriptionSubscribersRespDescriptor instead')
const ListSubscriptionSubscribersResp_Subscriber$json = const {
  '1': 'Subscriber',
  '2': const [
    const {'1': 'userId', '3': 1, '4': 1, '5': 9, '10': 'userId'},
    const {'1': 'subscribeTime', '3': 2, '4': 1, '5': 3, '10': 'subscribeTime'},
  ],
};

/// Descriptor for `ListSubscriptionSubscribersResp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listSubscriptionSubscribersRespDescriptor = $convert.base64Decode('Ch9MaXN0U3Vic2NyaXB0aW9uU3Vic2NyaWJlcnNSZXNwEioKBmhlYWRlchgBIAEoCzISLnBiLlJlc3BvbnNlSGVhZGVyUgZoZWFkZXISVgoOc3Vic2NyaWJlckxpc3QYAiADKAsyLi5wYi5MaXN0U3Vic2NyaXB0aW9uU3Vic2NyaWJlcnNSZXNwLlN1YnNjcmliZXJSDnN1YnNjcmliZXJMaXN0GkoKClN1YnNjcmliZXISFgoGdXNlcklkGAEgASgJUgZ1c2VySWQSJAoNc3Vic2NyaWJlVGltZRgCIAEoA1INc3Vic2NyaWJlVGltZQ==');
const $core.Map<$core.String, $core.dynamic> groupServiceBase$json = const {
  '1': 'groupService',
  '2': const [
    const {'1': 'GroupCreate', '2': '.pb.GroupCreateReq', '3': '.pb.GroupCreateResp', '4': const {}},
    const {'1': 'CountJoinGroup', '2': '.pb.CountJoinGroupReq', '3': '.pb.CountJoinGroupResp', '4': const {}},
    const {'1': 'CountCreateGroup', '2': '.pb.CountCreateGroupReq', '3': '.pb.CountCreateGroupResp', '4': const {}},
    const {'1': 'GroupSubscribe', '2': '.pb.GroupSubscribeReq', '3': '.pb.GroupSubscribeResp', '4': const {}},
    const {'1': 'ListGroupSubscribers', '2': '.pb.ListGroupSubscribersReq', '3': '.pb.ListGroupSubscribersResp', '4': const {}},
  ],
};

@$core.Deprecated('Use groupServiceDescriptor instead')
const $core.Map<$core.String, $core.Map<$core.String, $core.dynamic>> groupServiceBase$messageJson = const {
  '.pb.GroupCreateReq': GroupCreateReq$json,
  '.pb.RequestHeader': $0.RequestHeader$json,
  '.pb.GroupCreateReq.InfoMapEntry': GroupCreateReq_InfoMapEntry$json,
  '.pb.GroupCreateReq.ExtraMapEntry': GroupCreateReq_ExtraMapEntry$json,
  '.pb.GroupCreateResp': GroupCreateResp$json,
  '.pb.ResponseHeader': $0.ResponseHeader$json,
  '.pb.CountJoinGroupReq': CountJoinGroupReq$json,
  '.pb.CountJoinGroupResp': CountJoinGroupResp$json,
  '.pb.CountCreateGroupReq': CountCreateGroupReq$json,
  '.pb.CountCreateGroupResp': CountCreateGroupResp$json,
  '.pb.GroupSubscribeReq': GroupSubscribeReq$json,
  '.pb.GroupSubscribeResp': GroupSubscribeResp$json,
  '.pb.ListGroupSubscribersReq': ListGroupSubscribersReq$json,
  '.pb.ListGroupSubscribersReq.Filter': ListGroupSubscribersReq_Filter$json,
  '.pb.ListGroupSubscribersReq.Option': ListGroupSubscribersReq_Option$json,
  '.pb.ListGroupSubscribersResp': ListGroupSubscribersResp$json,
  '.pb.ListGroupSubscribersResp.Subscriber': ListGroupSubscribersResp_Subscriber$json,
};

/// Descriptor for `groupService`. Decode as a `google.protobuf.ServiceDescriptorProto`.
final $typed_data.Uint8List groupServiceDescriptor = $convert.base64Decode('Cgxncm91cFNlcnZpY2USOAoLR3JvdXBDcmVhdGUSEi5wYi5Hcm91cENyZWF0ZVJlcRoTLnBiLkdyb3VwQ3JlYXRlUmVzcCIAEkEKDkNvdW50Sm9pbkdyb3VwEhUucGIuQ291bnRKb2luR3JvdXBSZXEaFi5wYi5Db3VudEpvaW5Hcm91cFJlc3AiABJHChBDb3VudENyZWF0ZUdyb3VwEhcucGIuQ291bnRDcmVhdGVHcm91cFJlcRoYLnBiLkNvdW50Q3JlYXRlR3JvdXBSZXNwIgASQQoOR3JvdXBTdWJzY3JpYmUSFS5wYi5Hcm91cFN1YnNjcmliZVJlcRoWLnBiLkdyb3VwU3Vic2NyaWJlUmVzcCIAElMKFExpc3RHcm91cFN1YnNjcmliZXJzEhsucGIuTGlzdEdyb3VwU3Vic2NyaWJlcnNSZXEaHC5wYi5MaXN0R3JvdXBTdWJzY3JpYmVyc1Jlc3AiAA==');
const $core.Map<$core.String, $core.dynamic> friendServiceBase$json = const {
  '1': 'friendService',
  '2': const [
    const {'1': 'FriendApply', '2': '.pb.FriendApplyReq', '3': '.pb.FriendApplyResp', '4': const {}},
    const {'1': 'FriendApplyHandle', '2': '.pb.FriendApplyHandleReq', '3': '.pb.FriendApplyHandleResp', '4': const {}},
    const {'1': 'ListFriendApply', '2': '.pb.ListFriendApplyReq', '3': '.pb.ListFriendApplyResp', '4': const {}},
    const {'1': 'CountFriend', '2': '.pb.CountFriendReq', '3': '.pb.CountFriendResp', '4': const {}},
  ],
};

@$core.Deprecated('Use friendServiceDescriptor instead')
const $core.Map<$core.String, $core.Map<$core.String, $core.dynamic>> friendServiceBase$messageJson = const {
  '.pb.FriendApplyReq': FriendApplyReq$json,
  '.pb.RequestHeader': $0.RequestHeader$json,
  '.pb.FriendApplyResp': FriendApplyResp$json,
  '.pb.ResponseHeader': $0.ResponseHeader$json,
  '.pb.FriendApplyHandleReq': FriendApplyHandleReq$json,
  '.pb.FriendApplyHandleResp': FriendApplyHandleResp$json,
  '.pb.ListFriendApplyReq': ListFriendApplyReq$json,
  '.pb.ListFriendApplyReq.Filter': ListFriendApplyReq_Filter$json,
  '.pb.ListFriendApplyReq.Option': ListFriendApplyReq_Option$json,
  '.pb.ListFriendApplyResp': ListFriendApplyResp$json,
  '.pb.ListFriendApplyResp.FriendApply': ListFriendApplyResp_FriendApply$json,
  '.pb.CountFriendReq': CountFriendReq$json,
  '.pb.CountFriendResp': CountFriendResp$json,
};

/// Descriptor for `friendService`. Decode as a `google.protobuf.ServiceDescriptorProto`.
final $typed_data.Uint8List friendServiceDescriptor = $convert.base64Decode('Cg1mcmllbmRTZXJ2aWNlEjgKC0ZyaWVuZEFwcGx5EhIucGIuRnJpZW5kQXBwbHlSZXEaEy5wYi5GcmllbmRBcHBseVJlc3AiABJKChFGcmllbmRBcHBseUhhbmRsZRIYLnBiLkZyaWVuZEFwcGx5SGFuZGxlUmVxGhkucGIuRnJpZW5kQXBwbHlIYW5kbGVSZXNwIgASRAoPTGlzdEZyaWVuZEFwcGx5EhYucGIuTGlzdEZyaWVuZEFwcGx5UmVxGhcucGIuTGlzdEZyaWVuZEFwcGx5UmVzcCIAEjgKC0NvdW50RnJpZW5kEhIucGIuQ291bnRGcmllbmRSZXEaEy5wYi5Db3VudEZyaWVuZFJlc3AiAA==');
const $core.Map<$core.String, $core.dynamic> conversationServiceBase$json = const {
  '1': 'conversationService',
  '2': const [
    const {'1': 'ConversationSettingUpdate', '2': '.pb.ConversationSettingUpdateReq', '3': '.pb.ConversationSettingUpdateResp', '4': const {}},
    const {'1': 'ListJoinedConversations', '2': '.pb.ListJoinedConversationsReq', '3': '.pb.ListJoinedConversationsResp', '4': const {}},
  ],
};

@$core.Deprecated('Use conversationServiceDescriptor instead')
const $core.Map<$core.String, $core.Map<$core.String, $core.dynamic>> conversationServiceBase$messageJson = const {
  '.pb.ConversationSettingUpdateReq': ConversationSettingUpdateReq$json,
  '.pb.RequestHeader': $0.RequestHeader$json,
  '.pb.ConversationSettingUpdateResp': ConversationSettingUpdateResp$json,
  '.pb.ResponseHeader': $0.ResponseHeader$json,
  '.pb.ListJoinedConversationsReq': ListJoinedConversationsReq$json,
  '.pb.ListJoinedConversationsReq.Filter': ListJoinedConversationsReq_Filter$json,
  '.pb.ListJoinedConversationsReq.Filter.SettingKV': ListJoinedConversationsReq_Filter_SettingKV$json,
  '.pb.ListJoinedConversationsReq.Option': ListJoinedConversationsReq_Option$json,
  '.pb.ListJoinedConversationsResp': ListJoinedConversationsResp$json,
  '.pb.ListJoinedConversationsResp.Conversation': ListJoinedConversationsResp_Conversation$json,
  '.pb.ListJoinedConversationsResp.Conversation.SelfMemberInfo': ListJoinedConversationsResp_Conversation_SelfMemberInfo$json,
};

/// Descriptor for `conversationService`. Decode as a `google.protobuf.ServiceDescriptorProto`.
final $typed_data.Uint8List conversationServiceDescriptor = $convert.base64Decode('ChNjb252ZXJzYXRpb25TZXJ2aWNlEmIKGUNvbnZlcnNhdGlvblNldHRpbmdVcGRhdGUSIC5wYi5Db252ZXJzYXRpb25TZXR0aW5nVXBkYXRlUmVxGiEucGIuQ29udmVyc2F0aW9uU2V0dGluZ1VwZGF0ZVJlc3AiABJcChdMaXN0Sm9pbmVkQ29udmVyc2F0aW9ucxIeLnBiLkxpc3RKb2luZWRDb252ZXJzYXRpb25zUmVxGh8ucGIuTGlzdEpvaW5lZENvbnZlcnNhdGlvbnNSZXNwIgA=');
const $core.Map<$core.String, $core.dynamic> subscriptionServiceBase$json = const {
  '1': 'subscriptionService',
  '2': const [
    const {'1': 'SubscriptionSubscribe', '2': '.pb.SubscriptionSubscribeReq', '3': '.pb.SubscriptionSubscribeResp', '4': const {}},
    const {'1': 'SubscriptionAfterOnline', '2': '.pb.SubscriptionAfterOnlineReq', '3': '.pb.SubscriptionAfterOnlineResp', '4': const {}},
    const {'1': 'SubscriptionAfterOffline', '2': '.pb.SubscriptionAfterOfflineReq', '3': '.pb.SubscriptionAfterOfflineResp', '4': const {}},
    const {'1': 'UpsertUserSubscription', '2': '.pb.UpsertUserSubscriptionReq', '3': '.pb.UpsertUserSubscriptionResp', '4': const {}},
    const {'1': 'DeleteUserSubscription', '2': '.pb.DeleteUserSubscriptionReq', '3': '.pb.DeleteUserSubscriptionResp', '4': const {}},
    const {'1': 'ListSubscriptionSubscribers', '2': '.pb.ListSubscriptionSubscribersReq', '3': '.pb.ListSubscriptionSubscribersResp', '4': const {}},
  ],
};

@$core.Deprecated('Use subscriptionServiceDescriptor instead')
const $core.Map<$core.String, $core.Map<$core.String, $core.dynamic>> subscriptionServiceBase$messageJson = const {
  '.pb.SubscriptionSubscribeReq': SubscriptionSubscribeReq$json,
  '.pb.RequestHeader': $0.RequestHeader$json,
  '.pb.SubscriptionSubscribeResp': SubscriptionSubscribeResp$json,
  '.pb.ResponseHeader': $0.ResponseHeader$json,
  '.pb.SubscriptionAfterOnlineReq': SubscriptionAfterOnlineReq$json,
  '.pb.SubscriptionAfterOnlineResp': SubscriptionAfterOnlineResp$json,
  '.pb.SubscriptionAfterOfflineReq': SubscriptionAfterOfflineReq$json,
  '.pb.SubscriptionAfterOfflineResp': SubscriptionAfterOfflineResp$json,
  '.pb.UpsertUserSubscriptionReq': UpsertUserSubscriptionReq$json,
  '.pb.UserSubscription': UserSubscription$json,
  '.pb.UserSubscription.ExtraMapEntry': UserSubscription_ExtraMapEntry$json,
  '.pb.UpsertUserSubscriptionResp': UpsertUserSubscriptionResp$json,
  '.pb.DeleteUserSubscriptionReq': DeleteUserSubscriptionReq$json,
  '.pb.DeleteUserSubscriptionResp': DeleteUserSubscriptionResp$json,
  '.pb.ListSubscriptionSubscribersReq': ListSubscriptionSubscribersReq$json,
  '.pb.ListSubscriptionSubscribersReq.Filter': ListSubscriptionSubscribersReq_Filter$json,
  '.pb.ListSubscriptionSubscribersReq.Option': ListSubscriptionSubscribersReq_Option$json,
  '.pb.ListSubscriptionSubscribersResp': ListSubscriptionSubscribersResp$json,
  '.pb.ListSubscriptionSubscribersResp.Subscriber': ListSubscriptionSubscribersResp_Subscriber$json,
};

/// Descriptor for `subscriptionService`. Decode as a `google.protobuf.ServiceDescriptorProto`.
final $typed_data.Uint8List subscriptionServiceDescriptor = $convert.base64Decode('ChNzdWJzY3JpcHRpb25TZXJ2aWNlElYKFVN1YnNjcmlwdGlvblN1YnNjcmliZRIcLnBiLlN1YnNjcmlwdGlvblN1YnNjcmliZVJlcRodLnBiLlN1YnNjcmlwdGlvblN1YnNjcmliZVJlc3AiABJcChdTdWJzY3JpcHRpb25BZnRlck9ubGluZRIeLnBiLlN1YnNjcmlwdGlvbkFmdGVyT25saW5lUmVxGh8ucGIuU3Vic2NyaXB0aW9uQWZ0ZXJPbmxpbmVSZXNwIgASXwoYU3Vic2NyaXB0aW9uQWZ0ZXJPZmZsaW5lEh8ucGIuU3Vic2NyaXB0aW9uQWZ0ZXJPZmZsaW5lUmVxGiAucGIuU3Vic2NyaXB0aW9uQWZ0ZXJPZmZsaW5lUmVzcCIAElkKFlVwc2VydFVzZXJTdWJzY3JpcHRpb24SHS5wYi5VcHNlcnRVc2VyU3Vic2NyaXB0aW9uUmVxGh4ucGIuVXBzZXJ0VXNlclN1YnNjcmlwdGlvblJlc3AiABJZChZEZWxldGVVc2VyU3Vic2NyaXB0aW9uEh0ucGIuRGVsZXRlVXNlclN1YnNjcmlwdGlvblJlcRoeLnBiLkRlbGV0ZVVzZXJTdWJzY3JpcHRpb25SZXNwIgASaAobTGlzdFN1YnNjcmlwdGlvblN1YnNjcmliZXJzEiIucGIuTGlzdFN1YnNjcmlwdGlvblN1YnNjcmliZXJzUmVxGiMucGIuTGlzdFN1YnNjcmlwdGlvblN1YnNjcmliZXJzUmVzcCIA');
