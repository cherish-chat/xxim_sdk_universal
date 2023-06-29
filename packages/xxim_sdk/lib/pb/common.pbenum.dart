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

class I18nLanguage extends $pb.ProtobufEnum {
  static const I18nLanguage UNSET_LANGUAGE = I18nLanguage._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'UNSET_LANGUAGE');
  static const I18nLanguage Afrikaans = I18nLanguage._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Afrikaans');
  static const I18nLanguage Albanian = I18nLanguage._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Albanian');
  static const I18nLanguage Amharic = I18nLanguage._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Amharic');
  static const I18nLanguage Arabic = I18nLanguage._(4, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Arabic');
  static const I18nLanguage Armenian = I18nLanguage._(5, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Armenian');
  static const I18nLanguage Azerbaijani = I18nLanguage._(6, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Azerbaijani');
  static const I18nLanguage Bengali = I18nLanguage._(7, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Bengali');
  static const I18nLanguage Bosnian = I18nLanguage._(8, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Bosnian');
  static const I18nLanguage Bulgarian = I18nLanguage._(9, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Bulgarian');
  static const I18nLanguage Catalan = I18nLanguage._(10, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Catalan');
  static const I18nLanguage Chinese_Simplified = I18nLanguage._(11, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Chinese_Simplified');
  static const I18nLanguage Chinese_Traditional = I18nLanguage._(12, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Chinese_Traditional');
  static const I18nLanguage Croatian = I18nLanguage._(13, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Croatian');
  static const I18nLanguage Czech = I18nLanguage._(14, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Czech');
  static const I18nLanguage Danish = I18nLanguage._(15, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Danish');
  static const I18nLanguage Dari = I18nLanguage._(16, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Dari');
  static const I18nLanguage Dutch = I18nLanguage._(17, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Dutch');
  static const I18nLanguage English = I18nLanguage._(18, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'English');
  static const I18nLanguage Estonian = I18nLanguage._(19, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Estonian');
  static const I18nLanguage Farsi_Persian = I18nLanguage._(20, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Farsi_Persian');
  static const I18nLanguage Filipino_Tagalog = I18nLanguage._(21, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Filipino_Tagalog');
  static const I18nLanguage Finnish = I18nLanguage._(22, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Finnish');
  static const I18nLanguage French = I18nLanguage._(23, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'French');
  static const I18nLanguage French_Canada = I18nLanguage._(24, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'French_Canada');
  static const I18nLanguage Georgian = I18nLanguage._(25, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Georgian');
  static const I18nLanguage German = I18nLanguage._(26, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'German');
  static const I18nLanguage Greek = I18nLanguage._(27, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Greek');
  static const I18nLanguage Gujarati = I18nLanguage._(28, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Gujarati');
  static const I18nLanguage Haitian_Creole = I18nLanguage._(29, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Haitian_Creole');
  static const I18nLanguage Hausa = I18nLanguage._(30, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Hausa');
  static const I18nLanguage Hebrew = I18nLanguage._(31, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Hebrew');
  static const I18nLanguage Hindi = I18nLanguage._(32, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Hindi');
  static const I18nLanguage Hungarian = I18nLanguage._(33, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Hungarian');
  static const I18nLanguage Icelandic = I18nLanguage._(34, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Icelandic');
  static const I18nLanguage Indonesian = I18nLanguage._(35, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Indonesian');
  static const I18nLanguage Irish = I18nLanguage._(36, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Irish');
  static const I18nLanguage Italian = I18nLanguage._(37, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Italian');
  static const I18nLanguage Japanese = I18nLanguage._(38, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Japanese');
  static const I18nLanguage Kannada = I18nLanguage._(39, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Kannada');
  static const I18nLanguage Kazakh = I18nLanguage._(40, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Kazakh');
  static const I18nLanguage Korean = I18nLanguage._(41, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Korean');
  static const I18nLanguage Latvian = I18nLanguage._(42, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Latvian');
  static const I18nLanguage Lithuanian = I18nLanguage._(43, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Lithuanian');
  static const I18nLanguage Macedonian = I18nLanguage._(44, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Macedonian');
  static const I18nLanguage Malay = I18nLanguage._(45, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Malay');
  static const I18nLanguage Malayalam = I18nLanguage._(46, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Malayalam');
  static const I18nLanguage Maltese = I18nLanguage._(47, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Maltese');
  static const I18nLanguage Marathi = I18nLanguage._(48, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Marathi');
  static const I18nLanguage Mongolian = I18nLanguage._(49, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Mongolian');
  static const I18nLanguage Norwegian_Bokmal = I18nLanguage._(50, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Norwegian_Bokmal');
  static const I18nLanguage Pashto = I18nLanguage._(51, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Pashto');
  static const I18nLanguage Polish = I18nLanguage._(52, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Polish');
  static const I18nLanguage Portuguese_Brazil = I18nLanguage._(53, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Portuguese_Brazil');
  static const I18nLanguage Portuguese_Portugal = I18nLanguage._(54, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Portuguese_Portugal');
  static const I18nLanguage Punjabi = I18nLanguage._(55, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Punjabi');
  static const I18nLanguage Romanian = I18nLanguage._(56, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Romanian');
  static const I18nLanguage Russian = I18nLanguage._(57, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Russian');
  static const I18nLanguage Serbian = I18nLanguage._(58, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Serbian');
  static const I18nLanguage Sinhala = I18nLanguage._(59, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Sinhala');
  static const I18nLanguage Slovak = I18nLanguage._(60, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Slovak');
  static const I18nLanguage Slovenian = I18nLanguage._(61, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Slovenian');
  static const I18nLanguage Somali = I18nLanguage._(62, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Somali');
  static const I18nLanguage Spanish = I18nLanguage._(63, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Spanish');
  static const I18nLanguage Spanish_Mexico = I18nLanguage._(64, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Spanish_Mexico');
  static const I18nLanguage Swahili = I18nLanguage._(65, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Swahili');
  static const I18nLanguage Swedish = I18nLanguage._(66, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Swedish');
  static const I18nLanguage Tamil = I18nLanguage._(67, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Tamil');
  static const I18nLanguage Telugu = I18nLanguage._(68, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Telugu');
  static const I18nLanguage Thai = I18nLanguage._(69, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Thai');
  static const I18nLanguage Turkish = I18nLanguage._(70, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Turkish');
  static const I18nLanguage Ukrainian = I18nLanguage._(71, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Ukrainian');
  static const I18nLanguage Urdu = I18nLanguage._(72, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Urdu');
  static const I18nLanguage Uzbek = I18nLanguage._(73, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Uzbek');
  static const I18nLanguage Vietnamese = I18nLanguage._(74, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Vietnamese');
  static const I18nLanguage Welsh = I18nLanguage._(75, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Welsh');

  static const $core.List<I18nLanguage> values = <I18nLanguage> [
    UNSET_LANGUAGE,
    Afrikaans,
    Albanian,
    Amharic,
    Arabic,
    Armenian,
    Azerbaijani,
    Bengali,
    Bosnian,
    Bulgarian,
    Catalan,
    Chinese_Simplified,
    Chinese_Traditional,
    Croatian,
    Czech,
    Danish,
    Dari,
    Dutch,
    English,
    Estonian,
    Farsi_Persian,
    Filipino_Tagalog,
    Finnish,
    French,
    French_Canada,
    Georgian,
    German,
    Greek,
    Gujarati,
    Haitian_Creole,
    Hausa,
    Hebrew,
    Hindi,
    Hungarian,
    Icelandic,
    Indonesian,
    Irish,
    Italian,
    Japanese,
    Kannada,
    Kazakh,
    Korean,
    Latvian,
    Lithuanian,
    Macedonian,
    Malay,
    Malayalam,
    Maltese,
    Marathi,
    Mongolian,
    Norwegian_Bokmal,
    Pashto,
    Polish,
    Portuguese_Brazil,
    Portuguese_Portugal,
    Punjabi,
    Romanian,
    Russian,
    Serbian,
    Sinhala,
    Slovak,
    Slovenian,
    Somali,
    Spanish,
    Spanish_Mexico,
    Swahili,
    Swedish,
    Tamil,
    Telugu,
    Thai,
    Turkish,
    Ukrainian,
    Urdu,
    Uzbek,
    Vietnamese,
    Welsh,
  ];

  static final $core.Map<$core.int, I18nLanguage> _byValue = $pb.ProtobufEnum.initByValue(values);
  static I18nLanguage? valueOf($core.int value) => _byValue[value];

  const I18nLanguage._($core.int v, $core.String n) : super(v, n);
}

class EncodingProto extends $pb.ProtobufEnum {
  static const EncodingProto PROTOBUF = EncodingProto._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'PROTOBUF');
  static const EncodingProto JSON = EncodingProto._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'JSON');

  static const $core.List<EncodingProto> values = <EncodingProto> [
    PROTOBUF,
    JSON,
  ];

  static final $core.Map<$core.int, EncodingProto> _byValue = $pb.ProtobufEnum.initByValue(values);
  static EncodingProto? valueOf($core.int value) => _byValue[value];

  const EncodingProto._($core.int v, $core.String n) : super(v, n);
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
  static const WebsocketCustomCloseCode CloseCodeAuthenticationFailed = WebsocketCustomCloseCode._(4001, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'CloseCodeAuthenticationFailed');
  static const WebsocketCustomCloseCode CloseCodeDuplicateConnection = WebsocketCustomCloseCode._(4002, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'CloseCodeDuplicateConnection');
  static const WebsocketCustomCloseCode CloseCodeServerInternalError = WebsocketCustomCloseCode._(4003, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'CloseCodeServerInternalError');
  static const WebsocketCustomCloseCode CloseCodeHeartbeatTimeout = WebsocketCustomCloseCode._(4004, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'CloseCodeHeartbeatTimeout');

  static const $core.List<WebsocketCustomCloseCode> values = <WebsocketCustomCloseCode> [
    CloseCodeZero,
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

