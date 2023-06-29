///
//  Generated code. Do not modify.
//  source: user.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'package:protobuf/protobuf.dart' as $pb;

import 'dart:core' as $core;
import 'user.pb.dart' as $5;
import 'user.pbjson.dart';

export 'user.pb.dart';

abstract class accountServiceBase extends $pb.GeneratedService {
  $async.Future<$5.UserRegisterResp> userRegister($pb.ServerContext ctx, $5.UserRegisterReq request);
  $async.Future<$5.UserDestroyResp> userDestroy($pb.ServerContext ctx, $5.UserDestroyReq request);
  $async.Future<$5.UserAccessTokenResp> userAccessToken($pb.ServerContext ctx, $5.UserAccessTokenReq request);
  $async.Future<$5.RefreshUserAccessTokenResp> refreshUserAccessToken($pb.ServerContext ctx, $5.RefreshUserAccessTokenReq request);
  $async.Future<$5.RevokeUserAccessTokenResp> revokeUserAccessToken($pb.ServerContext ctx, $5.RevokeUserAccessTokenReq request);
  $async.Future<$5.UpdateUserAccountMapResp> updateUserAccountMap($pb.ServerContext ctx, $5.UpdateUserAccountMapReq request);
  $async.Future<$5.ResetUserAccountMapResp> resetUserAccountMap($pb.ServerContext ctx, $5.ResetUserAccountMapReq request);
  $async.Future<$5.CreateRobotResp> createRobot($pb.ServerContext ctx, $5.CreateRobotReq request);

  $pb.GeneratedMessage createRequest($core.String method) {
    switch (method) {
      case 'UserRegister': return $5.UserRegisterReq();
      case 'UserDestroy': return $5.UserDestroyReq();
      case 'UserAccessToken': return $5.UserAccessTokenReq();
      case 'RefreshUserAccessToken': return $5.RefreshUserAccessTokenReq();
      case 'RevokeUserAccessToken': return $5.RevokeUserAccessTokenReq();
      case 'UpdateUserAccountMap': return $5.UpdateUserAccountMapReq();
      case 'ResetUserAccountMap': return $5.ResetUserAccountMapReq();
      case 'CreateRobot': return $5.CreateRobotReq();
      default: throw $core.ArgumentError('Unknown method: $method');
    }
  }

  $async.Future<$pb.GeneratedMessage> handleCall($pb.ServerContext ctx, $core.String method, $pb.GeneratedMessage request) {
    switch (method) {
      case 'UserRegister': return this.userRegister(ctx, request as $5.UserRegisterReq);
      case 'UserDestroy': return this.userDestroy(ctx, request as $5.UserDestroyReq);
      case 'UserAccessToken': return this.userAccessToken(ctx, request as $5.UserAccessTokenReq);
      case 'RefreshUserAccessToken': return this.refreshUserAccessToken(ctx, request as $5.RefreshUserAccessTokenReq);
      case 'RevokeUserAccessToken': return this.revokeUserAccessToken(ctx, request as $5.RevokeUserAccessTokenReq);
      case 'UpdateUserAccountMap': return this.updateUserAccountMap(ctx, request as $5.UpdateUserAccountMapReq);
      case 'ResetUserAccountMap': return this.resetUserAccountMap(ctx, request as $5.ResetUserAccountMapReq);
      case 'CreateRobot': return this.createRobot(ctx, request as $5.CreateRobotReq);
      default: throw $core.ArgumentError('Unknown method: $method');
    }
  }

  $core.Map<$core.String, $core.dynamic> get $json => accountServiceBase$json;
  $core.Map<$core.String, $core.Map<$core.String, $core.dynamic>> get $messageJson => accountServiceBase$messageJson;
}

abstract class infoServiceBase extends $pb.GeneratedService {
  $async.Future<$5.UpdateUserProfileMapResp> updateUserProfileMap($pb.ServerContext ctx, $5.UpdateUserProfileMapReq request);
  $async.Future<$5.UpdateUserExtraMapResp> updateUserExtraMap($pb.ServerContext ctx, $5.UpdateUserExtraMapReq request);
  $async.Future<$5.UpdateUserCountMapResp> updateUserCountMap($pb.ServerContext ctx, $5.UpdateUserCountMapReq request);
  $async.Future<$5.GetSelfUserInfoResp> getSelfUserInfo($pb.ServerContext ctx, $5.GetSelfUserInfoReq request);
  $async.Future<$5.GetUserInfoResp> getUserInfo($pb.ServerContext ctx, $5.GetUserInfoReq request);
  $async.Future<$5.GetUserModelByIdResp> getUserModelById($pb.ServerContext ctx, $5.GetUserModelByIdReq request);
  $async.Future<$5.GetUserModelByIdsResp> getUserModelByIds($pb.ServerContext ctx, $5.GetUserModelByIdsReq request);

  $pb.GeneratedMessage createRequest($core.String method) {
    switch (method) {
      case 'UpdateUserProfileMap': return $5.UpdateUserProfileMapReq();
      case 'UpdateUserExtraMap': return $5.UpdateUserExtraMapReq();
      case 'UpdateUserCountMap': return $5.UpdateUserCountMapReq();
      case 'GetSelfUserInfo': return $5.GetSelfUserInfoReq();
      case 'GetUserInfo': return $5.GetUserInfoReq();
      case 'GetUserModelById': return $5.GetUserModelByIdReq();
      case 'GetUserModelByIds': return $5.GetUserModelByIdsReq();
      default: throw $core.ArgumentError('Unknown method: $method');
    }
  }

  $async.Future<$pb.GeneratedMessage> handleCall($pb.ServerContext ctx, $core.String method, $pb.GeneratedMessage request) {
    switch (method) {
      case 'UpdateUserProfileMap': return this.updateUserProfileMap(ctx, request as $5.UpdateUserProfileMapReq);
      case 'UpdateUserExtraMap': return this.updateUserExtraMap(ctx, request as $5.UpdateUserExtraMapReq);
      case 'UpdateUserCountMap': return this.updateUserCountMap(ctx, request as $5.UpdateUserCountMapReq);
      case 'GetSelfUserInfo': return this.getSelfUserInfo(ctx, request as $5.GetSelfUserInfoReq);
      case 'GetUserInfo': return this.getUserInfo(ctx, request as $5.GetUserInfoReq);
      case 'GetUserModelById': return this.getUserModelById(ctx, request as $5.GetUserModelByIdReq);
      case 'GetUserModelByIds': return this.getUserModelByIds(ctx, request as $5.GetUserModelByIdsReq);
      default: throw $core.ArgumentError('Unknown method: $method');
    }
  }

  $core.Map<$core.String, $core.dynamic> get $json => infoServiceBase$json;
  $core.Map<$core.String, $core.Map<$core.String, $core.dynamic>> get $messageJson => infoServiceBase$messageJson;
}

abstract class callbackServiceBase extends $pb.GeneratedService {
  $async.Future<$5.UserAfterOnlineResp> userAfterOnline($pb.ServerContext ctx, $5.UserAfterOnlineReq request);
  $async.Future<$5.UserAfterOfflineResp> userAfterOffline($pb.ServerContext ctx, $5.UserAfterOfflineReq request);
  $async.Future<$5.UserBeforeConnectResp> userBeforeConnect($pb.ServerContext ctx, $5.UserBeforeConnectReq request);
  $async.Future<$5.UserBeforeRequestResp> userBeforeRequest($pb.ServerContext ctx, $5.UserBeforeRequestReq request);
  $async.Future<$5.UserAfterKeepAliveResp> userAfterKeepAlive($pb.ServerContext ctx, $5.UserAfterKeepAliveReq request);

  $pb.GeneratedMessage createRequest($core.String method) {
    switch (method) {
      case 'UserAfterOnline': return $5.UserAfterOnlineReq();
      case 'UserAfterOffline': return $5.UserAfterOfflineReq();
      case 'UserBeforeConnect': return $5.UserBeforeConnectReq();
      case 'UserBeforeRequest': return $5.UserBeforeRequestReq();
      case 'UserAfterKeepAlive': return $5.UserAfterKeepAliveReq();
      default: throw $core.ArgumentError('Unknown method: $method');
    }
  }

  $async.Future<$pb.GeneratedMessage> handleCall($pb.ServerContext ctx, $core.String method, $pb.GeneratedMessage request) {
    switch (method) {
      case 'UserAfterOnline': return this.userAfterOnline(ctx, request as $5.UserAfterOnlineReq);
      case 'UserAfterOffline': return this.userAfterOffline(ctx, request as $5.UserAfterOfflineReq);
      case 'UserBeforeConnect': return this.userBeforeConnect(ctx, request as $5.UserBeforeConnectReq);
      case 'UserBeforeRequest': return this.userBeforeRequest(ctx, request as $5.UserBeforeRequestReq);
      case 'UserAfterKeepAlive': return this.userAfterKeepAlive(ctx, request as $5.UserAfterKeepAliveReq);
      default: throw $core.ArgumentError('Unknown method: $method');
    }
  }

  $core.Map<$core.String, $core.dynamic> get $json => callbackServiceBase$json;
  $core.Map<$core.String, $core.Map<$core.String, $core.dynamic>> get $messageJson => callbackServiceBase$messageJson;
}

