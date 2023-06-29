///
//  Generated code. Do not modify.
//  source: world.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
import 'common.pbjson.dart' as $0;

@$core.Deprecated('Use worldPostSubmitReqDescriptor instead')
const WorldPostSubmitReq$json = const {
  '1': 'WorldPostSubmitReq',
  '2': const [
    const {'1': 'header', '3': 1, '4': 1, '5': 11, '6': '.pb.RequestHeader', '10': 'header'},
  ],
};

/// Descriptor for `WorldPostSubmitReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List worldPostSubmitReqDescriptor = $convert.base64Decode('ChJXb3JsZFBvc3RTdWJtaXRSZXESKQoGaGVhZGVyGAEgASgLMhEucGIuUmVxdWVzdEhlYWRlclIGaGVhZGVy');
@$core.Deprecated('Use worldPostSubmitRespDescriptor instead')
const WorldPostSubmitResp$json = const {
  '1': 'WorldPostSubmitResp',
  '2': const [
    const {'1': 'header', '3': 1, '4': 1, '5': 11, '6': '.pb.ResponseHeader', '10': 'header'},
  ],
};

/// Descriptor for `WorldPostSubmitResp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List worldPostSubmitRespDescriptor = $convert.base64Decode('ChNXb3JsZFBvc3RTdWJtaXRSZXNwEioKBmhlYWRlchgBIAEoCzISLnBiLlJlc3BvbnNlSGVhZGVyUgZoZWFkZXI=');
const $core.Map<$core.String, $core.dynamic> worldServiceBase$json = const {
  '1': 'worldService',
  '2': const [
    const {'1': 'WorldPostSubmit', '2': '.pb.WorldPostSubmitReq', '3': '.pb.WorldPostSubmitResp'},
  ],
};

@$core.Deprecated('Use worldServiceDescriptor instead')
const $core.Map<$core.String, $core.Map<$core.String, $core.dynamic>> worldServiceBase$messageJson = const {
  '.pb.WorldPostSubmitReq': WorldPostSubmitReq$json,
  '.pb.RequestHeader': $0.RequestHeader$json,
  '.pb.WorldPostSubmitResp': WorldPostSubmitResp$json,
  '.pb.ResponseHeader': $0.ResponseHeader$json,
};

/// Descriptor for `worldService`. Decode as a `google.protobuf.ServiceDescriptorProto`.
final $typed_data.Uint8List worldServiceDescriptor = $convert.base64Decode('Cgx3b3JsZFNlcnZpY2USQgoPV29ybGRQb3N0U3VibWl0EhYucGIuV29ybGRQb3N0U3VibWl0UmVxGhcucGIuV29ybGRQb3N0U3VibWl0UmVzcA==');
