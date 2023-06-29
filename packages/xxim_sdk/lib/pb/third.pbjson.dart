///
//  Generated code. Do not modify.
//  source: third.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
import 'common.pbjson.dart' as $0;

@$core.Deprecated('Use smsCodeSendReqDescriptor instead')
const SmsCodeSendReq$json = const {
  '1': 'SmsCodeSendReq',
  '2': const [
    const {'1': 'header', '3': 1, '4': 1, '5': 11, '6': '.pb.RequestHeader', '10': 'header'},
    const {'1': 'phone', '3': 2, '4': 1, '5': 9, '10': 'phone'},
    const {'1': 'phoneCode', '3': 3, '4': 1, '5': 9, '10': 'phoneCode'},
    const {'1': 'scene', '3': 4, '4': 1, '5': 9, '10': 'scene'},
    const {'1': 'expireTime', '3': 5, '4': 1, '5': 3, '9': 0, '10': 'expireTime', '17': true},
  ],
  '8': const [
    const {'1': '_expireTime'},
  ],
};

/// Descriptor for `SmsCodeSendReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List smsCodeSendReqDescriptor = $convert.base64Decode('Cg5TbXNDb2RlU2VuZFJlcRIpCgZoZWFkZXIYASABKAsyES5wYi5SZXF1ZXN0SGVhZGVyUgZoZWFkZXISFAoFcGhvbmUYAiABKAlSBXBob25lEhwKCXBob25lQ29kZRgDIAEoCVIJcGhvbmVDb2RlEhQKBXNjZW5lGAQgASgJUgVzY2VuZRIjCgpleHBpcmVUaW1lGAUgASgDSABSCmV4cGlyZVRpbWWIAQFCDQoLX2V4cGlyZVRpbWU=');
@$core.Deprecated('Use smsCodeSendRespDescriptor instead')
const SmsCodeSendResp$json = const {
  '1': 'SmsCodeSendResp',
  '2': const [
    const {'1': 'header', '3': 1, '4': 1, '5': 11, '6': '.pb.ResponseHeader', '10': 'header'},
  ],
};

/// Descriptor for `SmsCodeSendResp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List smsCodeSendRespDescriptor = $convert.base64Decode('Cg9TbXNDb2RlU2VuZFJlc3ASKgoGaGVhZGVyGAEgASgLMhIucGIuUmVzcG9uc2VIZWFkZXJSBmhlYWRlcg==');
@$core.Deprecated('Use smsCodeVerifyReqDescriptor instead')
const SmsCodeVerifyReq$json = const {
  '1': 'SmsCodeVerifyReq',
  '2': const [
    const {'1': 'header', '3': 1, '4': 1, '5': 11, '6': '.pb.RequestHeader', '10': 'header'},
    const {'1': 'phone', '3': 2, '4': 1, '5': 9, '10': 'phone'},
    const {'1': 'phoneCode', '3': 3, '4': 1, '5': 9, '10': 'phoneCode'},
    const {'1': 'scene', '3': 4, '4': 1, '5': 9, '10': 'scene'},
    const {'1': 'smsCode', '3': 5, '4': 1, '5': 9, '10': 'smsCode'},
    const {'1': 'delete', '3': 6, '4': 1, '5': 8, '10': 'delete'},
  ],
};

/// Descriptor for `SmsCodeVerifyReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List smsCodeVerifyReqDescriptor = $convert.base64Decode('ChBTbXNDb2RlVmVyaWZ5UmVxEikKBmhlYWRlchgBIAEoCzIRLnBiLlJlcXVlc3RIZWFkZXJSBmhlYWRlchIUCgVwaG9uZRgCIAEoCVIFcGhvbmUSHAoJcGhvbmVDb2RlGAMgASgJUglwaG9uZUNvZGUSFAoFc2NlbmUYBCABKAlSBXNjZW5lEhgKB3Ntc0NvZGUYBSABKAlSB3Ntc0NvZGUSFgoGZGVsZXRlGAYgASgIUgZkZWxldGU=');
@$core.Deprecated('Use smsCodeVerifyRespDescriptor instead')
const SmsCodeVerifyResp$json = const {
  '1': 'SmsCodeVerifyResp',
  '2': const [
    const {'1': 'header', '3': 1, '4': 1, '5': 11, '6': '.pb.ResponseHeader', '10': 'header'},
    const {'1': 'success', '3': 2, '4': 1, '5': 8, '10': 'success'},
  ],
};

/// Descriptor for `SmsCodeVerifyResp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List smsCodeVerifyRespDescriptor = $convert.base64Decode('ChFTbXNDb2RlVmVyaWZ5UmVzcBIqCgZoZWFkZXIYASABKAsyEi5wYi5SZXNwb25zZUhlYWRlclIGaGVhZGVyEhgKB3N1Y2Nlc3MYAiABKAhSB3N1Y2Nlc3M=');
@$core.Deprecated('Use emailCodeSendReqDescriptor instead')
const EmailCodeSendReq$json = const {
  '1': 'EmailCodeSendReq',
  '2': const [
    const {'1': 'header', '3': 1, '4': 1, '5': 11, '6': '.pb.RequestHeader', '10': 'header'},
    const {'1': 'email', '3': 2, '4': 1, '5': 9, '10': 'email'},
    const {'1': 'scene', '3': 3, '4': 1, '5': 9, '10': 'scene'},
    const {'1': 'expireTime', '3': 4, '4': 1, '5': 3, '9': 0, '10': 'expireTime', '17': true},
  ],
  '8': const [
    const {'1': '_expireTime'},
  ],
};

/// Descriptor for `EmailCodeSendReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List emailCodeSendReqDescriptor = $convert.base64Decode('ChBFbWFpbENvZGVTZW5kUmVxEikKBmhlYWRlchgBIAEoCzIRLnBiLlJlcXVlc3RIZWFkZXJSBmhlYWRlchIUCgVlbWFpbBgCIAEoCVIFZW1haWwSFAoFc2NlbmUYAyABKAlSBXNjZW5lEiMKCmV4cGlyZVRpbWUYBCABKANIAFIKZXhwaXJlVGltZYgBAUINCgtfZXhwaXJlVGltZQ==');
@$core.Deprecated('Use emailCodeSendRespDescriptor instead')
const EmailCodeSendResp$json = const {
  '1': 'EmailCodeSendResp',
  '2': const [
    const {'1': 'header', '3': 1, '4': 1, '5': 11, '6': '.pb.ResponseHeader', '10': 'header'},
  ],
};

/// Descriptor for `EmailCodeSendResp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List emailCodeSendRespDescriptor = $convert.base64Decode('ChFFbWFpbENvZGVTZW5kUmVzcBIqCgZoZWFkZXIYASABKAsyEi5wYi5SZXNwb25zZUhlYWRlclIGaGVhZGVy');
@$core.Deprecated('Use emailCodeVerifyReqDescriptor instead')
const EmailCodeVerifyReq$json = const {
  '1': 'EmailCodeVerifyReq',
  '2': const [
    const {'1': 'header', '3': 1, '4': 1, '5': 11, '6': '.pb.RequestHeader', '10': 'header'},
    const {'1': 'email', '3': 2, '4': 1, '5': 9, '10': 'email'},
    const {'1': 'scene', '3': 3, '4': 1, '5': 9, '10': 'scene'},
    const {'1': 'emailCode', '3': 4, '4': 1, '5': 9, '10': 'emailCode'},
    const {'1': 'delete', '3': 5, '4': 1, '5': 8, '10': 'delete'},
  ],
};

/// Descriptor for `EmailCodeVerifyReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List emailCodeVerifyReqDescriptor = $convert.base64Decode('ChJFbWFpbENvZGVWZXJpZnlSZXESKQoGaGVhZGVyGAEgASgLMhEucGIuUmVxdWVzdEhlYWRlclIGaGVhZGVyEhQKBWVtYWlsGAIgASgJUgVlbWFpbBIUCgVzY2VuZRgDIAEoCVIFc2NlbmUSHAoJZW1haWxDb2RlGAQgASgJUgllbWFpbENvZGUSFgoGZGVsZXRlGAUgASgIUgZkZWxldGU=');
@$core.Deprecated('Use emailCodeVerifyRespDescriptor instead')
const EmailCodeVerifyResp$json = const {
  '1': 'EmailCodeVerifyResp',
  '2': const [
    const {'1': 'header', '3': 1, '4': 1, '5': 11, '6': '.pb.ResponseHeader', '10': 'header'},
    const {'1': 'success', '3': 2, '4': 1, '5': 8, '10': 'success'},
  ],
};

/// Descriptor for `EmailCodeVerifyResp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List emailCodeVerifyRespDescriptor = $convert.base64Decode('ChNFbWFpbENvZGVWZXJpZnlSZXNwEioKBmhlYWRlchgBIAEoCzISLnBiLlJlc3BvbnNlSGVhZGVyUgZoZWFkZXISGAoHc3VjY2VzcxgCIAEoCFIHc3VjY2Vzcw==');
@$core.Deprecated('Use getCaptchaReqDescriptor instead')
const GetCaptchaReq$json = const {
  '1': 'GetCaptchaReq',
  '2': const [
    const {'1': 'header', '3': 1, '4': 1, '5': 11, '6': '.pb.RequestHeader', '10': 'header'},
    const {'1': 'expireTime', '3': 2, '4': 1, '5': 3, '9': 0, '10': 'expireTime', '17': true},
    const {'1': 'includeEnglish', '3': 3, '4': 1, '5': 8, '10': 'includeEnglish'},
    const {'1': 'includeNumber', '3': 4, '4': 1, '5': 8, '10': 'includeNumber'},
    const {'1': 'width', '3': 5, '4': 1, '5': 5, '10': 'width'},
    const {'1': 'height', '3': 6, '4': 1, '5': 5, '10': 'height'},
    const {'1': 'charCount', '3': 7, '4': 1, '5': 5, '10': 'charCount'},
  ],
  '8': const [
    const {'1': '_expireTime'},
  ],
};

/// Descriptor for `GetCaptchaReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getCaptchaReqDescriptor = $convert.base64Decode('Cg1HZXRDYXB0Y2hhUmVxEikKBmhlYWRlchgBIAEoCzIRLnBiLlJlcXVlc3RIZWFkZXJSBmhlYWRlchIjCgpleHBpcmVUaW1lGAIgASgDSABSCmV4cGlyZVRpbWWIAQESJgoOaW5jbHVkZUVuZ2xpc2gYAyABKAhSDmluY2x1ZGVFbmdsaXNoEiQKDWluY2x1ZGVOdW1iZXIYBCABKAhSDWluY2x1ZGVOdW1iZXISFAoFd2lkdGgYBSABKAVSBXdpZHRoEhYKBmhlaWdodBgGIAEoBVIGaGVpZ2h0EhwKCWNoYXJDb3VudBgHIAEoBVIJY2hhckNvdW50Qg0KC19leHBpcmVUaW1l');
@$core.Deprecated('Use getCaptchaRespDescriptor instead')
const GetCaptchaResp$json = const {
  '1': 'GetCaptchaResp',
  '2': const [
    const {'1': 'header', '3': 1, '4': 1, '5': 11, '6': '.pb.ResponseHeader', '10': 'header'},
    const {'1': 'captchaId', '3': 2, '4': 1, '5': 9, '10': 'captchaId'},
    const {'1': 'captchaCode', '3': 3, '4': 1, '5': 9, '10': 'captchaCode'},
  ],
};

/// Descriptor for `GetCaptchaResp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getCaptchaRespDescriptor = $convert.base64Decode('Cg5HZXRDYXB0Y2hhUmVzcBIqCgZoZWFkZXIYASABKAsyEi5wYi5SZXNwb25zZUhlYWRlclIGaGVhZGVyEhwKCWNhcHRjaGFJZBgCIAEoCVIJY2FwdGNoYUlkEiAKC2NhcHRjaGFDb2RlGAMgASgJUgtjYXB0Y2hhQ29kZQ==');
@$core.Deprecated('Use captchaVerifyReqDescriptor instead')
const CaptchaVerifyReq$json = const {
  '1': 'CaptchaVerifyReq',
  '2': const [
    const {'1': 'header', '3': 1, '4': 1, '5': 11, '6': '.pb.RequestHeader', '10': 'header'},
    const {'1': 'captchaId', '3': 2, '4': 1, '5': 9, '10': 'captchaId'},
    const {'1': 'captchaCode', '3': 3, '4': 1, '5': 9, '10': 'captchaCode'},
    const {'1': 'delete', '3': 4, '4': 1, '5': 8, '10': 'delete'},
  ],
};

/// Descriptor for `CaptchaVerifyReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List captchaVerifyReqDescriptor = $convert.base64Decode('ChBDYXB0Y2hhVmVyaWZ5UmVxEikKBmhlYWRlchgBIAEoCzIRLnBiLlJlcXVlc3RIZWFkZXJSBmhlYWRlchIcCgljYXB0Y2hhSWQYAiABKAlSCWNhcHRjaGFJZBIgCgtjYXB0Y2hhQ29kZRgDIAEoCVILY2FwdGNoYUNvZGUSFgoGZGVsZXRlGAQgASgIUgZkZWxldGU=');
@$core.Deprecated('Use captchaVerifyRespDescriptor instead')
const CaptchaVerifyResp$json = const {
  '1': 'CaptchaVerifyResp',
  '2': const [
    const {'1': 'header', '3': 1, '4': 1, '5': 11, '6': '.pb.ResponseHeader', '10': 'header'},
    const {'1': 'success', '3': 2, '4': 1, '5': 8, '10': 'success'},
  ],
};

/// Descriptor for `CaptchaVerifyResp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List captchaVerifyRespDescriptor = $convert.base64Decode('ChFDYXB0Y2hhVmVyaWZ5UmVzcBIqCgZoZWFkZXIYASABKAsyEi5wYi5SZXNwb25zZUhlYWRlclIGaGVhZGVyEhgKB3N1Y2Nlc3MYAiABKAhSB3N1Y2Nlc3M=');
const $core.Map<$core.String, $core.dynamic> smsServiceBase$json = const {
  '1': 'smsService',
  '2': const [
    const {'1': 'SmsCodeSend', '2': '.pb.SmsCodeSendReq', '3': '.pb.SmsCodeSendResp', '4': const {}},
    const {'1': 'SmsCodeVerify', '2': '.pb.SmsCodeVerifyReq', '3': '.pb.SmsCodeVerifyResp', '4': const {}},
  ],
};

@$core.Deprecated('Use smsServiceDescriptor instead')
const $core.Map<$core.String, $core.Map<$core.String, $core.dynamic>> smsServiceBase$messageJson = const {
  '.pb.SmsCodeSendReq': SmsCodeSendReq$json,
  '.pb.RequestHeader': $0.RequestHeader$json,
  '.pb.SmsCodeSendResp': SmsCodeSendResp$json,
  '.pb.ResponseHeader': $0.ResponseHeader$json,
  '.pb.SmsCodeVerifyReq': SmsCodeVerifyReq$json,
  '.pb.SmsCodeVerifyResp': SmsCodeVerifyResp$json,
};

/// Descriptor for `smsService`. Decode as a `google.protobuf.ServiceDescriptorProto`.
final $typed_data.Uint8List smsServiceDescriptor = $convert.base64Decode('CgpzbXNTZXJ2aWNlEjgKC1Ntc0NvZGVTZW5kEhIucGIuU21zQ29kZVNlbmRSZXEaEy5wYi5TbXNDb2RlU2VuZFJlc3AiABI+Cg1TbXNDb2RlVmVyaWZ5EhQucGIuU21zQ29kZVZlcmlmeVJlcRoVLnBiLlNtc0NvZGVWZXJpZnlSZXNwIgA=');
const $core.Map<$core.String, $core.dynamic> emailServiceBase$json = const {
  '1': 'emailService',
  '2': const [
    const {'1': 'EmailCodeSend', '2': '.pb.EmailCodeSendReq', '3': '.pb.EmailCodeSendResp', '4': const {}},
    const {'1': 'EmailCodeVerify', '2': '.pb.EmailCodeVerifyReq', '3': '.pb.EmailCodeVerifyResp', '4': const {}},
  ],
};

@$core.Deprecated('Use emailServiceDescriptor instead')
const $core.Map<$core.String, $core.Map<$core.String, $core.dynamic>> emailServiceBase$messageJson = const {
  '.pb.EmailCodeSendReq': EmailCodeSendReq$json,
  '.pb.RequestHeader': $0.RequestHeader$json,
  '.pb.EmailCodeSendResp': EmailCodeSendResp$json,
  '.pb.ResponseHeader': $0.ResponseHeader$json,
  '.pb.EmailCodeVerifyReq': EmailCodeVerifyReq$json,
  '.pb.EmailCodeVerifyResp': EmailCodeVerifyResp$json,
};

/// Descriptor for `emailService`. Decode as a `google.protobuf.ServiceDescriptorProto`.
final $typed_data.Uint8List emailServiceDescriptor = $convert.base64Decode('CgxlbWFpbFNlcnZpY2USPgoNRW1haWxDb2RlU2VuZBIULnBiLkVtYWlsQ29kZVNlbmRSZXEaFS5wYi5FbWFpbENvZGVTZW5kUmVzcCIAEkQKD0VtYWlsQ29kZVZlcmlmeRIWLnBiLkVtYWlsQ29kZVZlcmlmeVJlcRoXLnBiLkVtYWlsQ29kZVZlcmlmeVJlc3AiAA==');
const $core.Map<$core.String, $core.dynamic> captchaServiceBase$json = const {
  '1': 'captchaService',
  '2': const [
    const {'1': 'GetCaptcha', '2': '.pb.GetCaptchaReq', '3': '.pb.GetCaptchaResp', '4': const {}},
    const {'1': 'CaptchaVerify', '2': '.pb.CaptchaVerifyReq', '3': '.pb.CaptchaVerifyResp', '4': const {}},
  ],
};

@$core.Deprecated('Use captchaServiceDescriptor instead')
const $core.Map<$core.String, $core.Map<$core.String, $core.dynamic>> captchaServiceBase$messageJson = const {
  '.pb.GetCaptchaReq': GetCaptchaReq$json,
  '.pb.RequestHeader': $0.RequestHeader$json,
  '.pb.GetCaptchaResp': GetCaptchaResp$json,
  '.pb.ResponseHeader': $0.ResponseHeader$json,
  '.pb.CaptchaVerifyReq': CaptchaVerifyReq$json,
  '.pb.CaptchaVerifyResp': CaptchaVerifyResp$json,
};

/// Descriptor for `captchaService`. Decode as a `google.protobuf.ServiceDescriptorProto`.
final $typed_data.Uint8List captchaServiceDescriptor = $convert.base64Decode('Cg5jYXB0Y2hhU2VydmljZRI1CgpHZXRDYXB0Y2hhEhEucGIuR2V0Q2FwdGNoYVJlcRoSLnBiLkdldENhcHRjaGFSZXNwIgASPgoNQ2FwdGNoYVZlcmlmeRIULnBiLkNhcHRjaGFWZXJpZnlSZXEaFS5wYi5DYXB0Y2hhVmVyaWZ5UmVzcCIA');
