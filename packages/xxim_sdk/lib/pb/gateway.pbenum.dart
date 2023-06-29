///
//  Generated code. Do not modify.
//  source: gateway.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

// ignore_for_file: UNDEFINED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class GatewayWriteDataType extends $pb.ProtobufEnum {
  static const GatewayWriteDataType Response = GatewayWriteDataType._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Response');
  static const GatewayWriteDataType PushMessage = GatewayWriteDataType._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'PushMessage');
  static const GatewayWriteDataType PushNotice = GatewayWriteDataType._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'PushNotice');

  static const $core.List<GatewayWriteDataType> values = <GatewayWriteDataType> [
    Response,
    PushMessage,
    PushNotice,
  ];

  static final $core.Map<$core.int, GatewayWriteDataType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static GatewayWriteDataType? valueOf($core.int value) => _byValue[value];

  const GatewayWriteDataType._($core.int v, $core.String n) : super(v, n);
}

