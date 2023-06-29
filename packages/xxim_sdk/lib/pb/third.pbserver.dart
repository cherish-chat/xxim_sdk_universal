///
//  Generated code. Do not modify.
//  source: third.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'package:protobuf/protobuf.dart' as $pb;

import 'dart:core' as $core;
import 'third.pb.dart' as $4;
import 'third.pbjson.dart';

export 'third.pb.dart';

abstract class smsServiceBase extends $pb.GeneratedService {
  $async.Future<$4.SmsCodeSendResp> smsCodeSend($pb.ServerContext ctx, $4.SmsCodeSendReq request);
  $async.Future<$4.SmsCodeVerifyResp> smsCodeVerify($pb.ServerContext ctx, $4.SmsCodeVerifyReq request);

  $pb.GeneratedMessage createRequest($core.String method) {
    switch (method) {
      case 'SmsCodeSend': return $4.SmsCodeSendReq();
      case 'SmsCodeVerify': return $4.SmsCodeVerifyReq();
      default: throw $core.ArgumentError('Unknown method: $method');
    }
  }

  $async.Future<$pb.GeneratedMessage> handleCall($pb.ServerContext ctx, $core.String method, $pb.GeneratedMessage request) {
    switch (method) {
      case 'SmsCodeSend': return this.smsCodeSend(ctx, request as $4.SmsCodeSendReq);
      case 'SmsCodeVerify': return this.smsCodeVerify(ctx, request as $4.SmsCodeVerifyReq);
      default: throw $core.ArgumentError('Unknown method: $method');
    }
  }

  $core.Map<$core.String, $core.dynamic> get $json => smsServiceBase$json;
  $core.Map<$core.String, $core.Map<$core.String, $core.dynamic>> get $messageJson => smsServiceBase$messageJson;
}

abstract class emailServiceBase extends $pb.GeneratedService {
  $async.Future<$4.EmailCodeSendResp> emailCodeSend($pb.ServerContext ctx, $4.EmailCodeSendReq request);
  $async.Future<$4.EmailCodeVerifyResp> emailCodeVerify($pb.ServerContext ctx, $4.EmailCodeVerifyReq request);

  $pb.GeneratedMessage createRequest($core.String method) {
    switch (method) {
      case 'EmailCodeSend': return $4.EmailCodeSendReq();
      case 'EmailCodeVerify': return $4.EmailCodeVerifyReq();
      default: throw $core.ArgumentError('Unknown method: $method');
    }
  }

  $async.Future<$pb.GeneratedMessage> handleCall($pb.ServerContext ctx, $core.String method, $pb.GeneratedMessage request) {
    switch (method) {
      case 'EmailCodeSend': return this.emailCodeSend(ctx, request as $4.EmailCodeSendReq);
      case 'EmailCodeVerify': return this.emailCodeVerify(ctx, request as $4.EmailCodeVerifyReq);
      default: throw $core.ArgumentError('Unknown method: $method');
    }
  }

  $core.Map<$core.String, $core.dynamic> get $json => emailServiceBase$json;
  $core.Map<$core.String, $core.Map<$core.String, $core.dynamic>> get $messageJson => emailServiceBase$messageJson;
}

abstract class captchaServiceBase extends $pb.GeneratedService {
  $async.Future<$4.GetCaptchaResp> getCaptcha($pb.ServerContext ctx, $4.GetCaptchaReq request);
  $async.Future<$4.CaptchaVerifyResp> captchaVerify($pb.ServerContext ctx, $4.CaptchaVerifyReq request);

  $pb.GeneratedMessage createRequest($core.String method) {
    switch (method) {
      case 'GetCaptcha': return $4.GetCaptchaReq();
      case 'CaptchaVerify': return $4.CaptchaVerifyReq();
      default: throw $core.ArgumentError('Unknown method: $method');
    }
  }

  $async.Future<$pb.GeneratedMessage> handleCall($pb.ServerContext ctx, $core.String method, $pb.GeneratedMessage request) {
    switch (method) {
      case 'GetCaptcha': return this.getCaptcha(ctx, request as $4.GetCaptchaReq);
      case 'CaptchaVerify': return this.captchaVerify(ctx, request as $4.CaptchaVerifyReq);
      default: throw $core.ArgumentError('Unknown method: $method');
    }
  }

  $core.Map<$core.String, $core.dynamic> get $json => captchaServiceBase$json;
  $core.Map<$core.String, $core.Map<$core.String, $core.dynamic>> get $messageJson => captchaServiceBase$messageJson;
}

