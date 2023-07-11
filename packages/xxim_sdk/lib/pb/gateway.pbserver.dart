///
//  Generated code. Do not modify.
//  source: gateway.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'package:protobuf/protobuf.dart' as $pb;

import 'dart:core' as $core;
import 'gateway.pb.dart' as $2;
import 'gateway.pbjson.dart';

export 'gateway.pb.dart';

abstract class gatewayServiceBase extends $pb.GeneratedService {
  $async.Future<$2.GatewayGetUserConnectionResp> gatewayGetUserConnection($pb.ServerContext ctx, $2.GatewayGetUserConnectionReq request);
  $async.Future<$2.GatewayBatchGetUserConnectionResp> gatewayBatchGetUserConnection($pb.ServerContext ctx, $2.GatewayBatchGetUserConnectionReq request);
  $async.Future<$2.GatewayGetConnectionByFilterResp> gatewayGetConnectionByFilter($pb.ServerContext ctx, $2.GatewayGetConnectionByFilterReq request);
  $async.Future<$2.GatewayWriteDataToWsResp> gatewayWriteDataToWs($pb.ServerContext ctx, $2.GatewayWriteDataToWsReq request);
  $async.Future<$2.GatewayWriteDataToWsResp> gatewayWriteDataToWsWrapper($pb.ServerContext ctx, $2.GatewayWriteDataToWsWrapperReq request);
  $async.Future<$2.GatewayKickWsResp> gatewayKickWs($pb.ServerContext ctx, $2.GatewayKickWsReq request);
  $async.Future<$2.GatewayKeepAliveResp> gatewayKeepAlive($pb.ServerContext ctx, $2.GatewayKeepAliveReq request);
  $async.Future<$2.VerifyConnectionResp> verifyConnection($pb.ServerContext ctx, $2.VerifyConnectionReq request);
  $async.Future<$2.AuthenticationConnectionResp> authenticationConnection($pb.ServerContext ctx, $2.AuthenticationConnectionReq request);

  $pb.GeneratedMessage createRequest($core.String method) {
    switch (method) {
      case 'GatewayGetUserConnection': return $2.GatewayGetUserConnectionReq();
      case 'GatewayBatchGetUserConnection': return $2.GatewayBatchGetUserConnectionReq();
      case 'GatewayGetConnectionByFilter': return $2.GatewayGetConnectionByFilterReq();
      case 'GatewayWriteDataToWs': return $2.GatewayWriteDataToWsReq();
      case 'GatewayWriteDataToWsWrapper': return $2.GatewayWriteDataToWsWrapperReq();
      case 'GatewayKickWs': return $2.GatewayKickWsReq();
      case 'GatewayKeepAlive': return $2.GatewayKeepAliveReq();
      case 'VerifyConnection': return $2.VerifyConnectionReq();
      case 'AuthenticationConnection': return $2.AuthenticationConnectionReq();
      default: throw $core.ArgumentError('Unknown method: $method');
    }
  }

  $async.Future<$pb.GeneratedMessage> handleCall($pb.ServerContext ctx, $core.String method, $pb.GeneratedMessage request) {
    switch (method) {
      case 'GatewayGetUserConnection': return this.gatewayGetUserConnection(ctx, request as $2.GatewayGetUserConnectionReq);
      case 'GatewayBatchGetUserConnection': return this.gatewayBatchGetUserConnection(ctx, request as $2.GatewayBatchGetUserConnectionReq);
      case 'GatewayGetConnectionByFilter': return this.gatewayGetConnectionByFilter(ctx, request as $2.GatewayGetConnectionByFilterReq);
      case 'GatewayWriteDataToWs': return this.gatewayWriteDataToWs(ctx, request as $2.GatewayWriteDataToWsReq);
      case 'GatewayWriteDataToWsWrapper': return this.gatewayWriteDataToWsWrapper(ctx, request as $2.GatewayWriteDataToWsWrapperReq);
      case 'GatewayKickWs': return this.gatewayKickWs(ctx, request as $2.GatewayKickWsReq);
      case 'GatewayKeepAlive': return this.gatewayKeepAlive(ctx, request as $2.GatewayKeepAliveReq);
      case 'VerifyConnection': return this.verifyConnection(ctx, request as $2.VerifyConnectionReq);
      case 'AuthenticationConnection': return this.authenticationConnection(ctx, request as $2.AuthenticationConnectionReq);
      default: throw $core.ArgumentError('Unknown method: $method');
    }
  }

  $core.Map<$core.String, $core.dynamic> get $json => gatewayServiceBase$json;
  $core.Map<$core.String, $core.Map<$core.String, $core.dynamic>> get $messageJson => gatewayServiceBase$messageJson;
}

