///
//  Generated code. Do not modify.
//  source: gateway.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
import 'common.pbjson.dart' as $0;

@$core.Deprecated('Use gatewayWriteDataTypeDescriptor instead')
const GatewayWriteDataType$json = const {
  '1': 'GatewayWriteDataType',
  '2': const [
    const {'1': 'Response', '2': 0},
    const {'1': 'PushMessage', '2': 1},
    const {'1': 'PushNotice', '2': 2},
  ],
};

/// Descriptor for `GatewayWriteDataType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List gatewayWriteDataTypeDescriptor = $convert.base64Decode('ChRHYXRld2F5V3JpdGVEYXRhVHlwZRIMCghSZXNwb25zZRAAEg8KC1B1c2hNZXNzYWdlEAESDgoKUHVzaE5vdGljZRAC');
@$core.Deprecated('Use gatewayApiRequestDescriptor instead')
const GatewayApiRequest$json = const {
  '1': 'GatewayApiRequest',
  '2': const [
    const {'1': 'header', '3': 1, '4': 1, '5': 11, '6': '.pb.RequestHeader', '10': 'header'},
    const {'1': 'requestId', '3': 2, '4': 1, '5': 9, '10': 'requestId'},
    const {'1': 'path', '3': 3, '4': 1, '5': 9, '10': 'path'},
    const {'1': 'body', '3': 4, '4': 1, '5': 12, '10': 'body'},
  ],
};

/// Descriptor for `GatewayApiRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gatewayApiRequestDescriptor = $convert.base64Decode('ChFHYXRld2F5QXBpUmVxdWVzdBIpCgZoZWFkZXIYASABKAsyES5wYi5SZXF1ZXN0SGVhZGVyUgZoZWFkZXISHAoJcmVxdWVzdElkGAIgASgJUglyZXF1ZXN0SWQSEgoEcGF0aBgDIAEoCVIEcGF0aBISCgRib2R5GAQgASgMUgRib2R5');
@$core.Deprecated('Use gatewayApiResponseDescriptor instead')
const GatewayApiResponse$json = const {
  '1': 'GatewayApiResponse',
  '2': const [
    const {'1': 'header', '3': 1, '4': 1, '5': 11, '6': '.pb.ResponseHeader', '10': 'header'},
    const {'1': 'requestId', '3': 2, '4': 1, '5': 9, '10': 'requestId'},
    const {'1': 'path', '3': 3, '4': 1, '5': 9, '10': 'path'},
    const {'1': 'body', '3': 4, '4': 1, '5': 12, '10': 'body'},
  ],
};

/// Descriptor for `GatewayApiResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gatewayApiResponseDescriptor = $convert.base64Decode('ChJHYXRld2F5QXBpUmVzcG9uc2USKgoGaGVhZGVyGAEgASgLMhIucGIuUmVzcG9uc2VIZWFkZXJSBmhlYWRlchIcCglyZXF1ZXN0SWQYAiABKAlSCXJlcXVlc3RJZBISCgRwYXRoGAMgASgJUgRwYXRoEhIKBGJvZHkYBCABKAxSBGJvZHk=');
@$core.Deprecated('Use gatewayWriteDataContentDescriptor instead')
const GatewayWriteDataContent$json = const {
  '1': 'GatewayWriteDataContent',
  '2': const [
    const {'1': 'dataType', '3': 1, '4': 1, '5': 14, '6': '.pb.GatewayWriteDataType', '10': 'dataType'},
    const {'1': 'response', '3': 2, '4': 1, '5': 11, '6': '.pb.GatewayApiResponse', '9': 0, '10': 'response', '17': true},
    const {'1': 'message', '3': 3, '4': 1, '5': 11, '6': '.pb.Message', '9': 1, '10': 'message', '17': true},
    const {'1': 'notice', '3': 4, '4': 1, '5': 11, '6': '.pb.Notice', '9': 2, '10': 'notice', '17': true},
  ],
  '8': const [
    const {'1': '_response'},
    const {'1': '_message'},
    const {'1': '_notice'},
  ],
};

/// Descriptor for `GatewayWriteDataContent`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gatewayWriteDataContentDescriptor = $convert.base64Decode('ChdHYXRld2F5V3JpdGVEYXRhQ29udGVudBI0CghkYXRhVHlwZRgBIAEoDjIYLnBiLkdhdGV3YXlXcml0ZURhdGFUeXBlUghkYXRhVHlwZRI3CghyZXNwb25zZRgCIAEoCzIWLnBiLkdhdGV3YXlBcGlSZXNwb25zZUgAUghyZXNwb25zZYgBARIqCgdtZXNzYWdlGAMgASgLMgsucGIuTWVzc2FnZUgBUgdtZXNzYWdliAEBEicKBm5vdGljZRgEIAEoCzIKLnBiLk5vdGljZUgCUgZub3RpY2WIAQFCCwoJX3Jlc3BvbnNlQgoKCF9tZXNzYWdlQgkKB19ub3RpY2U=');
@$core.Deprecated('Use longConnectionDescriptor instead')
const LongConnection$json = const {
  '1': 'LongConnection',
  '2': const [
    const {'1': 'header', '3': 1, '4': 1, '5': 11, '6': '.pb.RequestHeader', '10': 'header'},
    const {'1': 'podIp', '3': 3, '4': 1, '5': 9, '10': 'podIp'},
    const {'1': 'connectTime', '3': 4, '4': 1, '5': 3, '10': 'connectTime'},
  ],
};

/// Descriptor for `LongConnection`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List longConnectionDescriptor = $convert.base64Decode('Cg5Mb25nQ29ubmVjdGlvbhIpCgZoZWFkZXIYASABKAsyES5wYi5SZXF1ZXN0SGVhZGVyUgZoZWFkZXISFAoFcG9kSXAYAyABKAlSBXBvZElwEiAKC2Nvbm5lY3RUaW1lGAQgASgDUgtjb25uZWN0VGltZQ==');
@$core.Deprecated('Use gatewayGetUserConnectionReqDescriptor instead')
const GatewayGetUserConnectionReq$json = const {
  '1': 'GatewayGetUserConnectionReq',
  '2': const [
    const {'1': 'header', '3': 1, '4': 1, '5': 11, '6': '.pb.RequestHeader', '10': 'header'},
    const {'1': 'userId', '3': 2, '4': 1, '5': 9, '10': 'userId'},
  ],
};

/// Descriptor for `GatewayGetUserConnectionReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gatewayGetUserConnectionReqDescriptor = $convert.base64Decode('ChtHYXRld2F5R2V0VXNlckNvbm5lY3Rpb25SZXESKQoGaGVhZGVyGAEgASgLMhEucGIuUmVxdWVzdEhlYWRlclIGaGVhZGVyEhYKBnVzZXJJZBgCIAEoCVIGdXNlcklk');
@$core.Deprecated('Use gatewayGetUserConnectionRespDescriptor instead')
const GatewayGetUserConnectionResp$json = const {
  '1': 'GatewayGetUserConnectionResp',
  '2': const [
    const {'1': 'header', '3': 1, '4': 1, '5': 11, '6': '.pb.ResponseHeader', '10': 'header'},
    const {'1': 'connections', '3': 2, '4': 3, '5': 11, '6': '.pb.LongConnection', '10': 'connections'},
  ],
};

/// Descriptor for `GatewayGetUserConnectionResp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gatewayGetUserConnectionRespDescriptor = $convert.base64Decode('ChxHYXRld2F5R2V0VXNlckNvbm5lY3Rpb25SZXNwEioKBmhlYWRlchgBIAEoCzISLnBiLlJlc3BvbnNlSGVhZGVyUgZoZWFkZXISNAoLY29ubmVjdGlvbnMYAiADKAsyEi5wYi5Mb25nQ29ubmVjdGlvblILY29ubmVjdGlvbnM=');
@$core.Deprecated('Use gatewayBatchGetUserConnectionReqDescriptor instead')
const GatewayBatchGetUserConnectionReq$json = const {
  '1': 'GatewayBatchGetUserConnectionReq',
  '2': const [
    const {'1': 'header', '3': 1, '4': 1, '5': 11, '6': '.pb.RequestHeader', '10': 'header'},
    const {'1': 'userIds', '3': 2, '4': 3, '5': 9, '10': 'userIds'},
  ],
};

/// Descriptor for `GatewayBatchGetUserConnectionReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gatewayBatchGetUserConnectionReqDescriptor = $convert.base64Decode('CiBHYXRld2F5QmF0Y2hHZXRVc2VyQ29ubmVjdGlvblJlcRIpCgZoZWFkZXIYASABKAsyES5wYi5SZXF1ZXN0SGVhZGVyUgZoZWFkZXISGAoHdXNlcklkcxgCIAMoCVIHdXNlcklkcw==');
@$core.Deprecated('Use gatewayBatchGetUserConnectionRespDescriptor instead')
const GatewayBatchGetUserConnectionResp$json = const {
  '1': 'GatewayBatchGetUserConnectionResp',
  '2': const [
    const {'1': 'header', '3': 1, '4': 1, '5': 11, '6': '.pb.ResponseHeader', '10': 'header'},
    const {'1': 'connections', '3': 2, '4': 3, '5': 11, '6': '.pb.LongConnection', '10': 'connections'},
  ],
};

/// Descriptor for `GatewayBatchGetUserConnectionResp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gatewayBatchGetUserConnectionRespDescriptor = $convert.base64Decode('CiFHYXRld2F5QmF0Y2hHZXRVc2VyQ29ubmVjdGlvblJlc3ASKgoGaGVhZGVyGAEgASgLMhIucGIuUmVzcG9uc2VIZWFkZXJSBmhlYWRlchI0Cgtjb25uZWN0aW9ucxgCIAMoCzISLnBiLkxvbmdDb25uZWN0aW9uUgtjb25uZWN0aW9ucw==');
@$core.Deprecated('Use gatewayGetConnectionFilterDescriptor instead')
const GatewayGetConnectionFilter$json = const {
  '1': 'GatewayGetConnectionFilter',
  '2': const [
    const {'1': 'userIds', '3': 1, '4': 3, '5': 9, '10': 'userIds'},
  ],
};

/// Descriptor for `GatewayGetConnectionFilter`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gatewayGetConnectionFilterDescriptor = $convert.base64Decode('ChpHYXRld2F5R2V0Q29ubmVjdGlvbkZpbHRlchIYCgd1c2VySWRzGAEgAygJUgd1c2VySWRz');
@$core.Deprecated('Use gatewayGetConnectionByFilterReqDescriptor instead')
const GatewayGetConnectionByFilterReq$json = const {
  '1': 'GatewayGetConnectionByFilterReq',
  '2': const [
    const {'1': 'header', '3': 1, '4': 1, '5': 11, '6': '.pb.RequestHeader', '10': 'header'},
    const {'1': 'filter', '3': 2, '4': 1, '5': 11, '6': '.pb.GatewayGetConnectionFilter', '10': 'filter'},
  ],
};

/// Descriptor for `GatewayGetConnectionByFilterReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gatewayGetConnectionByFilterReqDescriptor = $convert.base64Decode('Ch9HYXRld2F5R2V0Q29ubmVjdGlvbkJ5RmlsdGVyUmVxEikKBmhlYWRlchgBIAEoCzIRLnBiLlJlcXVlc3RIZWFkZXJSBmhlYWRlchI2CgZmaWx0ZXIYAiABKAsyHi5wYi5HYXRld2F5R2V0Q29ubmVjdGlvbkZpbHRlclIGZmlsdGVy');
@$core.Deprecated('Use gatewayGetConnectionByFilterRespDescriptor instead')
const GatewayGetConnectionByFilterResp$json = const {
  '1': 'GatewayGetConnectionByFilterResp',
  '2': const [
    const {'1': 'header', '3': 1, '4': 1, '5': 11, '6': '.pb.ResponseHeader', '10': 'header'},
    const {'1': 'connections', '3': 2, '4': 3, '5': 11, '6': '.pb.LongConnection', '10': 'connections'},
  ],
};

/// Descriptor for `GatewayGetConnectionByFilterResp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gatewayGetConnectionByFilterRespDescriptor = $convert.base64Decode('CiBHYXRld2F5R2V0Q29ubmVjdGlvbkJ5RmlsdGVyUmVzcBIqCgZoZWFkZXIYASABKAsyEi5wYi5SZXNwb25zZUhlYWRlclIGaGVhZGVyEjQKC2Nvbm5lY3Rpb25zGAIgAygLMhIucGIuTG9uZ0Nvbm5lY3Rpb25SC2Nvbm5lY3Rpb25z');
@$core.Deprecated('Use gatewayWriteDataToWsReqDescriptor instead')
const GatewayWriteDataToWsReq$json = const {
  '1': 'GatewayWriteDataToWsReq',
  '2': const [
    const {'1': 'header', '3': 1, '4': 1, '5': 11, '6': '.pb.RequestHeader', '10': 'header'},
    const {'1': 'filter', '3': 2, '4': 1, '5': 11, '6': '.pb.GatewayGetConnectionFilter', '10': 'filter'},
    const {'1': 'data', '3': 3, '4': 1, '5': 11, '6': '.pb.GatewayWriteDataContent', '10': 'data'},
  ],
};

/// Descriptor for `GatewayWriteDataToWsReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gatewayWriteDataToWsReqDescriptor = $convert.base64Decode('ChdHYXRld2F5V3JpdGVEYXRhVG9Xc1JlcRIpCgZoZWFkZXIYASABKAsyES5wYi5SZXF1ZXN0SGVhZGVyUgZoZWFkZXISNgoGZmlsdGVyGAIgASgLMh4ucGIuR2F0ZXdheUdldENvbm5lY3Rpb25GaWx0ZXJSBmZpbHRlchIvCgRkYXRhGAMgASgLMhsucGIuR2F0ZXdheVdyaXRlRGF0YUNvbnRlbnRSBGRhdGE=');
@$core.Deprecated('Use gatewayWriteDataToWsRespDescriptor instead')
const GatewayWriteDataToWsResp$json = const {
  '1': 'GatewayWriteDataToWsResp',
  '2': const [
    const {'1': 'header', '3': 1, '4': 1, '5': 11, '6': '.pb.ResponseHeader', '10': 'header'},
    const {'1': 'successConnections', '3': 2, '4': 3, '5': 11, '6': '.pb.LongConnection', '10': 'successConnections'},
  ],
};

/// Descriptor for `GatewayWriteDataToWsResp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gatewayWriteDataToWsRespDescriptor = $convert.base64Decode('ChhHYXRld2F5V3JpdGVEYXRhVG9Xc1Jlc3ASKgoGaGVhZGVyGAEgASgLMhIucGIuUmVzcG9uc2VIZWFkZXJSBmhlYWRlchJCChJzdWNjZXNzQ29ubmVjdGlvbnMYAiADKAsyEi5wYi5Mb25nQ29ubmVjdGlvblISc3VjY2Vzc0Nvbm5lY3Rpb25z');
@$core.Deprecated('Use gatewayWriteDataToWsWrapperReqDescriptor instead')
const GatewayWriteDataToWsWrapperReq$json = const {
  '1': 'GatewayWriteDataToWsWrapperReq',
  '2': const [
    const {'1': 'header', '3': 1, '4': 1, '5': 11, '6': '.pb.RequestHeader', '10': 'header'},
    const {'1': 'filter', '3': 2, '4': 1, '5': 11, '6': '.pb.GatewayGetConnectionFilter', '10': 'filter'},
    const {'1': 'data', '3': 3, '4': 1, '5': 11, '6': '.pb.GatewayWriteDataContent', '10': 'data'},
  ],
};

/// Descriptor for `GatewayWriteDataToWsWrapperReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gatewayWriteDataToWsWrapperReqDescriptor = $convert.base64Decode('Ch5HYXRld2F5V3JpdGVEYXRhVG9Xc1dyYXBwZXJSZXESKQoGaGVhZGVyGAEgASgLMhEucGIuUmVxdWVzdEhlYWRlclIGaGVhZGVyEjYKBmZpbHRlchgCIAEoCzIeLnBiLkdhdGV3YXlHZXRDb25uZWN0aW9uRmlsdGVyUgZmaWx0ZXISLwoEZGF0YRgDIAEoCzIbLnBiLkdhdGV3YXlXcml0ZURhdGFDb250ZW50UgRkYXRh');
@$core.Deprecated('Use gatewayKickWsReqDescriptor instead')
const GatewayKickWsReq$json = const {
  '1': 'GatewayKickWsReq',
  '2': const [
    const {'1': 'header', '3': 1, '4': 1, '5': 11, '6': '.pb.RequestHeader', '10': 'header'},
    const {'1': 'filter', '3': 2, '4': 1, '5': 11, '6': '.pb.GatewayGetConnectionFilter', '10': 'filter'},
    const {'1': 'closeCode', '3': 3, '4': 1, '5': 14, '6': '.pb.WebsocketCustomCloseCode', '10': 'closeCode'},
    const {'1': 'closeReason', '3': 4, '4': 1, '5': 9, '10': 'closeReason'},
  ],
};

/// Descriptor for `GatewayKickWsReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gatewayKickWsReqDescriptor = $convert.base64Decode('ChBHYXRld2F5S2lja1dzUmVxEikKBmhlYWRlchgBIAEoCzIRLnBiLlJlcXVlc3RIZWFkZXJSBmhlYWRlchI2CgZmaWx0ZXIYAiABKAsyHi5wYi5HYXRld2F5R2V0Q29ubmVjdGlvbkZpbHRlclIGZmlsdGVyEjoKCWNsb3NlQ29kZRgDIAEoDjIcLnBiLldlYnNvY2tldEN1c3RvbUNsb3NlQ29kZVIJY2xvc2VDb2RlEiAKC2Nsb3NlUmVhc29uGAQgASgJUgtjbG9zZVJlYXNvbg==');
@$core.Deprecated('Use gatewayKickWsRespDescriptor instead')
const GatewayKickWsResp$json = const {
  '1': 'GatewayKickWsResp',
  '2': const [
    const {'1': 'header', '3': 1, '4': 1, '5': 11, '6': '.pb.ResponseHeader', '10': 'header'},
    const {'1': 'successConnections', '3': 2, '4': 3, '5': 11, '6': '.pb.LongConnection', '10': 'successConnections'},
  ],
};

/// Descriptor for `GatewayKickWsResp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gatewayKickWsRespDescriptor = $convert.base64Decode('ChFHYXRld2F5S2lja1dzUmVzcBIqCgZoZWFkZXIYASABKAsyEi5wYi5SZXNwb25zZUhlYWRlclIGaGVhZGVyEkIKEnN1Y2Nlc3NDb25uZWN0aW9ucxgCIAMoCzISLnBiLkxvbmdDb25uZWN0aW9uUhJzdWNjZXNzQ29ubmVjdGlvbnM=');
@$core.Deprecated('Use gatewayKeepAliveReqDescriptor instead')
const GatewayKeepAliveReq$json = const {
  '1': 'GatewayKeepAliveReq',
  '2': const [
    const {'1': 'header', '3': 1, '4': 1, '5': 11, '6': '.pb.RequestHeader', '10': 'header'},
  ],
};

/// Descriptor for `GatewayKeepAliveReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gatewayKeepAliveReqDescriptor = $convert.base64Decode('ChNHYXRld2F5S2VlcEFsaXZlUmVxEikKBmhlYWRlchgBIAEoCzIRLnBiLlJlcXVlc3RIZWFkZXJSBmhlYWRlcg==');
@$core.Deprecated('Use gatewayKeepAliveRespDescriptor instead')
const GatewayKeepAliveResp$json = const {
  '1': 'GatewayKeepAliveResp',
  '2': const [
    const {'1': 'header', '3': 1, '4': 1, '5': 11, '6': '.pb.ResponseHeader', '10': 'header'},
  ],
};

/// Descriptor for `GatewayKeepAliveResp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gatewayKeepAliveRespDescriptor = $convert.base64Decode('ChRHYXRld2F5S2VlcEFsaXZlUmVzcBIqCgZoZWFkZXIYASABKAsyEi5wYi5SZXNwb25zZUhlYWRlclIGaGVhZGVy');
@$core.Deprecated('Use verifyConnectionReqDescriptor instead')
const VerifyConnectionReq$json = const {
  '1': 'VerifyConnectionReq',
  '2': const [
    const {'1': 'header', '3': 1, '4': 1, '5': 11, '6': '.pb.RequestHeader', '10': 'header'},
    const {'1': 'publicKey', '3': 2, '4': 1, '5': 12, '10': 'publicKey'},
  ],
};

/// Descriptor for `VerifyConnectionReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List verifyConnectionReqDescriptor = $convert.base64Decode('ChNWZXJpZnlDb25uZWN0aW9uUmVxEikKBmhlYWRlchgBIAEoCzIRLnBiLlJlcXVlc3RIZWFkZXJSBmhlYWRlchIcCglwdWJsaWNLZXkYAiABKAxSCXB1YmxpY0tleQ==');
@$core.Deprecated('Use verifyConnectionRespDescriptor instead')
const VerifyConnectionResp$json = const {
  '1': 'VerifyConnectionResp',
  '2': const [
    const {'1': 'header', '3': 1, '4': 1, '5': 11, '6': '.pb.ResponseHeader', '10': 'header'},
    const {'1': 'publicKey', '3': 2, '4': 1, '5': 12, '10': 'publicKey'},
  ],
};

/// Descriptor for `VerifyConnectionResp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List verifyConnectionRespDescriptor = $convert.base64Decode('ChRWZXJpZnlDb25uZWN0aW9uUmVzcBIqCgZoZWFkZXIYASABKAsyEi5wYi5SZXNwb25zZUhlYWRlclIGaGVhZGVyEhwKCXB1YmxpY0tleRgCIAEoDFIJcHVibGljS2V5');
@$core.Deprecated('Use authenticationConnectionReqDescriptor instead')
const AuthenticationConnectionReq$json = const {
  '1': 'AuthenticationConnectionReq',
  '2': const [
    const {'1': 'header', '3': 1, '4': 1, '5': 11, '6': '.pb.RequestHeader', '10': 'header'},
    const {'1': 'userId', '3': 2, '4': 1, '5': 9, '10': 'userId'},
    const {'1': 'token', '3': 3, '4': 1, '5': 9, '10': 'token'},
  ],
};

/// Descriptor for `AuthenticationConnectionReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List authenticationConnectionReqDescriptor = $convert.base64Decode('ChtBdXRoZW50aWNhdGlvbkNvbm5lY3Rpb25SZXESKQoGaGVhZGVyGAEgASgLMhEucGIuUmVxdWVzdEhlYWRlclIGaGVhZGVyEhYKBnVzZXJJZBgCIAEoCVIGdXNlcklkEhQKBXRva2VuGAMgASgJUgV0b2tlbg==');
@$core.Deprecated('Use authenticationConnectionRespDescriptor instead')
const AuthenticationConnectionResp$json = const {
  '1': 'AuthenticationConnectionResp',
  '2': const [
    const {'1': 'header', '3': 1, '4': 1, '5': 11, '6': '.pb.ResponseHeader', '10': 'header'},
    const {'1': 'success', '3': 2, '4': 1, '5': 8, '10': 'success'},
  ],
};

/// Descriptor for `AuthenticationConnectionResp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List authenticationConnectionRespDescriptor = $convert.base64Decode('ChxBdXRoZW50aWNhdGlvbkNvbm5lY3Rpb25SZXNwEioKBmhlYWRlchgBIAEoCzISLnBiLlJlc3BvbnNlSGVhZGVyUgZoZWFkZXISGAoHc3VjY2VzcxgCIAEoCFIHc3VjY2Vzcw==');
const $core.Map<$core.String, $core.dynamic> gatewayServiceBase$json = const {
  '1': 'gatewayService',
  '2': const [
    const {'1': 'GatewayGetUserConnection', '2': '.pb.GatewayGetUserConnectionReq', '3': '.pb.GatewayGetUserConnectionResp'},
    const {'1': 'GatewayBatchGetUserConnection', '2': '.pb.GatewayBatchGetUserConnectionReq', '3': '.pb.GatewayBatchGetUserConnectionResp'},
    const {'1': 'GatewayGetConnectionByFilter', '2': '.pb.GatewayGetConnectionByFilterReq', '3': '.pb.GatewayGetConnectionByFilterResp'},
    const {'1': 'GatewayWriteDataToWs', '2': '.pb.GatewayWriteDataToWsReq', '3': '.pb.GatewayWriteDataToWsResp'},
    const {'1': 'GatewayWriteDataToWsWrapper', '2': '.pb.GatewayWriteDataToWsWrapperReq', '3': '.pb.GatewayWriteDataToWsResp'},
    const {'1': 'GatewayKickWs', '2': '.pb.GatewayKickWsReq', '3': '.pb.GatewayKickWsResp'},
    const {'1': 'GatewayKeepAlive', '2': '.pb.GatewayKeepAliveReq', '3': '.pb.GatewayKeepAliveResp'},
    const {'1': 'VerifyConnection', '2': '.pb.VerifyConnectionReq', '3': '.pb.VerifyConnectionResp'},
    const {'1': 'AuthenticationConnection', '2': '.pb.AuthenticationConnectionReq', '3': '.pb.AuthenticationConnectionResp'},
  ],
};

@$core.Deprecated('Use gatewayServiceDescriptor instead')
const $core.Map<$core.String, $core.Map<$core.String, $core.dynamic>> gatewayServiceBase$messageJson = const {
  '.pb.GatewayGetUserConnectionReq': GatewayGetUserConnectionReq$json,
  '.pb.RequestHeader': $0.RequestHeader$json,
  '.pb.GatewayGetUserConnectionResp': GatewayGetUserConnectionResp$json,
  '.pb.ResponseHeader': $0.ResponseHeader$json,
  '.pb.LongConnection': LongConnection$json,
  '.pb.GatewayBatchGetUserConnectionReq': GatewayBatchGetUserConnectionReq$json,
  '.pb.GatewayBatchGetUserConnectionResp': GatewayBatchGetUserConnectionResp$json,
  '.pb.GatewayGetConnectionByFilterReq': GatewayGetConnectionByFilterReq$json,
  '.pb.GatewayGetConnectionFilter': GatewayGetConnectionFilter$json,
  '.pb.GatewayGetConnectionByFilterResp': GatewayGetConnectionByFilterResp$json,
  '.pb.GatewayWriteDataToWsReq': GatewayWriteDataToWsReq$json,
  '.pb.GatewayWriteDataContent': GatewayWriteDataContent$json,
  '.pb.GatewayApiResponse': GatewayApiResponse$json,
  '.pb.Message': $0.Message$json,
  '.pb.Message.Sender': $0.Message_Sender$json,
  '.pb.Message.Option': $0.Message_Option$json,
  '.pb.Message.ExtraMapEntry': $0.Message_ExtraMapEntry$json,
  '.pb.Notice': $0.Notice$json,
  '.pb.GatewayWriteDataToWsResp': GatewayWriteDataToWsResp$json,
  '.pb.GatewayWriteDataToWsWrapperReq': GatewayWriteDataToWsWrapperReq$json,
  '.pb.GatewayKickWsReq': GatewayKickWsReq$json,
  '.pb.GatewayKickWsResp': GatewayKickWsResp$json,
  '.pb.GatewayKeepAliveReq': GatewayKeepAliveReq$json,
  '.pb.GatewayKeepAliveResp': GatewayKeepAliveResp$json,
  '.pb.VerifyConnectionReq': VerifyConnectionReq$json,
  '.pb.VerifyConnectionResp': VerifyConnectionResp$json,
  '.pb.AuthenticationConnectionReq': AuthenticationConnectionReq$json,
  '.pb.AuthenticationConnectionResp': AuthenticationConnectionResp$json,
};

/// Descriptor for `gatewayService`. Decode as a `google.protobuf.ServiceDescriptorProto`.
final $typed_data.Uint8List gatewayServiceDescriptor = $convert.base64Decode('Cg5nYXRld2F5U2VydmljZRJdChhHYXRld2F5R2V0VXNlckNvbm5lY3Rpb24SHy5wYi5HYXRld2F5R2V0VXNlckNvbm5lY3Rpb25SZXEaIC5wYi5HYXRld2F5R2V0VXNlckNvbm5lY3Rpb25SZXNwEmwKHUdhdGV3YXlCYXRjaEdldFVzZXJDb25uZWN0aW9uEiQucGIuR2F0ZXdheUJhdGNoR2V0VXNlckNvbm5lY3Rpb25SZXEaJS5wYi5HYXRld2F5QmF0Y2hHZXRVc2VyQ29ubmVjdGlvblJlc3ASaQocR2F0ZXdheUdldENvbm5lY3Rpb25CeUZpbHRlchIjLnBiLkdhdGV3YXlHZXRDb25uZWN0aW9uQnlGaWx0ZXJSZXEaJC5wYi5HYXRld2F5R2V0Q29ubmVjdGlvbkJ5RmlsdGVyUmVzcBJRChRHYXRld2F5V3JpdGVEYXRhVG9XcxIbLnBiLkdhdGV3YXlXcml0ZURhdGFUb1dzUmVxGhwucGIuR2F0ZXdheVdyaXRlRGF0YVRvV3NSZXNwEl8KG0dhdGV3YXlXcml0ZURhdGFUb1dzV3JhcHBlchIiLnBiLkdhdGV3YXlXcml0ZURhdGFUb1dzV3JhcHBlclJlcRocLnBiLkdhdGV3YXlXcml0ZURhdGFUb1dzUmVzcBI8Cg1HYXRld2F5S2lja1dzEhQucGIuR2F0ZXdheUtpY2tXc1JlcRoVLnBiLkdhdGV3YXlLaWNrV3NSZXNwEkUKEEdhdGV3YXlLZWVwQWxpdmUSFy5wYi5HYXRld2F5S2VlcEFsaXZlUmVxGhgucGIuR2F0ZXdheUtlZXBBbGl2ZVJlc3ASRQoQVmVyaWZ5Q29ubmVjdGlvbhIXLnBiLlZlcmlmeUNvbm5lY3Rpb25SZXEaGC5wYi5WZXJpZnlDb25uZWN0aW9uUmVzcBJdChhBdXRoZW50aWNhdGlvbkNvbm5lY3Rpb24SHy5wYi5BdXRoZW50aWNhdGlvbkNvbm5lY3Rpb25SZXEaIC5wYi5BdXRoZW50aWNhdGlvbkNvbm5lY3Rpb25SZXNw');
