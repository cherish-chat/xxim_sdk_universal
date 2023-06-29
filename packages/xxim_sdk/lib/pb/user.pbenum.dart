///
//  Generated code. Do not modify.
//  source: user.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

// ignore_for_file: UNDEFINED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class UpdateUserCountMapReq_CountType extends $pb.ProtobufEnum {
  static const UpdateUserCountMapReq_CountType friendCount = UpdateUserCountMapReq_CountType._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'friendCount');
  static const UpdateUserCountMapReq_CountType joinGroupCount = UpdateUserCountMapReq_CountType._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'joinGroupCount');
  static const UpdateUserCountMapReq_CountType createGroupCount = UpdateUserCountMapReq_CountType._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'createGroupCount');

  static const $core.List<UpdateUserCountMapReq_CountType> values = <UpdateUserCountMapReq_CountType> [
    friendCount,
    joinGroupCount,
    createGroupCount,
  ];

  static final $core.Map<$core.int, UpdateUserCountMapReq_CountType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static UpdateUserCountMapReq_CountType? valueOf($core.int value) => _byValue[value];

  const UpdateUserCountMapReq_CountType._($core.int v, $core.String n) : super(v, n);
}

class UpdateUserCountMapReq_Algorithm extends $pb.ProtobufEnum {
  static const UpdateUserCountMapReq_Algorithm add = UpdateUserCountMapReq_Algorithm._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'add');
  static const UpdateUserCountMapReq_Algorithm sub = UpdateUserCountMapReq_Algorithm._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'sub');
  static const UpdateUserCountMapReq_Algorithm fixed = UpdateUserCountMapReq_Algorithm._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'fixed');

  static const $core.List<UpdateUserCountMapReq_Algorithm> values = <UpdateUserCountMapReq_Algorithm> [
    add,
    sub,
    fixed,
  ];

  static final $core.Map<$core.int, UpdateUserCountMapReq_Algorithm> _byValue = $pb.ProtobufEnum.initByValue(values);
  static UpdateUserCountMapReq_Algorithm? valueOf($core.int value) => _byValue[value];

  const UpdateUserCountMapReq_Algorithm._($core.int v, $core.String n) : super(v, n);
}

