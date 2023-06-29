///
//  Generated code. Do not modify.
//  source: conversation.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'package:protobuf/protobuf.dart' as $pb;

import 'dart:core' as $core;
import 'conversation.pb.dart' as $1;
import 'conversation.pbjson.dart';

export 'conversation.pb.dart';

abstract class groupServiceBase extends $pb.GeneratedService {
  $async.Future<$1.GroupCreateResp> groupCreate($pb.ServerContext ctx, $1.GroupCreateReq request);
  $async.Future<$1.CountJoinGroupResp> countJoinGroup($pb.ServerContext ctx, $1.CountJoinGroupReq request);
  $async.Future<$1.CountCreateGroupResp> countCreateGroup($pb.ServerContext ctx, $1.CountCreateGroupReq request);
  $async.Future<$1.GroupSubscribeResp> groupSubscribe($pb.ServerContext ctx, $1.GroupSubscribeReq request);
  $async.Future<$1.ListGroupSubscribersResp> listGroupSubscribers($pb.ServerContext ctx, $1.ListGroupSubscribersReq request);

  $pb.GeneratedMessage createRequest($core.String method) {
    switch (method) {
      case 'GroupCreate': return $1.GroupCreateReq();
      case 'CountJoinGroup': return $1.CountJoinGroupReq();
      case 'CountCreateGroup': return $1.CountCreateGroupReq();
      case 'GroupSubscribe': return $1.GroupSubscribeReq();
      case 'ListGroupSubscribers': return $1.ListGroupSubscribersReq();
      default: throw $core.ArgumentError('Unknown method: $method');
    }
  }

  $async.Future<$pb.GeneratedMessage> handleCall($pb.ServerContext ctx, $core.String method, $pb.GeneratedMessage request) {
    switch (method) {
      case 'GroupCreate': return this.groupCreate(ctx, request as $1.GroupCreateReq);
      case 'CountJoinGroup': return this.countJoinGroup(ctx, request as $1.CountJoinGroupReq);
      case 'CountCreateGroup': return this.countCreateGroup(ctx, request as $1.CountCreateGroupReq);
      case 'GroupSubscribe': return this.groupSubscribe(ctx, request as $1.GroupSubscribeReq);
      case 'ListGroupSubscribers': return this.listGroupSubscribers(ctx, request as $1.ListGroupSubscribersReq);
      default: throw $core.ArgumentError('Unknown method: $method');
    }
  }

  $core.Map<$core.String, $core.dynamic> get $json => groupServiceBase$json;
  $core.Map<$core.String, $core.Map<$core.String, $core.dynamic>> get $messageJson => groupServiceBase$messageJson;
}

abstract class friendServiceBase extends $pb.GeneratedService {
  $async.Future<$1.FriendApplyResp> friendApply($pb.ServerContext ctx, $1.FriendApplyReq request);
  $async.Future<$1.FriendApplyHandleResp> friendApplyHandle($pb.ServerContext ctx, $1.FriendApplyHandleReq request);
  $async.Future<$1.ListFriendApplyResp> listFriendApply($pb.ServerContext ctx, $1.ListFriendApplyReq request);
  $async.Future<$1.CountFriendResp> countFriend($pb.ServerContext ctx, $1.CountFriendReq request);

  $pb.GeneratedMessage createRequest($core.String method) {
    switch (method) {
      case 'FriendApply': return $1.FriendApplyReq();
      case 'FriendApplyHandle': return $1.FriendApplyHandleReq();
      case 'ListFriendApply': return $1.ListFriendApplyReq();
      case 'CountFriend': return $1.CountFriendReq();
      default: throw $core.ArgumentError('Unknown method: $method');
    }
  }

  $async.Future<$pb.GeneratedMessage> handleCall($pb.ServerContext ctx, $core.String method, $pb.GeneratedMessage request) {
    switch (method) {
      case 'FriendApply': return this.friendApply(ctx, request as $1.FriendApplyReq);
      case 'FriendApplyHandle': return this.friendApplyHandle(ctx, request as $1.FriendApplyHandleReq);
      case 'ListFriendApply': return this.listFriendApply(ctx, request as $1.ListFriendApplyReq);
      case 'CountFriend': return this.countFriend(ctx, request as $1.CountFriendReq);
      default: throw $core.ArgumentError('Unknown method: $method');
    }
  }

  $core.Map<$core.String, $core.dynamic> get $json => friendServiceBase$json;
  $core.Map<$core.String, $core.Map<$core.String, $core.dynamic>> get $messageJson => friendServiceBase$messageJson;
}

abstract class conversationServiceBase extends $pb.GeneratedService {
  $async.Future<$1.ConversationSettingUpdateResp> conversationSettingUpdate($pb.ServerContext ctx, $1.ConversationSettingUpdateReq request);
  $async.Future<$1.ListJoinedConversationsResp> listJoinedConversations($pb.ServerContext ctx, $1.ListJoinedConversationsReq request);

  $pb.GeneratedMessage createRequest($core.String method) {
    switch (method) {
      case 'ConversationSettingUpdate': return $1.ConversationSettingUpdateReq();
      case 'ListJoinedConversations': return $1.ListJoinedConversationsReq();
      default: throw $core.ArgumentError('Unknown method: $method');
    }
  }

  $async.Future<$pb.GeneratedMessage> handleCall($pb.ServerContext ctx, $core.String method, $pb.GeneratedMessage request) {
    switch (method) {
      case 'ConversationSettingUpdate': return this.conversationSettingUpdate(ctx, request as $1.ConversationSettingUpdateReq);
      case 'ListJoinedConversations': return this.listJoinedConversations(ctx, request as $1.ListJoinedConversationsReq);
      default: throw $core.ArgumentError('Unknown method: $method');
    }
  }

  $core.Map<$core.String, $core.dynamic> get $json => conversationServiceBase$json;
  $core.Map<$core.String, $core.Map<$core.String, $core.dynamic>> get $messageJson => conversationServiceBase$messageJson;
}

abstract class subscriptionServiceBase extends $pb.GeneratedService {
  $async.Future<$1.SubscriptionSubscribeResp> subscriptionSubscribe($pb.ServerContext ctx, $1.SubscriptionSubscribeReq request);
  $async.Future<$1.SubscriptionAfterOnlineResp> subscriptionAfterOnline($pb.ServerContext ctx, $1.SubscriptionAfterOnlineReq request);
  $async.Future<$1.UpsertUserSubscriptionResp> upsertUserSubscription($pb.ServerContext ctx, $1.UpsertUserSubscriptionReq request);
  $async.Future<$1.DeleteUserSubscriptionResp> deleteUserSubscription($pb.ServerContext ctx, $1.DeleteUserSubscriptionReq request);
  $async.Future<$1.ListSubscriptionSubscribersResp> listSubscriptionSubscribers($pb.ServerContext ctx, $1.ListSubscriptionSubscribersReq request);

  $pb.GeneratedMessage createRequest($core.String method) {
    switch (method) {
      case 'SubscriptionSubscribe': return $1.SubscriptionSubscribeReq();
      case 'SubscriptionAfterOnline': return $1.SubscriptionAfterOnlineReq();
      case 'UpsertUserSubscription': return $1.UpsertUserSubscriptionReq();
      case 'DeleteUserSubscription': return $1.DeleteUserSubscriptionReq();
      case 'ListSubscriptionSubscribers': return $1.ListSubscriptionSubscribersReq();
      default: throw $core.ArgumentError('Unknown method: $method');
    }
  }

  $async.Future<$pb.GeneratedMessage> handleCall($pb.ServerContext ctx, $core.String method, $pb.GeneratedMessage request) {
    switch (method) {
      case 'SubscriptionSubscribe': return this.subscriptionSubscribe(ctx, request as $1.SubscriptionSubscribeReq);
      case 'SubscriptionAfterOnline': return this.subscriptionAfterOnline(ctx, request as $1.SubscriptionAfterOnlineReq);
      case 'UpsertUserSubscription': return this.upsertUserSubscription(ctx, request as $1.UpsertUserSubscriptionReq);
      case 'DeleteUserSubscription': return this.deleteUserSubscription(ctx, request as $1.DeleteUserSubscriptionReq);
      case 'ListSubscriptionSubscribers': return this.listSubscriptionSubscribers(ctx, request as $1.ListSubscriptionSubscribersReq);
      default: throw $core.ArgumentError('Unknown method: $method');
    }
  }

  $core.Map<$core.String, $core.dynamic> get $json => subscriptionServiceBase$json;
  $core.Map<$core.String, $core.Map<$core.String, $core.dynamic>> get $messageJson => subscriptionServiceBase$messageJson;
}

