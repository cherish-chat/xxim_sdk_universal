///
//  Generated code. Do not modify.
//  source: user.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
import 'common.pbjson.dart' as $0;

@$core.Deprecated('Use userRegisterReqDescriptor instead')
const UserRegisterReq$json = const {
  '1': 'UserRegisterReq',
  '2': const [
    const {'1': 'header', '3': 1, '4': 1, '5': 11, '6': '.pb.RequestHeader', '10': 'header'},
    const {'1': 'userId', '3': 2, '4': 1, '5': 9, '10': 'userId'},
    const {'1': 'registerTime', '3': 3, '4': 1, '5': 3, '9': 0, '10': 'registerTime', '17': true},
    const {'1': 'nickname', '3': 4, '4': 1, '5': 9, '9': 1, '10': 'nickname', '17': true},
    const {'1': 'avatar', '3': 5, '4': 1, '5': 9, '9': 2, '10': 'avatar', '17': true},
    const {'1': 'accountMap', '3': 6, '4': 3, '5': 11, '6': '.pb.UserRegisterReq.AccountMapEntry', '10': 'accountMap'},
    const {'1': 'profileMap', '3': 7, '4': 3, '5': 11, '6': '.pb.UserRegisterReq.ProfileMapEntry', '10': 'profileMap'},
    const {'1': 'extraMap', '3': 8, '4': 3, '5': 11, '6': '.pb.UserRegisterReq.ExtraMapEntry', '10': 'extraMap'},
    const {'1': 'verifyMap', '3': 9, '4': 3, '5': 11, '6': '.pb.UserRegisterReq.VerifyMapEntry', '10': 'verifyMap'},
  ],
  '3': const [UserRegisterReq_AccountMapEntry$json, UserRegisterReq_ProfileMapEntry$json, UserRegisterReq_ExtraMapEntry$json, UserRegisterReq_VerifyMapEntry$json],
  '8': const [
    const {'1': '_registerTime'},
    const {'1': '_nickname'},
    const {'1': '_avatar'},
  ],
};

@$core.Deprecated('Use userRegisterReqDescriptor instead')
const UserRegisterReq_AccountMapEntry$json = const {
  '1': 'AccountMapEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': const {'7': true},
};

@$core.Deprecated('Use userRegisterReqDescriptor instead')
const UserRegisterReq_ProfileMapEntry$json = const {
  '1': 'ProfileMapEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': const {'7': true},
};

@$core.Deprecated('Use userRegisterReqDescriptor instead')
const UserRegisterReq_ExtraMapEntry$json = const {
  '1': 'ExtraMapEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': const {'7': true},
};

@$core.Deprecated('Use userRegisterReqDescriptor instead')
const UserRegisterReq_VerifyMapEntry$json = const {
  '1': 'VerifyMapEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': const {'7': true},
};

/// Descriptor for `UserRegisterReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userRegisterReqDescriptor = $convert.base64Decode('Cg9Vc2VyUmVnaXN0ZXJSZXESKQoGaGVhZGVyGAEgASgLMhEucGIuUmVxdWVzdEhlYWRlclIGaGVhZGVyEhYKBnVzZXJJZBgCIAEoCVIGdXNlcklkEicKDHJlZ2lzdGVyVGltZRgDIAEoA0gAUgxyZWdpc3RlclRpbWWIAQESHwoIbmlja25hbWUYBCABKAlIAVIIbmlja25hbWWIAQESGwoGYXZhdGFyGAUgASgJSAJSBmF2YXRhcogBARJDCgphY2NvdW50TWFwGAYgAygLMiMucGIuVXNlclJlZ2lzdGVyUmVxLkFjY291bnRNYXBFbnRyeVIKYWNjb3VudE1hcBJDCgpwcm9maWxlTWFwGAcgAygLMiMucGIuVXNlclJlZ2lzdGVyUmVxLlByb2ZpbGVNYXBFbnRyeVIKcHJvZmlsZU1hcBI9CghleHRyYU1hcBgIIAMoCzIhLnBiLlVzZXJSZWdpc3RlclJlcS5FeHRyYU1hcEVudHJ5UghleHRyYU1hcBJACgl2ZXJpZnlNYXAYCSADKAsyIi5wYi5Vc2VyUmVnaXN0ZXJSZXEuVmVyaWZ5TWFwRW50cnlSCXZlcmlmeU1hcBo9Cg9BY2NvdW50TWFwRW50cnkSEAoDa2V5GAEgASgJUgNrZXkSFAoFdmFsdWUYAiABKAlSBXZhbHVlOgI4ARo9Cg9Qcm9maWxlTWFwRW50cnkSEAoDa2V5GAEgASgJUgNrZXkSFAoFdmFsdWUYAiABKAlSBXZhbHVlOgI4ARo7Cg1FeHRyYU1hcEVudHJ5EhAKA2tleRgBIAEoCVIDa2V5EhQKBXZhbHVlGAIgASgJUgV2YWx1ZToCOAEaPAoOVmVyaWZ5TWFwRW50cnkSEAoDa2V5GAEgASgJUgNrZXkSFAoFdmFsdWUYAiABKAlSBXZhbHVlOgI4AUIPCg1fcmVnaXN0ZXJUaW1lQgsKCV9uaWNrbmFtZUIJCgdfYXZhdGFy');
@$core.Deprecated('Use userRegisterRespDescriptor instead')
const UserRegisterResp$json = const {
  '1': 'UserRegisterResp',
  '2': const [
    const {'1': 'header', '3': 1, '4': 1, '5': 11, '6': '.pb.ResponseHeader', '10': 'header'},
  ],
};

/// Descriptor for `UserRegisterResp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userRegisterRespDescriptor = $convert.base64Decode('ChBVc2VyUmVnaXN0ZXJSZXNwEioKBmhlYWRlchgBIAEoCzISLnBiLlJlc3BvbnNlSGVhZGVyUgZoZWFkZXI=');
@$core.Deprecated('Use userDestroyReqDescriptor instead')
const UserDestroyReq$json = const {
  '1': 'UserDestroyReq',
  '2': const [
    const {'1': 'header', '3': 1, '4': 1, '5': 11, '6': '.pb.RequestHeader', '10': 'header'},
    const {'1': 'userId', '3': 2, '4': 1, '5': 9, '10': 'userId'},
  ],
};

/// Descriptor for `UserDestroyReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userDestroyReqDescriptor = $convert.base64Decode('Cg5Vc2VyRGVzdHJveVJlcRIpCgZoZWFkZXIYASABKAsyES5wYi5SZXF1ZXN0SGVhZGVyUgZoZWFkZXISFgoGdXNlcklkGAIgASgJUgZ1c2VySWQ=');
@$core.Deprecated('Use userDestroyRespDescriptor instead')
const UserDestroyResp$json = const {
  '1': 'UserDestroyResp',
  '2': const [
    const {'1': 'header', '3': 1, '4': 1, '5': 11, '6': '.pb.ResponseHeader', '10': 'header'},
  ],
};

/// Descriptor for `UserDestroyResp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userDestroyRespDescriptor = $convert.base64Decode('Cg9Vc2VyRGVzdHJveVJlc3ASKgoGaGVhZGVyGAEgASgLMhIucGIuUmVzcG9uc2VIZWFkZXJSBmhlYWRlcg==');
@$core.Deprecated('Use userAccessTokenReqDescriptor instead')
const UserAccessTokenReq$json = const {
  '1': 'UserAccessTokenReq',
  '2': const [
    const {'1': 'header', '3': 1, '4': 1, '5': 11, '6': '.pb.RequestHeader', '10': 'header'},
    const {'1': 'accountMap', '3': 2, '4': 3, '5': 11, '6': '.pb.UserAccessTokenReq.AccountMapEntry', '10': 'accountMap'},
    const {'1': 'verifyMap', '3': 3, '4': 3, '5': 11, '6': '.pb.UserAccessTokenReq.VerifyMapEntry', '10': 'verifyMap'},
    const {'1': 'expireTime', '3': 4, '4': 1, '5': 3, '9': 0, '10': 'expireTime', '17': true},
  ],
  '3': const [UserAccessTokenReq_AccountMapEntry$json, UserAccessTokenReq_VerifyMapEntry$json],
  '8': const [
    const {'1': '_expireTime'},
  ],
};

@$core.Deprecated('Use userAccessTokenReqDescriptor instead')
const UserAccessTokenReq_AccountMapEntry$json = const {
  '1': 'AccountMapEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': const {'7': true},
};

@$core.Deprecated('Use userAccessTokenReqDescriptor instead')
const UserAccessTokenReq_VerifyMapEntry$json = const {
  '1': 'VerifyMapEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': const {'7': true},
};

/// Descriptor for `UserAccessTokenReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userAccessTokenReqDescriptor = $convert.base64Decode('ChJVc2VyQWNjZXNzVG9rZW5SZXESKQoGaGVhZGVyGAEgASgLMhEucGIuUmVxdWVzdEhlYWRlclIGaGVhZGVyEkYKCmFjY291bnRNYXAYAiADKAsyJi5wYi5Vc2VyQWNjZXNzVG9rZW5SZXEuQWNjb3VudE1hcEVudHJ5UgphY2NvdW50TWFwEkMKCXZlcmlmeU1hcBgDIAMoCzIlLnBiLlVzZXJBY2Nlc3NUb2tlblJlcS5WZXJpZnlNYXBFbnRyeVIJdmVyaWZ5TWFwEiMKCmV4cGlyZVRpbWUYBCABKANIAFIKZXhwaXJlVGltZYgBARo9Cg9BY2NvdW50TWFwRW50cnkSEAoDa2V5GAEgASgJUgNrZXkSFAoFdmFsdWUYAiABKAlSBXZhbHVlOgI4ARo8Cg5WZXJpZnlNYXBFbnRyeRIQCgNrZXkYASABKAlSA2tleRIUCgV2YWx1ZRgCIAEoCVIFdmFsdWU6AjgBQg0KC19leHBpcmVUaW1l');
@$core.Deprecated('Use userAccessTokenRespDescriptor instead')
const UserAccessTokenResp$json = const {
  '1': 'UserAccessTokenResp',
  '2': const [
    const {'1': 'header', '3': 1, '4': 1, '5': 11, '6': '.pb.ResponseHeader', '10': 'header'},
    const {'1': 'userId', '3': 2, '4': 1, '5': 9, '10': 'userId'},
    const {'1': 'accessToken', '3': 3, '4': 1, '5': 9, '10': 'accessToken'},
  ],
};

/// Descriptor for `UserAccessTokenResp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userAccessTokenRespDescriptor = $convert.base64Decode('ChNVc2VyQWNjZXNzVG9rZW5SZXNwEioKBmhlYWRlchgBIAEoCzISLnBiLlJlc3BvbnNlSGVhZGVyUgZoZWFkZXISFgoGdXNlcklkGAIgASgJUgZ1c2VySWQSIAoLYWNjZXNzVG9rZW4YAyABKAlSC2FjY2Vzc1Rva2Vu');
@$core.Deprecated('Use refreshUserAccessTokenReqDescriptor instead')
const RefreshUserAccessTokenReq$json = const {
  '1': 'RefreshUserAccessTokenReq',
  '2': const [
    const {'1': 'header', '3': 1, '4': 1, '5': 11, '6': '.pb.RequestHeader', '10': 'header'},
    const {'1': 'userId', '3': 2, '4': 1, '5': 9, '10': 'userId'},
  ],
};

/// Descriptor for `RefreshUserAccessTokenReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List refreshUserAccessTokenReqDescriptor = $convert.base64Decode('ChlSZWZyZXNoVXNlckFjY2Vzc1Rva2VuUmVxEikKBmhlYWRlchgBIAEoCzIRLnBiLlJlcXVlc3RIZWFkZXJSBmhlYWRlchIWCgZ1c2VySWQYAiABKAlSBnVzZXJJZA==');
@$core.Deprecated('Use refreshUserAccessTokenRespDescriptor instead')
const RefreshUserAccessTokenResp$json = const {
  '1': 'RefreshUserAccessTokenResp',
  '2': const [
    const {'1': 'header', '3': 1, '4': 1, '5': 11, '6': '.pb.ResponseHeader', '10': 'header'},
  ],
};

/// Descriptor for `RefreshUserAccessTokenResp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List refreshUserAccessTokenRespDescriptor = $convert.base64Decode('ChpSZWZyZXNoVXNlckFjY2Vzc1Rva2VuUmVzcBIqCgZoZWFkZXIYASABKAsyEi5wYi5SZXNwb25zZUhlYWRlclIGaGVhZGVy');
@$core.Deprecated('Use revokeUserAccessTokenReqDescriptor instead')
const RevokeUserAccessTokenReq$json = const {
  '1': 'RevokeUserAccessTokenReq',
  '2': const [
    const {'1': 'header', '3': 1, '4': 1, '5': 11, '6': '.pb.RequestHeader', '10': 'header'},
  ],
};

/// Descriptor for `RevokeUserAccessTokenReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List revokeUserAccessTokenReqDescriptor = $convert.base64Decode('ChhSZXZva2VVc2VyQWNjZXNzVG9rZW5SZXESKQoGaGVhZGVyGAEgASgLMhEucGIuUmVxdWVzdEhlYWRlclIGaGVhZGVy');
@$core.Deprecated('Use revokeUserAccessTokenRespDescriptor instead')
const RevokeUserAccessTokenResp$json = const {
  '1': 'RevokeUserAccessTokenResp',
  '2': const [
    const {'1': 'header', '3': 1, '4': 1, '5': 11, '6': '.pb.ResponseHeader', '10': 'header'},
  ],
};

/// Descriptor for `RevokeUserAccessTokenResp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List revokeUserAccessTokenRespDescriptor = $convert.base64Decode('ChlSZXZva2VVc2VyQWNjZXNzVG9rZW5SZXNwEioKBmhlYWRlchgBIAEoCzISLnBiLlJlc3BvbnNlSGVhZGVyUgZoZWFkZXI=');
@$core.Deprecated('Use updateUserAccountMapReqDescriptor instead')
const UpdateUserAccountMapReq$json = const {
  '1': 'UpdateUserAccountMapReq',
  '2': const [
    const {'1': 'header', '3': 1, '4': 1, '5': 11, '6': '.pb.RequestHeader', '10': 'header'},
    const {'1': 'accountMap', '3': 2, '4': 3, '5': 11, '6': '.pb.UpdateUserAccountMapReq.AccountMapEntry', '10': 'accountMap'},
    const {'1': 'verifyMap', '3': 3, '4': 3, '5': 11, '6': '.pb.UpdateUserAccountMapReq.VerifyMapEntry', '10': 'verifyMap'},
  ],
  '3': const [UpdateUserAccountMapReq_AccountMapEntry$json, UpdateUserAccountMapReq_VerifyMapEntry$json],
};

@$core.Deprecated('Use updateUserAccountMapReqDescriptor instead')
const UpdateUserAccountMapReq_AccountMapEntry$json = const {
  '1': 'AccountMapEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': const {'7': true},
};

@$core.Deprecated('Use updateUserAccountMapReqDescriptor instead')
const UpdateUserAccountMapReq_VerifyMapEntry$json = const {
  '1': 'VerifyMapEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': const {'7': true},
};

/// Descriptor for `UpdateUserAccountMapReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateUserAccountMapReqDescriptor = $convert.base64Decode('ChdVcGRhdGVVc2VyQWNjb3VudE1hcFJlcRIpCgZoZWFkZXIYASABKAsyES5wYi5SZXF1ZXN0SGVhZGVyUgZoZWFkZXISSwoKYWNjb3VudE1hcBgCIAMoCzIrLnBiLlVwZGF0ZVVzZXJBY2NvdW50TWFwUmVxLkFjY291bnRNYXBFbnRyeVIKYWNjb3VudE1hcBJICgl2ZXJpZnlNYXAYAyADKAsyKi5wYi5VcGRhdGVVc2VyQWNjb3VudE1hcFJlcS5WZXJpZnlNYXBFbnRyeVIJdmVyaWZ5TWFwGj0KD0FjY291bnRNYXBFbnRyeRIQCgNrZXkYASABKAlSA2tleRIUCgV2YWx1ZRgCIAEoCVIFdmFsdWU6AjgBGjwKDlZlcmlmeU1hcEVudHJ5EhAKA2tleRgBIAEoCVIDa2V5EhQKBXZhbHVlGAIgASgJUgV2YWx1ZToCOAE=');
@$core.Deprecated('Use updateUserAccountMapRespDescriptor instead')
const UpdateUserAccountMapResp$json = const {
  '1': 'UpdateUserAccountMapResp',
  '2': const [
    const {'1': 'header', '3': 1, '4': 1, '5': 11, '6': '.pb.ResponseHeader', '10': 'header'},
  ],
};

/// Descriptor for `UpdateUserAccountMapResp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateUserAccountMapRespDescriptor = $convert.base64Decode('ChhVcGRhdGVVc2VyQWNjb3VudE1hcFJlc3ASKgoGaGVhZGVyGAEgASgLMhIucGIuUmVzcG9uc2VIZWFkZXJSBmhlYWRlcg==');
@$core.Deprecated('Use updateUserProfileMapReqDescriptor instead')
const UpdateUserProfileMapReq$json = const {
  '1': 'UpdateUserProfileMapReq',
  '2': const [
    const {'1': 'header', '3': 1, '4': 1, '5': 11, '6': '.pb.RequestHeader', '10': 'header'},
    const {'1': 'profileMap', '3': 2, '4': 3, '5': 11, '6': '.pb.UpdateUserProfileMapReq.ProfileMapEntry', '10': 'profileMap'},
  ],
  '3': const [UpdateUserProfileMapReq_ProfileMapEntry$json],
};

@$core.Deprecated('Use updateUserProfileMapReqDescriptor instead')
const UpdateUserProfileMapReq_ProfileMapEntry$json = const {
  '1': 'ProfileMapEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': const {'7': true},
};

/// Descriptor for `UpdateUserProfileMapReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateUserProfileMapReqDescriptor = $convert.base64Decode('ChdVcGRhdGVVc2VyUHJvZmlsZU1hcFJlcRIpCgZoZWFkZXIYASABKAsyES5wYi5SZXF1ZXN0SGVhZGVyUgZoZWFkZXISSwoKcHJvZmlsZU1hcBgCIAMoCzIrLnBiLlVwZGF0ZVVzZXJQcm9maWxlTWFwUmVxLlByb2ZpbGVNYXBFbnRyeVIKcHJvZmlsZU1hcBo9Cg9Qcm9maWxlTWFwRW50cnkSEAoDa2V5GAEgASgJUgNrZXkSFAoFdmFsdWUYAiABKAlSBXZhbHVlOgI4AQ==');
@$core.Deprecated('Use updateUserProfileMapRespDescriptor instead')
const UpdateUserProfileMapResp$json = const {
  '1': 'UpdateUserProfileMapResp',
  '2': const [
    const {'1': 'header', '3': 1, '4': 1, '5': 11, '6': '.pb.ResponseHeader', '10': 'header'},
  ],
};

/// Descriptor for `UpdateUserProfileMapResp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateUserProfileMapRespDescriptor = $convert.base64Decode('ChhVcGRhdGVVc2VyUHJvZmlsZU1hcFJlc3ASKgoGaGVhZGVyGAEgASgLMhIucGIuUmVzcG9uc2VIZWFkZXJSBmhlYWRlcg==');
@$core.Deprecated('Use updateUserExtraMapReqDescriptor instead')
const UpdateUserExtraMapReq$json = const {
  '1': 'UpdateUserExtraMapReq',
  '2': const [
    const {'1': 'header', '3': 1, '4': 1, '5': 11, '6': '.pb.RequestHeader', '10': 'header'},
    const {'1': 'extraMap', '3': 2, '4': 3, '5': 11, '6': '.pb.UpdateUserExtraMapReq.ExtraMapEntry', '10': 'extraMap'},
  ],
  '3': const [UpdateUserExtraMapReq_ExtraMapEntry$json],
};

@$core.Deprecated('Use updateUserExtraMapReqDescriptor instead')
const UpdateUserExtraMapReq_ExtraMapEntry$json = const {
  '1': 'ExtraMapEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': const {'7': true},
};

/// Descriptor for `UpdateUserExtraMapReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateUserExtraMapReqDescriptor = $convert.base64Decode('ChVVcGRhdGVVc2VyRXh0cmFNYXBSZXESKQoGaGVhZGVyGAEgASgLMhEucGIuUmVxdWVzdEhlYWRlclIGaGVhZGVyEkMKCGV4dHJhTWFwGAIgAygLMicucGIuVXBkYXRlVXNlckV4dHJhTWFwUmVxLkV4dHJhTWFwRW50cnlSCGV4dHJhTWFwGjsKDUV4dHJhTWFwRW50cnkSEAoDa2V5GAEgASgJUgNrZXkSFAoFdmFsdWUYAiABKAlSBXZhbHVlOgI4AQ==');
@$core.Deprecated('Use updateUserExtraMapRespDescriptor instead')
const UpdateUserExtraMapResp$json = const {
  '1': 'UpdateUserExtraMapResp',
  '2': const [
    const {'1': 'header', '3': 1, '4': 1, '5': 11, '6': '.pb.ResponseHeader', '10': 'header'},
  ],
};

/// Descriptor for `UpdateUserExtraMapResp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateUserExtraMapRespDescriptor = $convert.base64Decode('ChZVcGRhdGVVc2VyRXh0cmFNYXBSZXNwEioKBmhlYWRlchgBIAEoCzISLnBiLlJlc3BvbnNlSGVhZGVyUgZoZWFkZXI=');
@$core.Deprecated('Use updateUserCountMapReqDescriptor instead')
const UpdateUserCountMapReq$json = const {
  '1': 'UpdateUserCountMapReq',
  '2': const [
    const {'1': 'header', '3': 1, '4': 1, '5': 11, '6': '.pb.RequestHeader', '10': 'header'},
    const {'1': 'countType', '3': 2, '4': 1, '5': 14, '6': '.pb.UpdateUserCountMapReq.CountType', '10': 'countType'},
    const {'1': 'algorithm', '3': 3, '4': 1, '5': 14, '6': '.pb.UpdateUserCountMapReq.Algorithm', '10': 'algorithm'},
    const {'1': 'count', '3': 4, '4': 1, '5': 3, '10': 'count'},
    const {'1': 'statistics', '3': 5, '4': 1, '5': 8, '10': 'statistics'},
  ],
  '4': const [UpdateUserCountMapReq_CountType$json, UpdateUserCountMapReq_Algorithm$json],
};

@$core.Deprecated('Use updateUserCountMapReqDescriptor instead')
const UpdateUserCountMapReq_CountType$json = const {
  '1': 'CountType',
  '2': const [
    const {'1': 'friendCount', '2': 0},
    const {'1': 'joinGroupCount', '2': 1},
    const {'1': 'createGroupCount', '2': 2},
  ],
};

@$core.Deprecated('Use updateUserCountMapReqDescriptor instead')
const UpdateUserCountMapReq_Algorithm$json = const {
  '1': 'Algorithm',
  '2': const [
    const {'1': 'add', '2': 0},
    const {'1': 'sub', '2': 1},
    const {'1': 'fixed', '2': 2},
  ],
};

/// Descriptor for `UpdateUserCountMapReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateUserCountMapReqDescriptor = $convert.base64Decode('ChVVcGRhdGVVc2VyQ291bnRNYXBSZXESKQoGaGVhZGVyGAEgASgLMhEucGIuUmVxdWVzdEhlYWRlclIGaGVhZGVyEkEKCWNvdW50VHlwZRgCIAEoDjIjLnBiLlVwZGF0ZVVzZXJDb3VudE1hcFJlcS5Db3VudFR5cGVSCWNvdW50VHlwZRJBCglhbGdvcml0aG0YAyABKA4yIy5wYi5VcGRhdGVVc2VyQ291bnRNYXBSZXEuQWxnb3JpdGhtUglhbGdvcml0aG0SFAoFY291bnQYBCABKANSBWNvdW50Eh4KCnN0YXRpc3RpY3MYBSABKAhSCnN0YXRpc3RpY3MiRgoJQ291bnRUeXBlEg8KC2ZyaWVuZENvdW50EAASEgoOam9pbkdyb3VwQ291bnQQARIUChBjcmVhdGVHcm91cENvdW50EAIiKAoJQWxnb3JpdGhtEgcKA2FkZBAAEgcKA3N1YhABEgkKBWZpeGVkEAI=');
@$core.Deprecated('Use updateUserCountMapRespDescriptor instead')
const UpdateUserCountMapResp$json = const {
  '1': 'UpdateUserCountMapResp',
  '2': const [
    const {'1': 'header', '3': 1, '4': 1, '5': 11, '6': '.pb.ResponseHeader', '10': 'header'},
  ],
};

/// Descriptor for `UpdateUserCountMapResp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateUserCountMapRespDescriptor = $convert.base64Decode('ChZVcGRhdGVVc2VyQ291bnRNYXBSZXNwEioKBmhlYWRlchgBIAEoCzISLnBiLlJlc3BvbnNlSGVhZGVyUgZoZWFkZXI=');
@$core.Deprecated('Use getSelfUserInfoReqDescriptor instead')
const GetSelfUserInfoReq$json = const {
  '1': 'GetSelfUserInfoReq',
  '2': const [
    const {'1': 'header', '3': 1, '4': 1, '5': 11, '6': '.pb.RequestHeader', '10': 'header'},
  ],
};

/// Descriptor for `GetSelfUserInfoReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getSelfUserInfoReqDescriptor = $convert.base64Decode('ChJHZXRTZWxmVXNlckluZm9SZXESKQoGaGVhZGVyGAEgASgLMhEucGIuUmVxdWVzdEhlYWRlclIGaGVhZGVy');
@$core.Deprecated('Use getSelfUserInfoRespDescriptor instead')
const GetSelfUserInfoResp$json = const {
  '1': 'GetSelfUserInfoResp',
  '2': const [
    const {'1': 'header', '3': 1, '4': 1, '5': 11, '6': '.pb.ResponseHeader', '10': 'header'},
    const {'1': 'userId', '3': 2, '4': 1, '5': 9, '10': 'userId'},
    const {'1': 'registerTime', '3': 3, '4': 1, '5': 3, '9': 0, '10': 'registerTime', '17': true},
    const {'1': 'nickname', '3': 4, '4': 1, '5': 9, '9': 1, '10': 'nickname', '17': true},
    const {'1': 'avatar', '3': 5, '4': 1, '5': 9, '9': 2, '10': 'avatar', '17': true},
    const {'1': 'accountMap', '3': 6, '4': 3, '5': 11, '6': '.pb.GetSelfUserInfoResp.AccountMapEntry', '10': 'accountMap'},
    const {'1': 'profileMap', '3': 7, '4': 3, '5': 11, '6': '.pb.GetSelfUserInfoResp.ProfileMapEntry', '10': 'profileMap'},
    const {'1': 'extraMap', '3': 8, '4': 3, '5': 11, '6': '.pb.GetSelfUserInfoResp.ExtraMapEntry', '10': 'extraMap'},
  ],
  '3': const [GetSelfUserInfoResp_AccountMapEntry$json, GetSelfUserInfoResp_ProfileMapEntry$json, GetSelfUserInfoResp_ExtraMapEntry$json],
  '8': const [
    const {'1': '_registerTime'},
    const {'1': '_nickname'},
    const {'1': '_avatar'},
  ],
};

@$core.Deprecated('Use getSelfUserInfoRespDescriptor instead')
const GetSelfUserInfoResp_AccountMapEntry$json = const {
  '1': 'AccountMapEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': const {'7': true},
};

@$core.Deprecated('Use getSelfUserInfoRespDescriptor instead')
const GetSelfUserInfoResp_ProfileMapEntry$json = const {
  '1': 'ProfileMapEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': const {'7': true},
};

@$core.Deprecated('Use getSelfUserInfoRespDescriptor instead')
const GetSelfUserInfoResp_ExtraMapEntry$json = const {
  '1': 'ExtraMapEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': const {'7': true},
};

/// Descriptor for `GetSelfUserInfoResp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getSelfUserInfoRespDescriptor = $convert.base64Decode('ChNHZXRTZWxmVXNlckluZm9SZXNwEioKBmhlYWRlchgBIAEoCzISLnBiLlJlc3BvbnNlSGVhZGVyUgZoZWFkZXISFgoGdXNlcklkGAIgASgJUgZ1c2VySWQSJwoMcmVnaXN0ZXJUaW1lGAMgASgDSABSDHJlZ2lzdGVyVGltZYgBARIfCghuaWNrbmFtZRgEIAEoCUgBUghuaWNrbmFtZYgBARIbCgZhdmF0YXIYBSABKAlIAlIGYXZhdGFyiAEBEkcKCmFjY291bnRNYXAYBiADKAsyJy5wYi5HZXRTZWxmVXNlckluZm9SZXNwLkFjY291bnRNYXBFbnRyeVIKYWNjb3VudE1hcBJHCgpwcm9maWxlTWFwGAcgAygLMicucGIuR2V0U2VsZlVzZXJJbmZvUmVzcC5Qcm9maWxlTWFwRW50cnlSCnByb2ZpbGVNYXASQQoIZXh0cmFNYXAYCCADKAsyJS5wYi5HZXRTZWxmVXNlckluZm9SZXNwLkV4dHJhTWFwRW50cnlSCGV4dHJhTWFwGj0KD0FjY291bnRNYXBFbnRyeRIQCgNrZXkYASABKAlSA2tleRIUCgV2YWx1ZRgCIAEoCVIFdmFsdWU6AjgBGj0KD1Byb2ZpbGVNYXBFbnRyeRIQCgNrZXkYASABKAlSA2tleRIUCgV2YWx1ZRgCIAEoCVIFdmFsdWU6AjgBGjsKDUV4dHJhTWFwRW50cnkSEAoDa2V5GAEgASgJUgNrZXkSFAoFdmFsdWUYAiABKAlSBXZhbHVlOgI4AUIPCg1fcmVnaXN0ZXJUaW1lQgsKCV9uaWNrbmFtZUIJCgdfYXZhdGFy');
@$core.Deprecated('Use getUserInfoReqDescriptor instead')
const GetUserInfoReq$json = const {
  '1': 'GetUserInfoReq',
  '2': const [
    const {'1': 'header', '3': 1, '4': 1, '5': 11, '6': '.pb.RequestHeader', '10': 'header'},
    const {'1': 'userId', '3': 2, '4': 1, '5': 9, '10': 'userId'},
  ],
};

/// Descriptor for `GetUserInfoReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getUserInfoReqDescriptor = $convert.base64Decode('Cg5HZXRVc2VySW5mb1JlcRIpCgZoZWFkZXIYASABKAsyES5wYi5SZXF1ZXN0SGVhZGVyUgZoZWFkZXISFgoGdXNlcklkGAIgASgJUgZ1c2VySWQ=');
@$core.Deprecated('Use getUserInfoRespDescriptor instead')
const GetUserInfoResp$json = const {
  '1': 'GetUserInfoResp',
  '2': const [
    const {'1': 'header', '3': 1, '4': 1, '5': 11, '6': '.pb.ResponseHeader', '10': 'header'},
    const {'1': 'userId', '3': 2, '4': 1, '5': 9, '10': 'userId'},
    const {'1': 'registerTime', '3': 3, '4': 1, '5': 3, '9': 0, '10': 'registerTime', '17': true},
    const {'1': 'nickname', '3': 4, '4': 1, '5': 9, '9': 1, '10': 'nickname', '17': true},
    const {'1': 'avatar', '3': 5, '4': 1, '5': 9, '9': 2, '10': 'avatar', '17': true},
    const {'1': 'profileMap', '3': 6, '4': 3, '5': 11, '6': '.pb.GetUserInfoResp.ProfileMapEntry', '10': 'profileMap'},
  ],
  '3': const [GetUserInfoResp_ProfileMapEntry$json],
  '8': const [
    const {'1': '_registerTime'},
    const {'1': '_nickname'},
    const {'1': '_avatar'},
  ],
};

@$core.Deprecated('Use getUserInfoRespDescriptor instead')
const GetUserInfoResp_ProfileMapEntry$json = const {
  '1': 'ProfileMapEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': const {'7': true},
};

/// Descriptor for `GetUserInfoResp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getUserInfoRespDescriptor = $convert.base64Decode('Cg9HZXRVc2VySW5mb1Jlc3ASKgoGaGVhZGVyGAEgASgLMhIucGIuUmVzcG9uc2VIZWFkZXJSBmhlYWRlchIWCgZ1c2VySWQYAiABKAlSBnVzZXJJZBInCgxyZWdpc3RlclRpbWUYAyABKANIAFIMcmVnaXN0ZXJUaW1liAEBEh8KCG5pY2tuYW1lGAQgASgJSAFSCG5pY2tuYW1liAEBEhsKBmF2YXRhchgFIAEoCUgCUgZhdmF0YXKIAQESQwoKcHJvZmlsZU1hcBgGIAMoCzIjLnBiLkdldFVzZXJJbmZvUmVzcC5Qcm9maWxlTWFwRW50cnlSCnByb2ZpbGVNYXAaPQoPUHJvZmlsZU1hcEVudHJ5EhAKA2tleRgBIAEoCVIDa2V5EhQKBXZhbHVlGAIgASgJUgV2YWx1ZToCOAFCDwoNX3JlZ2lzdGVyVGltZUILCglfbmlja25hbWVCCQoHX2F2YXRhcg==');
@$core.Deprecated('Use resetUserAccountMapReqDescriptor instead')
const ResetUserAccountMapReq$json = const {
  '1': 'ResetUserAccountMapReq',
  '2': const [
    const {'1': 'header', '3': 1, '4': 1, '5': 11, '6': '.pb.RequestHeader', '10': 'header'},
    const {'1': 'accountMap', '3': 2, '4': 3, '5': 11, '6': '.pb.ResetUserAccountMapReq.AccountMapEntry', '10': 'accountMap'},
    const {'1': 'verifyMap', '3': 3, '4': 3, '5': 11, '6': '.pb.ResetUserAccountMapReq.VerifyMapEntry', '10': 'verifyMap'},
  ],
  '3': const [ResetUserAccountMapReq_AccountMapEntry$json, ResetUserAccountMapReq_VerifyMapEntry$json],
};

@$core.Deprecated('Use resetUserAccountMapReqDescriptor instead')
const ResetUserAccountMapReq_AccountMapEntry$json = const {
  '1': 'AccountMapEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': const {'7': true},
};

@$core.Deprecated('Use resetUserAccountMapReqDescriptor instead')
const ResetUserAccountMapReq_VerifyMapEntry$json = const {
  '1': 'VerifyMapEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': const {'7': true},
};

/// Descriptor for `ResetUserAccountMapReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List resetUserAccountMapReqDescriptor = $convert.base64Decode('ChZSZXNldFVzZXJBY2NvdW50TWFwUmVxEikKBmhlYWRlchgBIAEoCzIRLnBiLlJlcXVlc3RIZWFkZXJSBmhlYWRlchJKCgphY2NvdW50TWFwGAIgAygLMioucGIuUmVzZXRVc2VyQWNjb3VudE1hcFJlcS5BY2NvdW50TWFwRW50cnlSCmFjY291bnRNYXASRwoJdmVyaWZ5TWFwGAMgAygLMikucGIuUmVzZXRVc2VyQWNjb3VudE1hcFJlcS5WZXJpZnlNYXBFbnRyeVIJdmVyaWZ5TWFwGj0KD0FjY291bnRNYXBFbnRyeRIQCgNrZXkYASABKAlSA2tleRIUCgV2YWx1ZRgCIAEoCVIFdmFsdWU6AjgBGjwKDlZlcmlmeU1hcEVudHJ5EhAKA2tleRgBIAEoCVIDa2V5EhQKBXZhbHVlGAIgASgJUgV2YWx1ZToCOAE=');
@$core.Deprecated('Use resetUserAccountMapRespDescriptor instead')
const ResetUserAccountMapResp$json = const {
  '1': 'ResetUserAccountMapResp',
  '2': const [
    const {'1': 'header', '3': 1, '4': 1, '5': 11, '6': '.pb.ResponseHeader', '10': 'header'},
  ],
};

/// Descriptor for `ResetUserAccountMapResp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List resetUserAccountMapRespDescriptor = $convert.base64Decode('ChdSZXNldFVzZXJBY2NvdW50TWFwUmVzcBIqCgZoZWFkZXIYASABKAsyEi5wYi5SZXNwb25zZUhlYWRlclIGaGVhZGVy');
@$core.Deprecated('Use userAfterOnlineReqDescriptor instead')
const UserAfterOnlineReq$json = const {
  '1': 'UserAfterOnlineReq',
  '2': const [
    const {'1': 'header', '3': 1, '4': 1, '5': 11, '6': '.pb.RequestHeader', '10': 'header'},
  ],
};

/// Descriptor for `UserAfterOnlineReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userAfterOnlineReqDescriptor = $convert.base64Decode('ChJVc2VyQWZ0ZXJPbmxpbmVSZXESKQoGaGVhZGVyGAEgASgLMhEucGIuUmVxdWVzdEhlYWRlclIGaGVhZGVy');
@$core.Deprecated('Use userAfterOnlineRespDescriptor instead')
const UserAfterOnlineResp$json = const {
  '1': 'UserAfterOnlineResp',
  '2': const [
    const {'1': 'header', '3': 1, '4': 1, '5': 11, '6': '.pb.ResponseHeader', '10': 'header'},
  ],
};

/// Descriptor for `UserAfterOnlineResp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userAfterOnlineRespDescriptor = $convert.base64Decode('ChNVc2VyQWZ0ZXJPbmxpbmVSZXNwEioKBmhlYWRlchgBIAEoCzISLnBiLlJlc3BvbnNlSGVhZGVyUgZoZWFkZXI=');
@$core.Deprecated('Use userAfterOfflineReqDescriptor instead')
const UserAfterOfflineReq$json = const {
  '1': 'UserAfterOfflineReq',
  '2': const [
    const {'1': 'header', '3': 1, '4': 1, '5': 11, '6': '.pb.RequestHeader', '10': 'header'},
    const {'1': 'userId', '3': 2, '4': 1, '5': 9, '10': 'userId'},
  ],
};

/// Descriptor for `UserAfterOfflineReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userAfterOfflineReqDescriptor = $convert.base64Decode('ChNVc2VyQWZ0ZXJPZmZsaW5lUmVxEikKBmhlYWRlchgBIAEoCzIRLnBiLlJlcXVlc3RIZWFkZXJSBmhlYWRlchIWCgZ1c2VySWQYAiABKAlSBnVzZXJJZA==');
@$core.Deprecated('Use userAfterOfflineRespDescriptor instead')
const UserAfterOfflineResp$json = const {
  '1': 'UserAfterOfflineResp',
  '2': const [
    const {'1': 'header', '3': 1, '4': 1, '5': 11, '6': '.pb.ResponseHeader', '10': 'header'},
  ],
};

/// Descriptor for `UserAfterOfflineResp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userAfterOfflineRespDescriptor = $convert.base64Decode('ChRVc2VyQWZ0ZXJPZmZsaW5lUmVzcBIqCgZoZWFkZXIYASABKAsyEi5wYi5SZXNwb25zZUhlYWRlclIGaGVhZGVy');
@$core.Deprecated('Use userBeforeConnectReqDescriptor instead')
const UserBeforeConnectReq$json = const {
  '1': 'UserBeforeConnectReq',
  '2': const [
    const {'1': 'header', '3': 1, '4': 1, '5': 11, '6': '.pb.RequestHeader', '10': 'header'},
    const {'1': 'userId', '3': 2, '4': 1, '5': 9, '10': 'userId'},
    const {'1': 'token', '3': 3, '4': 1, '5': 9, '10': 'token'},
  ],
};

/// Descriptor for `UserBeforeConnectReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userBeforeConnectReqDescriptor = $convert.base64Decode('ChRVc2VyQmVmb3JlQ29ubmVjdFJlcRIpCgZoZWFkZXIYASABKAsyES5wYi5SZXF1ZXN0SGVhZGVyUgZoZWFkZXISFgoGdXNlcklkGAIgASgJUgZ1c2VySWQSFAoFdG9rZW4YAyABKAlSBXRva2Vu');
@$core.Deprecated('Use userBeforeConnectRespDescriptor instead')
const UserBeforeConnectResp$json = const {
  '1': 'UserBeforeConnectResp',
  '2': const [
    const {'1': 'header', '3': 1, '4': 1, '5': 11, '6': '.pb.ResponseHeader', '10': 'header'},
    const {'1': 'success', '3': 2, '4': 1, '5': 8, '10': 'success'},
    const {'1': 'closeCode', '3': 3, '4': 1, '5': 14, '6': '.pb.WebsocketCustomCloseCode', '10': 'closeCode'},
    const {'1': 'closeReason', '3': 4, '4': 1, '5': 9, '10': 'closeReason'},
    const {'1': 'userId', '3': 5, '4': 1, '5': 9, '10': 'userId'},
  ],
};

/// Descriptor for `UserBeforeConnectResp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userBeforeConnectRespDescriptor = $convert.base64Decode('ChVVc2VyQmVmb3JlQ29ubmVjdFJlc3ASKgoGaGVhZGVyGAEgASgLMhIucGIuUmVzcG9uc2VIZWFkZXJSBmhlYWRlchIYCgdzdWNjZXNzGAIgASgIUgdzdWNjZXNzEjoKCWNsb3NlQ29kZRgDIAEoDjIcLnBiLldlYnNvY2tldEN1c3RvbUNsb3NlQ29kZVIJY2xvc2VDb2RlEiAKC2Nsb3NlUmVhc29uGAQgASgJUgtjbG9zZVJlYXNvbhIWCgZ1c2VySWQYBSABKAlSBnVzZXJJZA==');
@$core.Deprecated('Use userBeforeRequestReqDescriptor instead')
const UserBeforeRequestReq$json = const {
  '1': 'UserBeforeRequestReq',
  '2': const [
    const {'1': 'header', '3': 1, '4': 1, '5': 11, '6': '.pb.RequestHeader', '10': 'header'},
    const {'1': 'path', '3': 2, '4': 1, '5': 9, '10': 'path'},
  ],
};

/// Descriptor for `UserBeforeRequestReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userBeforeRequestReqDescriptor = $convert.base64Decode('ChRVc2VyQmVmb3JlUmVxdWVzdFJlcRIpCgZoZWFkZXIYASABKAsyES5wYi5SZXF1ZXN0SGVhZGVyUgZoZWFkZXISEgoEcGF0aBgCIAEoCVIEcGF0aA==');
@$core.Deprecated('Use userBeforeRequestRespDescriptor instead')
const UserBeforeRequestResp$json = const {
  '1': 'UserBeforeRequestResp',
  '2': const [
    const {'1': 'header', '3': 1, '4': 1, '5': 11, '6': '.pb.ResponseHeader', '10': 'header'},
    const {'1': 'userId', '3': 2, '4': 1, '5': 9, '10': 'userId'},
  ],
};

/// Descriptor for `UserBeforeRequestResp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userBeforeRequestRespDescriptor = $convert.base64Decode('ChVVc2VyQmVmb3JlUmVxdWVzdFJlc3ASKgoGaGVhZGVyGAEgASgLMhIucGIuUmVzcG9uc2VIZWFkZXJSBmhlYWRlchIWCgZ1c2VySWQYAiABKAlSBnVzZXJJZA==');
@$core.Deprecated('Use userAfterKeepAliveReqDescriptor instead')
const UserAfterKeepAliveReq$json = const {
  '1': 'UserAfterKeepAliveReq',
  '2': const [
    const {'1': 'header', '3': 1, '4': 1, '5': 11, '6': '.pb.RequestHeader', '10': 'header'},
  ],
};

/// Descriptor for `UserAfterKeepAliveReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userAfterKeepAliveReqDescriptor = $convert.base64Decode('ChVVc2VyQWZ0ZXJLZWVwQWxpdmVSZXESKQoGaGVhZGVyGAEgASgLMhEucGIuUmVxdWVzdEhlYWRlclIGaGVhZGVy');
@$core.Deprecated('Use userAfterKeepAliveRespDescriptor instead')
const UserAfterKeepAliveResp$json = const {
  '1': 'UserAfterKeepAliveResp',
  '2': const [
    const {'1': 'header', '3': 1, '4': 1, '5': 11, '6': '.pb.ResponseHeader', '10': 'header'},
  ],
};

/// Descriptor for `UserAfterKeepAliveResp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userAfterKeepAliveRespDescriptor = $convert.base64Decode('ChZVc2VyQWZ0ZXJLZWVwQWxpdmVSZXNwEioKBmhlYWRlchgBIAEoCzISLnBiLlJlc3BvbnNlSGVhZGVyUgZoZWFkZXI=');
@$core.Deprecated('Use createRobotReqDescriptor instead')
const CreateRobotReq$json = const {
  '1': 'CreateRobotReq',
  '2': const [
    const {'1': 'header', '3': 1, '4': 1, '5': 11, '6': '.pb.RequestHeader', '10': 'header'},
    const {'1': 'robotId', '3': 2, '4': 1, '5': 9, '10': 'robotId'},
    const {'1': 'nickname', '3': 3, '4': 1, '5': 9, '9': 0, '10': 'nickname', '17': true},
    const {'1': 'avatar', '3': 4, '4': 1, '5': 9, '9': 1, '10': 'avatar', '17': true},
  ],
  '8': const [
    const {'1': '_nickname'},
    const {'1': '_avatar'},
  ],
};

/// Descriptor for `CreateRobotReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createRobotReqDescriptor = $convert.base64Decode('Cg5DcmVhdGVSb2JvdFJlcRIpCgZoZWFkZXIYASABKAsyES5wYi5SZXF1ZXN0SGVhZGVyUgZoZWFkZXISGAoHcm9ib3RJZBgCIAEoCVIHcm9ib3RJZBIfCghuaWNrbmFtZRgDIAEoCUgAUghuaWNrbmFtZYgBARIbCgZhdmF0YXIYBCABKAlIAVIGYXZhdGFyiAEBQgsKCV9uaWNrbmFtZUIJCgdfYXZhdGFy');
@$core.Deprecated('Use createRobotRespDescriptor instead')
const CreateRobotResp$json = const {
  '1': 'CreateRobotResp',
  '2': const [
    const {'1': 'header', '3': 1, '4': 1, '5': 11, '6': '.pb.ResponseHeader', '10': 'header'},
    const {'1': 'accessToken', '3': 2, '4': 1, '5': 9, '10': 'accessToken'},
  ],
};

/// Descriptor for `CreateRobotResp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createRobotRespDescriptor = $convert.base64Decode('Cg9DcmVhdGVSb2JvdFJlc3ASKgoGaGVhZGVyGAEgASgLMhIucGIuUmVzcG9uc2VIZWFkZXJSBmhlYWRlchIgCgthY2Nlc3NUb2tlbhgCIAEoCVILYWNjZXNzVG9rZW4=');
@$core.Deprecated('Use getUserModelByIdReqDescriptor instead')
const GetUserModelByIdReq$json = const {
  '1': 'GetUserModelByIdReq',
  '2': const [
    const {'1': 'header', '3': 1, '4': 1, '5': 11, '6': '.pb.RequestHeader', '10': 'header'},
    const {'1': 'userId', '3': 2, '4': 1, '5': 9, '10': 'userId'},
    const {'1': 'opt', '3': 3, '4': 1, '5': 11, '6': '.pb.GetUserModelByIdReq.Opt', '9': 0, '10': 'opt', '17': true},
  ],
  '3': const [GetUserModelByIdReq_Opt$json],
  '8': const [
    const {'1': '_opt'},
  ],
};

@$core.Deprecated('Use getUserModelByIdReqDescriptor instead')
const GetUserModelByIdReq_Opt$json = const {
  '1': 'Opt',
  '2': const [
    const {'1': 'withUserSettings', '3': 1, '4': 1, '5': 8, '10': 'withUserSettings'},
    const {'1': 'userSettingKeys', '3': 2, '4': 3, '5': 9, '10': 'userSettingKeys'},
  ],
};

/// Descriptor for `GetUserModelByIdReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getUserModelByIdReqDescriptor = $convert.base64Decode('ChNHZXRVc2VyTW9kZWxCeUlkUmVxEikKBmhlYWRlchgBIAEoCzIRLnBiLlJlcXVlc3RIZWFkZXJSBmhlYWRlchIWCgZ1c2VySWQYAiABKAlSBnVzZXJJZBIyCgNvcHQYAyABKAsyGy5wYi5HZXRVc2VyTW9kZWxCeUlkUmVxLk9wdEgAUgNvcHSIAQEaWwoDT3B0EioKEHdpdGhVc2VyU2V0dGluZ3MYASABKAhSEHdpdGhVc2VyU2V0dGluZ3MSKAoPdXNlclNldHRpbmdLZXlzGAIgAygJUg91c2VyU2V0dGluZ0tleXNCBgoEX29wdA==');
@$core.Deprecated('Use getUserModelByIdRespDescriptor instead')
const GetUserModelByIdResp$json = const {
  '1': 'GetUserModelByIdResp',
  '2': const [
    const {'1': 'header', '3': 1, '4': 1, '5': 11, '6': '.pb.ResponseHeader', '10': 'header'},
    const {'1': 'userModelJson', '3': 2, '4': 1, '5': 12, '10': 'userModelJson'},
    const {'1': 'userSettingsJson', '3': 3, '4': 1, '5': 12, '10': 'userSettingsJson'},
  ],
};

/// Descriptor for `GetUserModelByIdResp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getUserModelByIdRespDescriptor = $convert.base64Decode('ChRHZXRVc2VyTW9kZWxCeUlkUmVzcBIqCgZoZWFkZXIYASABKAsyEi5wYi5SZXNwb25zZUhlYWRlclIGaGVhZGVyEiQKDXVzZXJNb2RlbEpzb24YAiABKAxSDXVzZXJNb2RlbEpzb24SKgoQdXNlclNldHRpbmdzSnNvbhgDIAEoDFIQdXNlclNldHRpbmdzSnNvbg==');
@$core.Deprecated('Use getUserModelByIdsReqDescriptor instead')
const GetUserModelByIdsReq$json = const {
  '1': 'GetUserModelByIdsReq',
  '2': const [
    const {'1': 'header', '3': 1, '4': 1, '5': 11, '6': '.pb.RequestHeader', '10': 'header'},
    const {'1': 'userIds', '3': 2, '4': 3, '5': 9, '10': 'userIds'},
    const {'1': 'opt', '3': 3, '4': 1, '5': 11, '6': '.pb.GetUserModelByIdsReq.Opt', '9': 0, '10': 'opt', '17': true},
  ],
  '3': const [GetUserModelByIdsReq_Opt$json],
  '8': const [
    const {'1': '_opt'},
  ],
};

@$core.Deprecated('Use getUserModelByIdsReqDescriptor instead')
const GetUserModelByIdsReq_Opt$json = const {
  '1': 'Opt',
  '2': const [
    const {'1': 'withUserSettings', '3': 1, '4': 1, '5': 8, '10': 'withUserSettings'},
    const {'1': 'userSettingKeys', '3': 2, '4': 3, '5': 9, '10': 'userSettingKeys'},
  ],
};

/// Descriptor for `GetUserModelByIdsReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getUserModelByIdsReqDescriptor = $convert.base64Decode('ChRHZXRVc2VyTW9kZWxCeUlkc1JlcRIpCgZoZWFkZXIYASABKAsyES5wYi5SZXF1ZXN0SGVhZGVyUgZoZWFkZXISGAoHdXNlcklkcxgCIAMoCVIHdXNlcklkcxIzCgNvcHQYAyABKAsyHC5wYi5HZXRVc2VyTW9kZWxCeUlkc1JlcS5PcHRIAFIDb3B0iAEBGlsKA09wdBIqChB3aXRoVXNlclNldHRpbmdzGAEgASgIUhB3aXRoVXNlclNldHRpbmdzEigKD3VzZXJTZXR0aW5nS2V5cxgCIAMoCVIPdXNlclNldHRpbmdLZXlzQgYKBF9vcHQ=');
@$core.Deprecated('Use getUserModelByIdsRespDescriptor instead')
const GetUserModelByIdsResp$json = const {
  '1': 'GetUserModelByIdsResp',
  '2': const [
    const {'1': 'header', '3': 1, '4': 1, '5': 11, '6': '.pb.ResponseHeader', '10': 'header'},
    const {'1': 'userModelJsons', '3': 2, '4': 3, '5': 11, '6': '.pb.GetUserModelByIdsResp.UserModelJsonsEntry', '10': 'userModelJsons'},
    const {'1': 'userSettingsJsons', '3': 3, '4': 3, '5': 11, '6': '.pb.GetUserModelByIdsResp.UserSettingsJsonsEntry', '10': 'userSettingsJsons'},
  ],
  '3': const [GetUserModelByIdsResp_UserModelJsonsEntry$json, GetUserModelByIdsResp_UserSettingsJsonsEntry$json],
};

@$core.Deprecated('Use getUserModelByIdsRespDescriptor instead')
const GetUserModelByIdsResp_UserModelJsonsEntry$json = const {
  '1': 'UserModelJsonsEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 12, '10': 'value'},
  ],
  '7': const {'7': true},
};

@$core.Deprecated('Use getUserModelByIdsRespDescriptor instead')
const GetUserModelByIdsResp_UserSettingsJsonsEntry$json = const {
  '1': 'UserSettingsJsonsEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 12, '10': 'value'},
  ],
  '7': const {'7': true},
};

/// Descriptor for `GetUserModelByIdsResp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getUserModelByIdsRespDescriptor = $convert.base64Decode('ChVHZXRVc2VyTW9kZWxCeUlkc1Jlc3ASKgoGaGVhZGVyGAEgASgLMhIucGIuUmVzcG9uc2VIZWFkZXJSBmhlYWRlchJVCg51c2VyTW9kZWxKc29ucxgCIAMoCzItLnBiLkdldFVzZXJNb2RlbEJ5SWRzUmVzcC5Vc2VyTW9kZWxKc29uc0VudHJ5Ug51c2VyTW9kZWxKc29ucxJeChF1c2VyU2V0dGluZ3NKc29ucxgDIAMoCzIwLnBiLkdldFVzZXJNb2RlbEJ5SWRzUmVzcC5Vc2VyU2V0dGluZ3NKc29uc0VudHJ5UhF1c2VyU2V0dGluZ3NKc29ucxpBChNVc2VyTW9kZWxKc29uc0VudHJ5EhAKA2tleRgBIAEoCVIDa2V5EhQKBXZhbHVlGAIgASgMUgV2YWx1ZToCOAEaRAoWVXNlclNldHRpbmdzSnNvbnNFbnRyeRIQCgNrZXkYASABKAlSA2tleRIUCgV2YWx1ZRgCIAEoDFIFdmFsdWU6AjgB');
const $core.Map<$core.String, $core.dynamic> accountServiceBase$json = const {
  '1': 'accountService',
  '2': const [
    const {'1': 'UserRegister', '2': '.pb.UserRegisterReq', '3': '.pb.UserRegisterResp'},
    const {'1': 'UserDestroy', '2': '.pb.UserDestroyReq', '3': '.pb.UserDestroyResp'},
    const {'1': 'UserAccessToken', '2': '.pb.UserAccessTokenReq', '3': '.pb.UserAccessTokenResp'},
    const {'1': 'RefreshUserAccessToken', '2': '.pb.RefreshUserAccessTokenReq', '3': '.pb.RefreshUserAccessTokenResp'},
    const {'1': 'RevokeUserAccessToken', '2': '.pb.RevokeUserAccessTokenReq', '3': '.pb.RevokeUserAccessTokenResp'},
    const {'1': 'UpdateUserAccountMap', '2': '.pb.UpdateUserAccountMapReq', '3': '.pb.UpdateUserAccountMapResp'},
    const {'1': 'ResetUserAccountMap', '2': '.pb.ResetUserAccountMapReq', '3': '.pb.ResetUserAccountMapResp'},
    const {'1': 'CreateRobot', '2': '.pb.CreateRobotReq', '3': '.pb.CreateRobotResp'},
  ],
};

@$core.Deprecated('Use accountServiceDescriptor instead')
const $core.Map<$core.String, $core.Map<$core.String, $core.dynamic>> accountServiceBase$messageJson = const {
  '.pb.UserRegisterReq': UserRegisterReq$json,
  '.pb.RequestHeader': $0.RequestHeader$json,
  '.pb.UserRegisterReq.AccountMapEntry': UserRegisterReq_AccountMapEntry$json,
  '.pb.UserRegisterReq.ProfileMapEntry': UserRegisterReq_ProfileMapEntry$json,
  '.pb.UserRegisterReq.ExtraMapEntry': UserRegisterReq_ExtraMapEntry$json,
  '.pb.UserRegisterReq.VerifyMapEntry': UserRegisterReq_VerifyMapEntry$json,
  '.pb.UserRegisterResp': UserRegisterResp$json,
  '.pb.ResponseHeader': $0.ResponseHeader$json,
  '.pb.UserDestroyReq': UserDestroyReq$json,
  '.pb.UserDestroyResp': UserDestroyResp$json,
  '.pb.UserAccessTokenReq': UserAccessTokenReq$json,
  '.pb.UserAccessTokenReq.AccountMapEntry': UserAccessTokenReq_AccountMapEntry$json,
  '.pb.UserAccessTokenReq.VerifyMapEntry': UserAccessTokenReq_VerifyMapEntry$json,
  '.pb.UserAccessTokenResp': UserAccessTokenResp$json,
  '.pb.RefreshUserAccessTokenReq': RefreshUserAccessTokenReq$json,
  '.pb.RefreshUserAccessTokenResp': RefreshUserAccessTokenResp$json,
  '.pb.RevokeUserAccessTokenReq': RevokeUserAccessTokenReq$json,
  '.pb.RevokeUserAccessTokenResp': RevokeUserAccessTokenResp$json,
  '.pb.UpdateUserAccountMapReq': UpdateUserAccountMapReq$json,
  '.pb.UpdateUserAccountMapReq.AccountMapEntry': UpdateUserAccountMapReq_AccountMapEntry$json,
  '.pb.UpdateUserAccountMapReq.VerifyMapEntry': UpdateUserAccountMapReq_VerifyMapEntry$json,
  '.pb.UpdateUserAccountMapResp': UpdateUserAccountMapResp$json,
  '.pb.ResetUserAccountMapReq': ResetUserAccountMapReq$json,
  '.pb.ResetUserAccountMapReq.AccountMapEntry': ResetUserAccountMapReq_AccountMapEntry$json,
  '.pb.ResetUserAccountMapReq.VerifyMapEntry': ResetUserAccountMapReq_VerifyMapEntry$json,
  '.pb.ResetUserAccountMapResp': ResetUserAccountMapResp$json,
  '.pb.CreateRobotReq': CreateRobotReq$json,
  '.pb.CreateRobotResp': CreateRobotResp$json,
};

/// Descriptor for `accountService`. Decode as a `google.protobuf.ServiceDescriptorProto`.
final $typed_data.Uint8List accountServiceDescriptor = $convert.base64Decode('Cg5hY2NvdW50U2VydmljZRI5CgxVc2VyUmVnaXN0ZXISEy5wYi5Vc2VyUmVnaXN0ZXJSZXEaFC5wYi5Vc2VyUmVnaXN0ZXJSZXNwEjYKC1VzZXJEZXN0cm95EhIucGIuVXNlckRlc3Ryb3lSZXEaEy5wYi5Vc2VyRGVzdHJveVJlc3ASQgoPVXNlckFjY2Vzc1Rva2VuEhYucGIuVXNlckFjY2Vzc1Rva2VuUmVxGhcucGIuVXNlckFjY2Vzc1Rva2VuUmVzcBJXChZSZWZyZXNoVXNlckFjY2Vzc1Rva2VuEh0ucGIuUmVmcmVzaFVzZXJBY2Nlc3NUb2tlblJlcRoeLnBiLlJlZnJlc2hVc2VyQWNjZXNzVG9rZW5SZXNwElQKFVJldm9rZVVzZXJBY2Nlc3NUb2tlbhIcLnBiLlJldm9rZVVzZXJBY2Nlc3NUb2tlblJlcRodLnBiLlJldm9rZVVzZXJBY2Nlc3NUb2tlblJlc3ASUQoUVXBkYXRlVXNlckFjY291bnRNYXASGy5wYi5VcGRhdGVVc2VyQWNjb3VudE1hcFJlcRocLnBiLlVwZGF0ZVVzZXJBY2NvdW50TWFwUmVzcBJOChNSZXNldFVzZXJBY2NvdW50TWFwEhoucGIuUmVzZXRVc2VyQWNjb3VudE1hcFJlcRobLnBiLlJlc2V0VXNlckFjY291bnRNYXBSZXNwEjYKC0NyZWF0ZVJvYm90EhIucGIuQ3JlYXRlUm9ib3RSZXEaEy5wYi5DcmVhdGVSb2JvdFJlc3A=');
const $core.Map<$core.String, $core.dynamic> infoServiceBase$json = const {
  '1': 'infoService',
  '2': const [
    const {'1': 'UpdateUserProfileMap', '2': '.pb.UpdateUserProfileMapReq', '3': '.pb.UpdateUserProfileMapResp'},
    const {'1': 'UpdateUserExtraMap', '2': '.pb.UpdateUserExtraMapReq', '3': '.pb.UpdateUserExtraMapResp'},
    const {'1': 'UpdateUserCountMap', '2': '.pb.UpdateUserCountMapReq', '3': '.pb.UpdateUserCountMapResp'},
    const {'1': 'GetSelfUserInfo', '2': '.pb.GetSelfUserInfoReq', '3': '.pb.GetSelfUserInfoResp'},
    const {'1': 'GetUserInfo', '2': '.pb.GetUserInfoReq', '3': '.pb.GetUserInfoResp'},
    const {'1': 'GetUserModelById', '2': '.pb.GetUserModelByIdReq', '3': '.pb.GetUserModelByIdResp'},
    const {'1': 'GetUserModelByIds', '2': '.pb.GetUserModelByIdsReq', '3': '.pb.GetUserModelByIdsResp'},
  ],
};

@$core.Deprecated('Use infoServiceDescriptor instead')
const $core.Map<$core.String, $core.Map<$core.String, $core.dynamic>> infoServiceBase$messageJson = const {
  '.pb.UpdateUserProfileMapReq': UpdateUserProfileMapReq$json,
  '.pb.RequestHeader': $0.RequestHeader$json,
  '.pb.UpdateUserProfileMapReq.ProfileMapEntry': UpdateUserProfileMapReq_ProfileMapEntry$json,
  '.pb.UpdateUserProfileMapResp': UpdateUserProfileMapResp$json,
  '.pb.ResponseHeader': $0.ResponseHeader$json,
  '.pb.UpdateUserExtraMapReq': UpdateUserExtraMapReq$json,
  '.pb.UpdateUserExtraMapReq.ExtraMapEntry': UpdateUserExtraMapReq_ExtraMapEntry$json,
  '.pb.UpdateUserExtraMapResp': UpdateUserExtraMapResp$json,
  '.pb.UpdateUserCountMapReq': UpdateUserCountMapReq$json,
  '.pb.UpdateUserCountMapResp': UpdateUserCountMapResp$json,
  '.pb.GetSelfUserInfoReq': GetSelfUserInfoReq$json,
  '.pb.GetSelfUserInfoResp': GetSelfUserInfoResp$json,
  '.pb.GetSelfUserInfoResp.AccountMapEntry': GetSelfUserInfoResp_AccountMapEntry$json,
  '.pb.GetSelfUserInfoResp.ProfileMapEntry': GetSelfUserInfoResp_ProfileMapEntry$json,
  '.pb.GetSelfUserInfoResp.ExtraMapEntry': GetSelfUserInfoResp_ExtraMapEntry$json,
  '.pb.GetUserInfoReq': GetUserInfoReq$json,
  '.pb.GetUserInfoResp': GetUserInfoResp$json,
  '.pb.GetUserInfoResp.ProfileMapEntry': GetUserInfoResp_ProfileMapEntry$json,
  '.pb.GetUserModelByIdReq': GetUserModelByIdReq$json,
  '.pb.GetUserModelByIdReq.Opt': GetUserModelByIdReq_Opt$json,
  '.pb.GetUserModelByIdResp': GetUserModelByIdResp$json,
  '.pb.GetUserModelByIdsReq': GetUserModelByIdsReq$json,
  '.pb.GetUserModelByIdsReq.Opt': GetUserModelByIdsReq_Opt$json,
  '.pb.GetUserModelByIdsResp': GetUserModelByIdsResp$json,
  '.pb.GetUserModelByIdsResp.UserModelJsonsEntry': GetUserModelByIdsResp_UserModelJsonsEntry$json,
  '.pb.GetUserModelByIdsResp.UserSettingsJsonsEntry': GetUserModelByIdsResp_UserSettingsJsonsEntry$json,
};

/// Descriptor for `infoService`. Decode as a `google.protobuf.ServiceDescriptorProto`.
final $typed_data.Uint8List infoServiceDescriptor = $convert.base64Decode('CgtpbmZvU2VydmljZRJRChRVcGRhdGVVc2VyUHJvZmlsZU1hcBIbLnBiLlVwZGF0ZVVzZXJQcm9maWxlTWFwUmVxGhwucGIuVXBkYXRlVXNlclByb2ZpbGVNYXBSZXNwEksKElVwZGF0ZVVzZXJFeHRyYU1hcBIZLnBiLlVwZGF0ZVVzZXJFeHRyYU1hcFJlcRoaLnBiLlVwZGF0ZVVzZXJFeHRyYU1hcFJlc3ASSwoSVXBkYXRlVXNlckNvdW50TWFwEhkucGIuVXBkYXRlVXNlckNvdW50TWFwUmVxGhoucGIuVXBkYXRlVXNlckNvdW50TWFwUmVzcBJCCg9HZXRTZWxmVXNlckluZm8SFi5wYi5HZXRTZWxmVXNlckluZm9SZXEaFy5wYi5HZXRTZWxmVXNlckluZm9SZXNwEjYKC0dldFVzZXJJbmZvEhIucGIuR2V0VXNlckluZm9SZXEaEy5wYi5HZXRVc2VySW5mb1Jlc3ASRQoQR2V0VXNlck1vZGVsQnlJZBIXLnBiLkdldFVzZXJNb2RlbEJ5SWRSZXEaGC5wYi5HZXRVc2VyTW9kZWxCeUlkUmVzcBJIChFHZXRVc2VyTW9kZWxCeUlkcxIYLnBiLkdldFVzZXJNb2RlbEJ5SWRzUmVxGhkucGIuR2V0VXNlck1vZGVsQnlJZHNSZXNw');
const $core.Map<$core.String, $core.dynamic> callbackServiceBase$json = const {
  '1': 'callbackService',
  '2': const [
    const {'1': 'UserAfterOnline', '2': '.pb.UserAfterOnlineReq', '3': '.pb.UserAfterOnlineResp'},
    const {'1': 'UserAfterOffline', '2': '.pb.UserAfterOfflineReq', '3': '.pb.UserAfterOfflineResp'},
    const {'1': 'UserBeforeConnect', '2': '.pb.UserBeforeConnectReq', '3': '.pb.UserBeforeConnectResp'},
    const {'1': 'UserBeforeRequest', '2': '.pb.UserBeforeRequestReq', '3': '.pb.UserBeforeRequestResp'},
    const {'1': 'UserAfterKeepAlive', '2': '.pb.UserAfterKeepAliveReq', '3': '.pb.UserAfterKeepAliveResp'},
  ],
};

@$core.Deprecated('Use callbackServiceDescriptor instead')
const $core.Map<$core.String, $core.Map<$core.String, $core.dynamic>> callbackServiceBase$messageJson = const {
  '.pb.UserAfterOnlineReq': UserAfterOnlineReq$json,
  '.pb.RequestHeader': $0.RequestHeader$json,
  '.pb.UserAfterOnlineResp': UserAfterOnlineResp$json,
  '.pb.ResponseHeader': $0.ResponseHeader$json,
  '.pb.UserAfterOfflineReq': UserAfterOfflineReq$json,
  '.pb.UserAfterOfflineResp': UserAfterOfflineResp$json,
  '.pb.UserBeforeConnectReq': UserBeforeConnectReq$json,
  '.pb.UserBeforeConnectResp': UserBeforeConnectResp$json,
  '.pb.UserBeforeRequestReq': UserBeforeRequestReq$json,
  '.pb.UserBeforeRequestResp': UserBeforeRequestResp$json,
  '.pb.UserAfterKeepAliveReq': UserAfterKeepAliveReq$json,
  '.pb.UserAfterKeepAliveResp': UserAfterKeepAliveResp$json,
};

/// Descriptor for `callbackService`. Decode as a `google.protobuf.ServiceDescriptorProto`.
final $typed_data.Uint8List callbackServiceDescriptor = $convert.base64Decode('Cg9jYWxsYmFja1NlcnZpY2USQgoPVXNlckFmdGVyT25saW5lEhYucGIuVXNlckFmdGVyT25saW5lUmVxGhcucGIuVXNlckFmdGVyT25saW5lUmVzcBJFChBVc2VyQWZ0ZXJPZmZsaW5lEhcucGIuVXNlckFmdGVyT2ZmbGluZVJlcRoYLnBiLlVzZXJBZnRlck9mZmxpbmVSZXNwEkgKEVVzZXJCZWZvcmVDb25uZWN0EhgucGIuVXNlckJlZm9yZUNvbm5lY3RSZXEaGS5wYi5Vc2VyQmVmb3JlQ29ubmVjdFJlc3ASSAoRVXNlckJlZm9yZVJlcXVlc3QSGC5wYi5Vc2VyQmVmb3JlUmVxdWVzdFJlcRoZLnBiLlVzZXJCZWZvcmVSZXF1ZXN0UmVzcBJLChJVc2VyQWZ0ZXJLZWVwQWxpdmUSGS5wYi5Vc2VyQWZ0ZXJLZWVwQWxpdmVSZXEaGi5wYi5Vc2VyQWZ0ZXJLZWVwQWxpdmVSZXNw');
