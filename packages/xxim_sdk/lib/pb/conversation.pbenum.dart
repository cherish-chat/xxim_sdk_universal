///
//  Generated code. Do not modify.
//  source: conversation.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

// ignore_for_file: UNDEFINED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class FriendApplyStatus extends $pb.ProtobufEnum {
  static const FriendApplyStatus Applying = FriendApplyStatus._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Applying');
  static const FriendApplyStatus Accepted = FriendApplyStatus._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Accepted');
  static const FriendApplyStatus Rejected = FriendApplyStatus._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Rejected');

  static const $core.List<FriendApplyStatus> values = <FriendApplyStatus> [
    Applying,
    Accepted,
    Rejected,
  ];

  static final $core.Map<$core.int, FriendApplyStatus> _byValue = $pb.ProtobufEnum.initByValue(values);
  static FriendApplyStatus? valueOf($core.int value) => _byValue[value];

  const FriendApplyStatus._($core.int v, $core.String n) : super(v, n);
}

class ListJoinedConversationsReq_Filter_SettingKV_Operator extends $pb.ProtobufEnum {
  static const ListJoinedConversationsReq_Filter_SettingKV_Operator Equal = ListJoinedConversationsReq_Filter_SettingKV_Operator._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Equal');
  static const ListJoinedConversationsReq_Filter_SettingKV_Operator NotEqual = ListJoinedConversationsReq_Filter_SettingKV_Operator._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'NotEqual');

  static const $core.List<ListJoinedConversationsReq_Filter_SettingKV_Operator> values = <ListJoinedConversationsReq_Filter_SettingKV_Operator> [
    Equal,
    NotEqual,
  ];

  static final $core.Map<$core.int, ListJoinedConversationsReq_Filter_SettingKV_Operator> _byValue = $pb.ProtobufEnum.initByValue(values);
  static ListJoinedConversationsReq_Filter_SettingKV_Operator? valueOf($core.int value) => _byValue[value];

  const ListJoinedConversationsReq_Filter_SettingKV_Operator._($core.int v, $core.String n) : super(v, n);
}

