///
//  Generated code. Do not modify.
//  source: common.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

// ignore_for_file: UNDEFINED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class Platform extends $pb.ProtobufEnum {
  static const Platform IOS = Platform._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'IOS');
  static const Platform ANDROID = Platform._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ANDROID');
  static const Platform WEB = Platform._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'WEB');
  static const Platform WINDOWS = Platform._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'WINDOWS');
  static const Platform MAC = Platform._(4, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'MAC');
  static const Platform LINUX = Platform._(5, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'LINUX');
  static const Platform Ipad = Platform._(6, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Ipad');
  static const Platform AndroidPad = Platform._(7, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'AndroidPad');

  static const $core.List<Platform> values = <Platform> [
    IOS,
    ANDROID,
    WEB,
    WINDOWS,
    MAC,
    LINUX,
    Ipad,
    AndroidPad,
  ];

  static final $core.Map<$core.int, Platform> _byValue = $pb.ProtobufEnum.initByValue(values);
  static Platform? valueOf($core.int value) => _byValue[value];

  const Platform._($core.int v, $core.String n) : super(v, n);
}

class ResponseCode extends $pb.ProtobufEnum {
  static const ResponseCode SUCCESS = ResponseCode._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'SUCCESS');
  static const ResponseCode INVALID_DATA = ResponseCode._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'INVALID_DATA');
  static const ResponseCode UNAUTHORIZED = ResponseCode._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'UNAUTHORIZED');
  static const ResponseCode FORBIDDEN = ResponseCode._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'FORBIDDEN');
  static const ResponseCode INVALID_METHOD = ResponseCode._(4, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'INVALID_METHOD');
  static const ResponseCode TIMEOUT = ResponseCode._(5, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'TIMEOUT');
  static const ResponseCode SERVER_ERROR = ResponseCode._(6, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'SERVER_ERROR');

  static const $core.List<ResponseCode> values = <ResponseCode> [
    SUCCESS,
    INVALID_DATA,
    UNAUTHORIZED,
    FORBIDDEN,
    INVALID_METHOD,
    TIMEOUT,
    SERVER_ERROR,
  ];

  static final $core.Map<$core.int, ResponseCode> _byValue = $pb.ProtobufEnum.initByValue(values);
  static ResponseCode? valueOf($core.int value) => _byValue[value];

  const ResponseCode._($core.int v, $core.String n) : super(v, n);
}

class ResponseActionType extends $pb.ProtobufEnum {
  static const ResponseActionType NONE_ACTION = ResponseActionType._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'NONE_ACTION');
  static const ResponseActionType TOAST_ACTION = ResponseActionType._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'TOAST_ACTION');
  static const ResponseActionType ALERT_ACTION = ResponseActionType._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ALERT_ACTION');
  static const ResponseActionType SECOND_AUTH_ACTION = ResponseActionType._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'SECOND_AUTH_ACTION');

  static const $core.List<ResponseActionType> values = <ResponseActionType> [
    NONE_ACTION,
    TOAST_ACTION,
    ALERT_ACTION,
    SECOND_AUTH_ACTION,
  ];

  static final $core.Map<$core.int, ResponseActionType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static ResponseActionType? valueOf($core.int value) => _byValue[value];

  const ResponseActionType._($core.int v, $core.String n) : super(v, n);
}

class WebsocketCustomCloseCode extends $pb.ProtobufEnum {
  static const WebsocketCustomCloseCode CloseCodeZero = WebsocketCustomCloseCode._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'CloseCodeZero');
  static const WebsocketCustomCloseCode CloseCodeNormalClose = WebsocketCustomCloseCode._(1000, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'CloseCodeNormalClose');
  static const WebsocketCustomCloseCode CloseCodeGoingAway = WebsocketCustomCloseCode._(1001, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'CloseCodeGoingAway');
  static const WebsocketCustomCloseCode CloseCodeProtocolError = WebsocketCustomCloseCode._(1002, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'CloseCodeProtocolError');
  static const WebsocketCustomCloseCode CloseCodeUnsupportedData = WebsocketCustomCloseCode._(1003, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'CloseCodeUnsupportedData');
  static const WebsocketCustomCloseCode CloseCodeNoStatusReceived = WebsocketCustomCloseCode._(1005, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'CloseCodeNoStatusReceived');
  static const WebsocketCustomCloseCode CloseCodeAbnormalClosure = WebsocketCustomCloseCode._(1006, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'CloseCodeAbnormalClosure');
  static const WebsocketCustomCloseCode CloseCodeAuthenticationFailed = WebsocketCustomCloseCode._(4001, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'CloseCodeAuthenticationFailed');
  static const WebsocketCustomCloseCode CloseCodeDuplicateConnection = WebsocketCustomCloseCode._(4002, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'CloseCodeDuplicateConnection');
  static const WebsocketCustomCloseCode CloseCodeServerInternalError = WebsocketCustomCloseCode._(4003, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'CloseCodeServerInternalError');
  static const WebsocketCustomCloseCode CloseCodeHeartbeatTimeout = WebsocketCustomCloseCode._(4004, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'CloseCodeHeartbeatTimeout');

  static const $core.List<WebsocketCustomCloseCode> values = <WebsocketCustomCloseCode> [
    CloseCodeZero,
    CloseCodeNormalClose,
    CloseCodeGoingAway,
    CloseCodeProtocolError,
    CloseCodeUnsupportedData,
    CloseCodeNoStatusReceived,
    CloseCodeAbnormalClosure,
    CloseCodeAuthenticationFailed,
    CloseCodeDuplicateConnection,
    CloseCodeServerInternalError,
    CloseCodeHeartbeatTimeout,
  ];

  static final $core.Map<$core.int, WebsocketCustomCloseCode> _byValue = $pb.ProtobufEnum.initByValue(values);
  static WebsocketCustomCloseCode? valueOf($core.int value) => _byValue[value];

  const WebsocketCustomCloseCode._($core.int v, $core.String n) : super(v, n);
}

class ConversationType extends $pb.ProtobufEnum {
  static const ConversationType Single = ConversationType._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Single');
  static const ConversationType Group = ConversationType._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Group');
  static const ConversationType Subscription = ConversationType._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Subscription');

  static const $core.List<ConversationType> values = <ConversationType> [
    Single,
    Group,
    Subscription,
  ];

  static final $core.Map<$core.int, ConversationType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static ConversationType? valueOf($core.int value) => _byValue[value];

  const ConversationType._($core.int v, $core.String n) : super(v, n);
}

class NoticeContentType extends $pb.ProtobufEnum {
  static const NoticeContentType NewFriendRequest = NoticeContentType._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'NewFriendRequest');
  static const NoticeContentType JoinNewGroup = NoticeContentType._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'JoinNewGroup');
  static const NoticeContentType OnlineStatus = NoticeContentType._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'OnlineStatus');

  static const $core.List<NoticeContentType> values = <NoticeContentType> [
    NewFriendRequest,
    JoinNewGroup,
    OnlineStatus,
  ];

  static final $core.Map<$core.int, NoticeContentType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static NoticeContentType? valueOf($core.int value) => _byValue[value];

  const NoticeContentType._($core.int v, $core.String n) : super(v, n);
}

class MessageContentType extends $pb.ProtobufEnum {
  static const MessageContentType Text = MessageContentType._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Text');
  static const MessageContentType Markdown = MessageContentType._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Markdown');
  static const MessageContentType Image = MessageContentType._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Image');
  static const MessageContentType Voice = MessageContentType._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Voice');
  static const MessageContentType Video = MessageContentType._(4, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Video');
  static const MessageContentType Typing = MessageContentType._(101, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Typing');
  static const MessageContentType Read = MessageContentType._(102, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Read');
  static const MessageContentType Recall = MessageContentType._(103, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Recall');

  static const $core.List<MessageContentType> values = <MessageContentType> [
    Text,
    Markdown,
    Image,
    Voice,
    Video,
    Typing,
    Read,
    Recall,
  ];

  static final $core.Map<$core.int, MessageContentType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static MessageContentType? valueOf($core.int value) => _byValue[value];

  const MessageContentType._($core.int v, $core.String n) : super(v, n);
}

class ConversationSettingKey extends $pb.ProtobufEnum {
  static const ConversationSettingKey IsPinned = ConversationSettingKey._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'IsPinned');
  static const ConversationSettingKey IsMuted = ConversationSettingKey._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'IsMuted');
  static const ConversationSettingKey IsBlocked = ConversationSettingKey._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'IsBlocked');
  static const ConversationSettingKey IsFolded = ConversationSettingKey._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'IsFolded');
  static const ConversationSettingKey ConversationAlias = ConversationSettingKey._(4, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ConversationAlias');
  static const ConversationSettingKey NicknameInConversation = ConversationSettingKey._(5, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'NicknameInConversation');

  static const $core.List<ConversationSettingKey> values = <ConversationSettingKey> [
    IsPinned,
    IsMuted,
    IsBlocked,
    IsFolded,
    ConversationAlias,
    NicknameInConversation,
  ];

  static final $core.Map<$core.int, ConversationSettingKey> _byValue = $pb.ProtobufEnum.initByValue(values);
  static ConversationSettingKey? valueOf($core.int value) => _byValue[value];

  const ConversationSettingKey._($core.int v, $core.String n) : super(v, n);
}

class ToastActionData_Level extends $pb.ProtobufEnum {
  static const ToastActionData_Level INFO = ToastActionData_Level._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'INFO');
  static const ToastActionData_Level WARN = ToastActionData_Level._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'WARN');
  static const ToastActionData_Level ERROR = ToastActionData_Level._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ERROR');

  static const $core.List<ToastActionData_Level> values = <ToastActionData_Level> [
    INFO,
    WARN,
    ERROR,
  ];

  static final $core.Map<$core.int, ToastActionData_Level> _byValue = $pb.ProtobufEnum.initByValue(values);
  static ToastActionData_Level? valueOf($core.int value) => _byValue[value];

  const ToastActionData_Level._($core.int v, $core.String n) : super(v, n);
}

class AlertActionData_ButtonType extends $pb.ProtobufEnum {
  static const AlertActionData_ButtonType NO_BUTTON = AlertActionData_ButtonType._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'NO_BUTTON');
  static const AlertActionData_ButtonType JUMP_URL = AlertActionData_ButtonType._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'JUMP_URL');

  static const $core.List<AlertActionData_ButtonType> values = <AlertActionData_ButtonType> [
    NO_BUTTON,
    JUMP_URL,
  ];

  static final $core.Map<$core.int, AlertActionData_ButtonType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static AlertActionData_ButtonType? valueOf($core.int value) => _byValue[value];

  const AlertActionData_ButtonType._($core.int v, $core.String n) : super(v, n);
}

