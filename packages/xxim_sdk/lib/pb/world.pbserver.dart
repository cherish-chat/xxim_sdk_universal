///
//  Generated code. Do not modify.
//  source: world.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'package:protobuf/protobuf.dart' as $pb;

import 'dart:core' as $core;
import 'world.pb.dart' as $6;
import 'world.pbjson.dart';

export 'world.pb.dart';

abstract class worldServiceBase extends $pb.GeneratedService {
  $async.Future<$6.WorldPostSubmitResp> worldPostSubmit($pb.ServerContext ctx, $6.WorldPostSubmitReq request);

  $pb.GeneratedMessage createRequest($core.String method) {
    switch (method) {
      case 'WorldPostSubmit': return $6.WorldPostSubmitReq();
      default: throw $core.ArgumentError('Unknown method: $method');
    }
  }

  $async.Future<$pb.GeneratedMessage> handleCall($pb.ServerContext ctx, $core.String method, $pb.GeneratedMessage request) {
    switch (method) {
      case 'WorldPostSubmit': return this.worldPostSubmit(ctx, request as $6.WorldPostSubmitReq);
      default: throw $core.ArgumentError('Unknown method: $method');
    }
  }

  $core.Map<$core.String, $core.dynamic> get $json => worldServiceBase$json;
  $core.Map<$core.String, $core.Map<$core.String, $core.dynamic>> get $messageJson => worldServiceBase$messageJson;
}

