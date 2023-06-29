///
//  Generated code. Do not modify.
//  source: message.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

// ignore_for_file: UNDEFINED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class MessageContentText_Item_Type extends $pb.ProtobufEnum {
  static const MessageContentText_Item_Type TEXT = MessageContentText_Item_Type._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'TEXT');
  static const MessageContentText_Item_Type IMAGE = MessageContentText_Item_Type._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'IMAGE');
  static const MessageContentText_Item_Type AT = MessageContentText_Item_Type._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'AT');

  static const $core.List<MessageContentText_Item_Type> values = <MessageContentText_Item_Type> [
    TEXT,
    IMAGE,
    AT,
  ];

  static final $core.Map<$core.int, MessageContentText_Item_Type> _byValue = $pb.ProtobufEnum.initByValue(values);
  static MessageContentText_Item_Type? valueOf($core.int value) => _byValue[value];

  const MessageContentText_Item_Type._($core.int v, $core.String n) : super(v, n);
}

