/// RequestHeader 请求头
#[derive(serde::Serialize, serde::Deserialize)]
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct RequestHeader {
    /// 应用id
    #[prost(string, tag = "1")]
    pub app_id: ::prost::alloc::string::String,
    /// 用户id
    #[prost(string, tag = "2")]
    pub user_id: ::prost::alloc::string::String,
    /// token
    #[prost(string, tag = "3")]
    pub user_token: ::prost::alloc::string::String,
    /// 客户端ip
    #[prost(string, tag = "4")]
    pub client_ip: ::prost::alloc::string::String,
    /// 安装后向服务器注册的UUID
    #[prost(string, tag = "5")]
    pub install_id: ::prost::alloc::string::String,
    /// 平台
    #[prost(enumeration = "Platform", tag = "6")]
    pub platform: i32,
    /// 网关pod的ip
    #[prost(string, tag = "7")]
    pub gateway_pod_ip: ::prost::alloc::string::String,
    /// 设备型号
    #[prost(string, tag = "8")]
    pub device_model: ::prost::alloc::string::String,
    /// 操作系统版本
    #[prost(string, tag = "9")]
    pub os_version: ::prost::alloc::string::String,
    /// app版本
    #[prost(string, tag = "10")]
    pub app_version: ::prost::alloc::string::String,
    /// 语言
    #[prost(enumeration = "I18nLanguage", tag = "11")]
    pub language: i32,
    /// 连接时间 13位时间戳
    #[prost(int64, tag = "12")]
    pub connect_time: i64,
    /// 编码
    #[prost(enumeration = "EncodingProto", tag = "13")]
    pub encoding: i32,
    /// 额外信息
    #[prost(string, tag = "14")]
    pub extra: ::prost::alloc::string::String,
}
/// ToastActionData toast提示 客户端根据level显示不同的颜色 可能持续不同的时间
#[derive(serde::Serialize, serde::Deserialize)]
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct ToastActionData {
    /// 级别
    #[prost(enumeration = "toast_action_data::Level", tag = "1")]
    pub level: i32,
    /// 消息
    #[prost(string, tag = "2")]
    pub message: ::prost::alloc::string::String,
}
/// Nested message and enum types in `ToastActionData`.
pub mod toast_action_data {
    #[derive(serde::Serialize, serde::Deserialize)]
    #[derive(
        Clone,
        Copy,
        Debug,
        PartialEq,
        Eq,
        Hash,
        PartialOrd,
        Ord,
        ::prost::Enumeration
    )]
    #[repr(i32)]
    pub enum Level {
        /// 信息
        Info = 0,
        /// 警告
        Warn = 1,
        /// 错误
        Error = 2,
    }
    impl Level {
        /// String value of the enum field names used in the ProtoBuf definition.
        ///
        /// The values are not transformed in any way and thus are considered stable
        /// (if the ProtoBuf definition does not change) and safe for programmatic use.
        pub fn as_str_name(&self) -> &'static str {
            match self {
                Level::Info => "INFO",
                Level::Warn => "WARN",
                Level::Error => "ERROR",
            }
        }
        /// Creates an enum from field names used in the ProtoBuf definition.
        pub fn from_str_name(value: &str) -> ::core::option::Option<Self> {
            match value {
                "INFO" => Some(Self::Info),
                "WARN" => Some(Self::Warn),
                "ERROR" => Some(Self::Error),
                _ => None,
            }
        }
    }
}
/// AlertActionData alert提示 永远有一个关闭按钮 以下描述的是另一个操作按钮
#[derive(serde::Serialize, serde::Deserialize)]
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct AlertActionData {
    /// 标题
    #[prost(string, tag = "1")]
    pub title: ::prost::alloc::string::String,
    /// 消息
    #[prost(string, tag = "2")]
    pub message: ::prost::alloc::string::String,
    /// 按钮类型
    #[prost(enumeration = "alert_action_data::ButtonType", tag = "3")]
    pub button_type: i32,
    /// 按钮标签
    #[prost(string, tag = "4")]
    pub button_label: ::prost::alloc::string::String,
    /// 按钮数据
    #[prost(string, tag = "5")]
    pub button_data: ::prost::alloc::string::String,
}
/// Nested message and enum types in `AlertActionData`.
pub mod alert_action_data {
    #[derive(serde::Serialize, serde::Deserialize)]
    #[derive(
        Clone,
        Copy,
        Debug,
        PartialEq,
        Eq,
        Hash,
        PartialOrd,
        Ord,
        ::prost::Enumeration
    )]
    #[repr(i32)]
    pub enum ButtonType {
        /// 无按钮
        NoButton = 0,
        /// 跳转url
        JumpUrl = 1,
    }
    impl ButtonType {
        /// String value of the enum field names used in the ProtoBuf definition.
        ///
        /// The values are not transformed in any way and thus are considered stable
        /// (if the ProtoBuf definition does not change) and safe for programmatic use.
        pub fn as_str_name(&self) -> &'static str {
            match self {
                ButtonType::NoButton => "NO_BUTTON",
                ButtonType::JumpUrl => "JUMP_URL",
            }
        }
        /// Creates an enum from field names used in the ProtoBuf definition.
        pub fn from_str_name(value: &str) -> ::core::option::Option<Self> {
            match value {
                "NO_BUTTON" => Some(Self::NoButton),
                "JUMP_URL" => Some(Self::JumpUrl),
                _ => None,
            }
        }
    }
}
/// ResponseHeader 响应头
#[derive(serde::Serialize, serde::Deserialize)]
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct ResponseHeader {
    /// 错误码
    #[prost(enumeration = "ResponseCode", tag = "1")]
    pub code: i32,
    /// 动作类型
    #[prost(enumeration = "ResponseActionType", tag = "2")]
    pub action_type: i32,
    /// 动作数据 json字符串
    #[prost(string, tag = "3")]
    pub action_data: ::prost::alloc::string::String,
    /// 额外信息
    #[prost(string, tag = "4")]
    pub extra: ::prost::alloc::string::String,
}
/// Message 消息
#[derive(serde::Serialize, serde::Deserialize)]
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct Message {
    /// MessageId 消息id 由服务端插入时生成
    #[prost(string, tag = "1")]
    pub message_id: ::prost::alloc::string::String,
    /// UUID 客户端生成的id 由客户端生成 在客户端保证唯一性
    #[prost(string, tag = "2")]
    pub uuid: ::prost::alloc::string::String,
    /// 发送到哪个会话
    ///
    /// 单聊: 那么该值为接受者的id；群聊：那么该值为群id；订阅号：那么该值为订阅号id
    #[prost(string, tag = "3")]
    pub conversation_id: ::prost::alloc::string::String,
    /// 会话类型
    #[prost(enumeration = "ConversationType", tag = "4")]
    pub conversation_type: i32,
    /// 有可能是系统 那么该值为空
    #[prost(message, optional, tag = "5")]
    pub sender: ::core::option::Option<message::Sender>,
    /// 消息内容
    #[prost(bytes = "vec", tag = "6")]
    pub content: ::prost::alloc::vec::Vec<u8>,
    /// 消息类型
    #[prost(enumeration = "MessageContentType", tag = "7")]
    pub content_type: i32,
    /// 发送时间 由客户端生成
    #[prost(int64, tag = "8")]
    pub send_time: i64,
    /// 插入时间 由服务端生成
    #[prost(int64, tag = "9")]
    pub insert_time: i64,
    /// 在会话中的消息顺序
    #[prost(int64, tag = "10")]
    pub seq: i64,
    #[prost(message, optional, tag = "16")]
    pub option: ::core::option::Option<message::Option>,
    /// extraMap, example: {"platformSource": "windows"}
    #[prost(map = "string, string", tag = "17")]
    pub extra_map: ::std::collections::HashMap<
        ::prost::alloc::string::String,
        ::prost::alloc::string::String,
    >,
}
/// Nested message and enum types in `Message`.
pub mod message {
    /// 发送者
    #[derive(serde::Serialize, serde::Deserialize)]
    #[allow(clippy::derive_partial_eq_without_eq)]
    #[derive(Clone, PartialEq, ::prost::Message)]
    pub struct Sender {
        /// 发送者id
        #[prost(string, tag = "1")]
        pub id: ::prost::alloc::string::String,
        /// 发送者名称
        #[prost(string, tag = "2")]
        pub name: ::prost::alloc::string::String,
        /// 发送者头像
        #[prost(string, tag = "3")]
        pub avatar: ::prost::alloc::string::String,
        /// extra
        #[prost(string, tag = "11")]
        pub extra: ::prost::alloc::string::String,
    }
    /// 选项
    #[derive(serde::Serialize, serde::Deserialize)]
    #[allow(clippy::derive_partial_eq_without_eq)]
    #[derive(Clone, PartialEq, ::prost::Message)]
    pub struct Option {
        /// 服务端是否保存该消息
        #[prost(bool, tag = "1")]
        pub storage_for_server: bool,
        /// 客户端是否保存该消息
        #[prost(bool, tag = "2")]
        pub storage_for_client: bool,
        /// 是否需要解密 （端对端加密技术，服务端无法解密）
        #[prost(bool, tag = "3")]
        pub need_decrypt: bool,
        /// 消息是否需要计入未读数
        #[prost(bool, tag = "4")]
        pub count_unread: bool,
    }
}
/// Notice 通知
#[derive(serde::Serialize, serde::Deserialize)]
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct Notice {
    /// 通知id 因为通知永远都是服务端发送给客户端的，所以通知id一定唯一。
    #[prost(string, tag = "1")]
    pub notice_id: ::prost::alloc::string::String,
    /// 发送到哪个会话
    ///
    /// 单聊: 那么该值为发送者和接受者的id；群聊：那么该值为群id；订阅号：那么该值为订阅号id
    #[prost(string, tag = "2")]
    pub conversation_id: ::prost::alloc::string::String,
    /// 会话类型
    #[prost(enumeration = "ConversationType", tag = "3")]
    pub conversation_type: i32,
    /// 通知内容
    #[prost(string, tag = "4")]
    pub content: ::prost::alloc::string::String,
    /// 通知类型
    #[prost(enumeration = "NoticeContentType", tag = "5")]
    pub content_type: i32,
    /// 通知的更新时间
    #[prost(int64, tag = "6")]
    pub update_time: i64,
    /// 排序
    #[prost(int64, tag = "7")]
    pub sort: i64,
}
/// Platform 平台枚举
#[derive(serde::Serialize, serde::Deserialize)]
#[derive(Clone, Copy, Debug, PartialEq, Eq, Hash, PartialOrd, Ord, ::prost::Enumeration)]
#[repr(i32)]
pub enum Platform {
    /// ios
    Ios = 0,
    /// android
    Android = 1,
    /// web
    Web = 2,
    /// windows
    Windows = 3,
    /// mac
    Mac = 4,
    /// linux
    Linux = 5,
    /// ipad
    Ipad = 6,
    /// android pad
    AndroidPad = 7,
}
impl Platform {
    /// String value of the enum field names used in the ProtoBuf definition.
    ///
    /// The values are not transformed in any way and thus are considered stable
    /// (if the ProtoBuf definition does not change) and safe for programmatic use.
    pub fn as_str_name(&self) -> &'static str {
        match self {
            Platform::Ios => "IOS",
            Platform::Android => "ANDROID",
            Platform::Web => "WEB",
            Platform::Windows => "WINDOWS",
            Platform::Mac => "MAC",
            Platform::Linux => "LINUX",
            Platform::Ipad => "Ipad",
            Platform::AndroidPad => "AndroidPad",
        }
    }
    /// Creates an enum from field names used in the ProtoBuf definition.
    pub fn from_str_name(value: &str) -> ::core::option::Option<Self> {
        match value {
            "IOS" => Some(Self::Ios),
            "ANDROID" => Some(Self::Android),
            "WEB" => Some(Self::Web),
            "WINDOWS" => Some(Self::Windows),
            "MAC" => Some(Self::Mac),
            "LINUX" => Some(Self::Linux),
            "Ipad" => Some(Self::Ipad),
            "AndroidPad" => Some(Self::AndroidPad),
            _ => None,
        }
    }
}
/// I18nLanguage 语言枚举
#[derive(serde::Serialize, serde::Deserialize)]
#[derive(Clone, Copy, Debug, PartialEq, Eq, Hash, PartialOrd, Ord, ::prost::Enumeration)]
#[repr(i32)]
pub enum I18nLanguage {
    /// 未设置
    UnsetLanguage = 0,
    /// 南非荷兰语	af
    Afrikaans = 1,
    /// 阿尔巴尼亚语	sq
    Albanian = 2,
    /// 阿姆哈拉语	am
    Amharic = 3,
    /// 阿拉伯语	ar
    Arabic = 4,
    /// 亚美尼亚语	hy
    Armenian = 5,
    /// 阿塞拜疆语	az
    Azerbaijani = 6,
    /// 孟加拉语	bn
    Bengali = 7,
    /// 波斯尼亚语	bs
    Bosnian = 8,
    /// 保加利亚语	bg
    Bulgarian = 9,
    /// 加泰罗尼亚语	ca
    Catalan = 10,
    /// 简体中文 	zh
    ChineseSimplified = 11,
    /// 繁体中文 	zh-TW
    ChineseTraditional = 12,
    /// 克罗地亚语	hr
    Croatian = 13,
    /// 捷克语	cs
    Czech = 14,
    /// 丹麦语	da
    Danish = 15,
    /// 波斯语	fa-AF
    Dari = 16,
    /// 荷兰语	nl
    Dutch = 17,
    /// 英语	en
    English = 18,
    /// 爱沙尼亚语	et
    Estonian = 19,
    /// 波斯语 	fa
    FarsiPersian = 20,
    /// 菲律宾语	tl
    FilipinoTagalog = 21,
    /// 芬兰语	fi
    Finnish = 22,
    /// 法语	fr
    French = 23,
    /// 法语（加拿大）	fr-CA
    FrenchCanada = 24,
    /// 格鲁吉亚语	ka
    Georgian = 25,
    /// 德语	de
    German = 26,
    /// 希腊语	el
    Greek = 27,
    /// 古吉拉特语	gu
    Gujarati = 28,
    /// 海地克里奥尔语 	ht
    HaitianCreole = 29,
    /// 豪萨语	ha
    Hausa = 30,
    /// 希伯来语	he
    Hebrew = 31,
    /// 印地语	hi
    Hindi = 32,
    /// 匈牙利语	hu
    Hungarian = 33,
    /// 冰岛语	is
    Icelandic = 34,
    /// 印度尼西亚语	id
    Indonesian = 35,
    /// 爱尔兰语	ga
    Irish = 36,
    /// 意大利语	it
    Italian = 37,
    /// 日语	ja
    Japanese = 38,
    /// 卡纳达语	kn
    Kannada = 39,
    /// 哈萨克语	kk
    Kazakh = 40,
    /// 韩语	ko
    Korean = 41,
    /// 拉脱维亚语	lv
    Latvian = 42,
    /// 立陶宛语	lt
    Lithuanian = 43,
    /// 马其顿语	mk
    Macedonian = 44,
    /// 马来语	ms
    Malay = 45,
    /// 马拉雅拉姆语	ml
    Malayalam = 46,
    /// 马耳他语	mt
    Maltese = 47,
    /// 马拉地语	mr
    Marathi = 48,
    /// 蒙古语	mn
    Mongolian = 49,
    /// 挪威语 	no
    NorwegianBokmal = 50,
    /// 普什图语	ps
    Pashto = 51,
    /// 波兰语	pl
    Polish = 52,
    /// 葡萄牙语（巴西）	pt
    PortugueseBrazil = 53,
    /// 葡萄牙语（葡萄牙）	pt-PT
    PortuguesePortugal = 54,
    /// 旁遮普语	pa
    Punjabi = 55,
    /// 罗马尼亚语	ro
    Romanian = 56,
    /// 俄语	ru
    Russian = 57,
    /// 塞尔维亚语	sr
    Serbian = 58,
    /// 僧伽罗语	si
    Sinhala = 59,
    /// 斯洛伐克语	sk
    Slovak = 60,
    /// 斯洛文尼亚语	sl
    Slovenian = 61,
    /// 索马里语	so
    Somali = 62,
    /// 西班牙语	es
    Spanish = 63,
    /// 西班牙语（墨西哥）	es-MX
    SpanishMexico = 64,
    /// 斯瓦希里语	sw
    Swahili = 65,
    /// 瑞典语	sv
    Swedish = 66,
    /// 泰米尔语	ta
    Tamil = 67,
    /// 泰卢固语	te
    Telugu = 68,
    /// 泰语	th
    Thai = 69,
    /// 土耳其语	tr
    Turkish = 70,
    /// 乌克兰语	uk
    Ukrainian = 71,
    /// 乌尔都语	ur
    Urdu = 72,
    /// 乌兹别克语	uz
    Uzbek = 73,
    /// 越南语	vi
    Vietnamese = 74,
    /// 威尔士语	cy
    Welsh = 75,
}
impl I18nLanguage {
    /// String value of the enum field names used in the ProtoBuf definition.
    ///
    /// The values are not transformed in any way and thus are considered stable
    /// (if the ProtoBuf definition does not change) and safe for programmatic use.
    pub fn as_str_name(&self) -> &'static str {
        match self {
            I18nLanguage::UnsetLanguage => "UNSET_LANGUAGE",
            I18nLanguage::Afrikaans => "Afrikaans",
            I18nLanguage::Albanian => "Albanian",
            I18nLanguage::Amharic => "Amharic",
            I18nLanguage::Arabic => "Arabic",
            I18nLanguage::Armenian => "Armenian",
            I18nLanguage::Azerbaijani => "Azerbaijani",
            I18nLanguage::Bengali => "Bengali",
            I18nLanguage::Bosnian => "Bosnian",
            I18nLanguage::Bulgarian => "Bulgarian",
            I18nLanguage::Catalan => "Catalan",
            I18nLanguage::ChineseSimplified => "Chinese_Simplified",
            I18nLanguage::ChineseTraditional => "Chinese_Traditional",
            I18nLanguage::Croatian => "Croatian",
            I18nLanguage::Czech => "Czech",
            I18nLanguage::Danish => "Danish",
            I18nLanguage::Dari => "Dari",
            I18nLanguage::Dutch => "Dutch",
            I18nLanguage::English => "English",
            I18nLanguage::Estonian => "Estonian",
            I18nLanguage::FarsiPersian => "Farsi_Persian",
            I18nLanguage::FilipinoTagalog => "Filipino_Tagalog",
            I18nLanguage::Finnish => "Finnish",
            I18nLanguage::French => "French",
            I18nLanguage::FrenchCanada => "French_Canada",
            I18nLanguage::Georgian => "Georgian",
            I18nLanguage::German => "German",
            I18nLanguage::Greek => "Greek",
            I18nLanguage::Gujarati => "Gujarati",
            I18nLanguage::HaitianCreole => "Haitian_Creole",
            I18nLanguage::Hausa => "Hausa",
            I18nLanguage::Hebrew => "Hebrew",
            I18nLanguage::Hindi => "Hindi",
            I18nLanguage::Hungarian => "Hungarian",
            I18nLanguage::Icelandic => "Icelandic",
            I18nLanguage::Indonesian => "Indonesian",
            I18nLanguage::Irish => "Irish",
            I18nLanguage::Italian => "Italian",
            I18nLanguage::Japanese => "Japanese",
            I18nLanguage::Kannada => "Kannada",
            I18nLanguage::Kazakh => "Kazakh",
            I18nLanguage::Korean => "Korean",
            I18nLanguage::Latvian => "Latvian",
            I18nLanguage::Lithuanian => "Lithuanian",
            I18nLanguage::Macedonian => "Macedonian",
            I18nLanguage::Malay => "Malay",
            I18nLanguage::Malayalam => "Malayalam",
            I18nLanguage::Maltese => "Maltese",
            I18nLanguage::Marathi => "Marathi",
            I18nLanguage::Mongolian => "Mongolian",
            I18nLanguage::NorwegianBokmal => "Norwegian_Bokmal",
            I18nLanguage::Pashto => "Pashto",
            I18nLanguage::Polish => "Polish",
            I18nLanguage::PortugueseBrazil => "Portuguese_Brazil",
            I18nLanguage::PortuguesePortugal => "Portuguese_Portugal",
            I18nLanguage::Punjabi => "Punjabi",
            I18nLanguage::Romanian => "Romanian",
            I18nLanguage::Russian => "Russian",
            I18nLanguage::Serbian => "Serbian",
            I18nLanguage::Sinhala => "Sinhala",
            I18nLanguage::Slovak => "Slovak",
            I18nLanguage::Slovenian => "Slovenian",
            I18nLanguage::Somali => "Somali",
            I18nLanguage::Spanish => "Spanish",
            I18nLanguage::SpanishMexico => "Spanish_Mexico",
            I18nLanguage::Swahili => "Swahili",
            I18nLanguage::Swedish => "Swedish",
            I18nLanguage::Tamil => "Tamil",
            I18nLanguage::Telugu => "Telugu",
            I18nLanguage::Thai => "Thai",
            I18nLanguage::Turkish => "Turkish",
            I18nLanguage::Ukrainian => "Ukrainian",
            I18nLanguage::Urdu => "Urdu",
            I18nLanguage::Uzbek => "Uzbek",
            I18nLanguage::Vietnamese => "Vietnamese",
            I18nLanguage::Welsh => "Welsh",
        }
    }
    /// Creates an enum from field names used in the ProtoBuf definition.
    pub fn from_str_name(value: &str) -> ::core::option::Option<Self> {
        match value {
            "UNSET_LANGUAGE" => Some(Self::UnsetLanguage),
            "Afrikaans" => Some(Self::Afrikaans),
            "Albanian" => Some(Self::Albanian),
            "Amharic" => Some(Self::Amharic),
            "Arabic" => Some(Self::Arabic),
            "Armenian" => Some(Self::Armenian),
            "Azerbaijani" => Some(Self::Azerbaijani),
            "Bengali" => Some(Self::Bengali),
            "Bosnian" => Some(Self::Bosnian),
            "Bulgarian" => Some(Self::Bulgarian),
            "Catalan" => Some(Self::Catalan),
            "Chinese_Simplified" => Some(Self::ChineseSimplified),
            "Chinese_Traditional" => Some(Self::ChineseTraditional),
            "Croatian" => Some(Self::Croatian),
            "Czech" => Some(Self::Czech),
            "Danish" => Some(Self::Danish),
            "Dari" => Some(Self::Dari),
            "Dutch" => Some(Self::Dutch),
            "English" => Some(Self::English),
            "Estonian" => Some(Self::Estonian),
            "Farsi_Persian" => Some(Self::FarsiPersian),
            "Filipino_Tagalog" => Some(Self::FilipinoTagalog),
            "Finnish" => Some(Self::Finnish),
            "French" => Some(Self::French),
            "French_Canada" => Some(Self::FrenchCanada),
            "Georgian" => Some(Self::Georgian),
            "German" => Some(Self::German),
            "Greek" => Some(Self::Greek),
            "Gujarati" => Some(Self::Gujarati),
            "Haitian_Creole" => Some(Self::HaitianCreole),
            "Hausa" => Some(Self::Hausa),
            "Hebrew" => Some(Self::Hebrew),
            "Hindi" => Some(Self::Hindi),
            "Hungarian" => Some(Self::Hungarian),
            "Icelandic" => Some(Self::Icelandic),
            "Indonesian" => Some(Self::Indonesian),
            "Irish" => Some(Self::Irish),
            "Italian" => Some(Self::Italian),
            "Japanese" => Some(Self::Japanese),
            "Kannada" => Some(Self::Kannada),
            "Kazakh" => Some(Self::Kazakh),
            "Korean" => Some(Self::Korean),
            "Latvian" => Some(Self::Latvian),
            "Lithuanian" => Some(Self::Lithuanian),
            "Macedonian" => Some(Self::Macedonian),
            "Malay" => Some(Self::Malay),
            "Malayalam" => Some(Self::Malayalam),
            "Maltese" => Some(Self::Maltese),
            "Marathi" => Some(Self::Marathi),
            "Mongolian" => Some(Self::Mongolian),
            "Norwegian_Bokmal" => Some(Self::NorwegianBokmal),
            "Pashto" => Some(Self::Pashto),
            "Polish" => Some(Self::Polish),
            "Portuguese_Brazil" => Some(Self::PortugueseBrazil),
            "Portuguese_Portugal" => Some(Self::PortuguesePortugal),
            "Punjabi" => Some(Self::Punjabi),
            "Romanian" => Some(Self::Romanian),
            "Russian" => Some(Self::Russian),
            "Serbian" => Some(Self::Serbian),
            "Sinhala" => Some(Self::Sinhala),
            "Slovak" => Some(Self::Slovak),
            "Slovenian" => Some(Self::Slovenian),
            "Somali" => Some(Self::Somali),
            "Spanish" => Some(Self::Spanish),
            "Spanish_Mexico" => Some(Self::SpanishMexico),
            "Swahili" => Some(Self::Swahili),
            "Swedish" => Some(Self::Swedish),
            "Tamil" => Some(Self::Tamil),
            "Telugu" => Some(Self::Telugu),
            "Thai" => Some(Self::Thai),
            "Turkish" => Some(Self::Turkish),
            "Ukrainian" => Some(Self::Ukrainian),
            "Urdu" => Some(Self::Urdu),
            "Uzbek" => Some(Self::Uzbek),
            "Vietnamese" => Some(Self::Vietnamese),
            "Welsh" => Some(Self::Welsh),
            _ => None,
        }
    }
}
/// EncodingProto 编码协议枚举
#[derive(serde::Serialize, serde::Deserialize)]
#[derive(Clone, Copy, Debug, PartialEq, Eq, Hash, PartialOrd, Ord, ::prost::Enumeration)]
#[repr(i32)]
pub enum EncodingProto {
    /// protobuf
    Protobuf = 0,
    /// json
    Json = 1,
}
impl EncodingProto {
    /// String value of the enum field names used in the ProtoBuf definition.
    ///
    /// The values are not transformed in any way and thus are considered stable
    /// (if the ProtoBuf definition does not change) and safe for programmatic use.
    pub fn as_str_name(&self) -> &'static str {
        match self {
            EncodingProto::Protobuf => "PROTOBUF",
            EncodingProto::Json => "JSON",
        }
    }
    /// Creates an enum from field names used in the ProtoBuf definition.
    pub fn from_str_name(value: &str) -> ::core::option::Option<Self> {
        match value {
            "PROTOBUF" => Some(Self::Protobuf),
            "JSON" => Some(Self::Json),
            _ => None,
        }
    }
}
/// ResponseCode
#[derive(serde::Serialize, serde::Deserialize)]
#[derive(Clone, Copy, Debug, PartialEq, Eq, Hash, PartialOrd, Ord, ::prost::Enumeration)]
#[repr(i32)]
pub enum ResponseCode {
    /// 成功
    Success = 0,
    /// 无效的数据
    InvalidData = 1,
    /// 未授权
    Unauthorized = 2,
    /// 禁止访问
    Forbidden = 3,
    /// 无效的方法
    InvalidMethod = 4,
    /// 超时
    Timeout = 5,
    /// 服务器错误
    ServerError = 6,
}
impl ResponseCode {
    /// String value of the enum field names used in the ProtoBuf definition.
    ///
    /// The values are not transformed in any way and thus are considered stable
    /// (if the ProtoBuf definition does not change) and safe for programmatic use.
    pub fn as_str_name(&self) -> &'static str {
        match self {
            ResponseCode::Success => "SUCCESS",
            ResponseCode::InvalidData => "INVALID_DATA",
            ResponseCode::Unauthorized => "UNAUTHORIZED",
            ResponseCode::Forbidden => "FORBIDDEN",
            ResponseCode::InvalidMethod => "INVALID_METHOD",
            ResponseCode::Timeout => "TIMEOUT",
            ResponseCode::ServerError => "SERVER_ERROR",
        }
    }
    /// Creates an enum from field names used in the ProtoBuf definition.
    pub fn from_str_name(value: &str) -> ::core::option::Option<Self> {
        match value {
            "SUCCESS" => Some(Self::Success),
            "INVALID_DATA" => Some(Self::InvalidData),
            "UNAUTHORIZED" => Some(Self::Unauthorized),
            "FORBIDDEN" => Some(Self::Forbidden),
            "INVALID_METHOD" => Some(Self::InvalidMethod),
            "TIMEOUT" => Some(Self::Timeout),
            "SERVER_ERROR" => Some(Self::ServerError),
            _ => None,
        }
    }
}
/// ResponseActionType 客户端收到响应后做的动作类型
#[derive(serde::Serialize, serde::Deserialize)]
#[derive(Clone, Copy, Debug, PartialEq, Eq, Hash, PartialOrd, Ord, ::prost::Enumeration)]
#[repr(i32)]
pub enum ResponseActionType {
    /// 无动作
    NoneAction = 0,
    /// toast提示
    ToastAction = 1,
    /// alert提示
    AlertAction = 2,
    /// 二次认证 一段时间内没有进行二次验证 而且此次是高危操作 此时客户端应该弹出二次验证界面 验证短信验证码
    SecondAuthAction = 3,
}
impl ResponseActionType {
    /// String value of the enum field names used in the ProtoBuf definition.
    ///
    /// The values are not transformed in any way and thus are considered stable
    /// (if the ProtoBuf definition does not change) and safe for programmatic use.
    pub fn as_str_name(&self) -> &'static str {
        match self {
            ResponseActionType::NoneAction => "NONE_ACTION",
            ResponseActionType::ToastAction => "TOAST_ACTION",
            ResponseActionType::AlertAction => "ALERT_ACTION",
            ResponseActionType::SecondAuthAction => "SECOND_AUTH_ACTION",
        }
    }
    /// Creates an enum from field names used in the ProtoBuf definition.
    pub fn from_str_name(value: &str) -> ::core::option::Option<Self> {
        match value {
            "NONE_ACTION" => Some(Self::NoneAction),
            "TOAST_ACTION" => Some(Self::ToastAction),
            "ALERT_ACTION" => Some(Self::AlertAction),
            "SECOND_AUTH_ACTION" => Some(Self::SecondAuthAction),
            _ => None,
        }
    }
}
/// WebsocketCustomCloseCode websocket关闭码
/// You can define custom codes in the 3000-4999 range.
/// The 3000-3999 range is reserved for use by libraries, frameworks and applications.
/// The 4000-4999 range is reserved for private use.
#[derive(serde::Serialize, serde::Deserialize)]
#[derive(Clone, Copy, Debug, PartialEq, Eq, Hash, PartialOrd, Ord, ::prost::Enumeration)]
#[repr(i32)]
pub enum WebsocketCustomCloseCode {
    /// pb必须有一个默认值
    CloseCodeZero = 0,
    /// 认证失败
    CloseCodeAuthenticationFailed = 4001,
    /// 重复连接
    CloseCodeDuplicateConnection = 4002,
    /// 服务器内部错误
    CloseCodeServerInternalError = 4003,
    /// 心跳超时
    CloseCodeHeartbeatTimeout = 4004,
}
impl WebsocketCustomCloseCode {
    /// String value of the enum field names used in the ProtoBuf definition.
    ///
    /// The values are not transformed in any way and thus are considered stable
    /// (if the ProtoBuf definition does not change) and safe for programmatic use.
    pub fn as_str_name(&self) -> &'static str {
        match self {
            WebsocketCustomCloseCode::CloseCodeZero => "CloseCodeZero",
            WebsocketCustomCloseCode::CloseCodeAuthenticationFailed => {
                "CloseCodeAuthenticationFailed"
            }
            WebsocketCustomCloseCode::CloseCodeDuplicateConnection => {
                "CloseCodeDuplicateConnection"
            }
            WebsocketCustomCloseCode::CloseCodeServerInternalError => {
                "CloseCodeServerInternalError"
            }
            WebsocketCustomCloseCode::CloseCodeHeartbeatTimeout => {
                "CloseCodeHeartbeatTimeout"
            }
        }
    }
    /// Creates an enum from field names used in the ProtoBuf definition.
    pub fn from_str_name(value: &str) -> ::core::option::Option<Self> {
        match value {
            "CloseCodeZero" => Some(Self::CloseCodeZero),
            "CloseCodeAuthenticationFailed" => Some(Self::CloseCodeAuthenticationFailed),
            "CloseCodeDuplicateConnection" => Some(Self::CloseCodeDuplicateConnection),
            "CloseCodeServerInternalError" => Some(Self::CloseCodeServerInternalError),
            "CloseCodeHeartbeatTimeout" => Some(Self::CloseCodeHeartbeatTimeout),
            _ => None,
        }
    }
}
/// ConversationType 会话类型
#[derive(serde::Serialize, serde::Deserialize)]
#[derive(Clone, Copy, Debug, PartialEq, Eq, Hash, PartialOrd, Ord, ::prost::Enumeration)]
#[repr(i32)]
pub enum ConversationType {
    /// 单聊
    Single = 0,
    /// 群聊
    Group = 1,
    /// 订阅号
    Subscription = 2,
}
impl ConversationType {
    /// String value of the enum field names used in the ProtoBuf definition.
    ///
    /// The values are not transformed in any way and thus are considered stable
    /// (if the ProtoBuf definition does not change) and safe for programmatic use.
    pub fn as_str_name(&self) -> &'static str {
        match self {
            ConversationType::Single => "Single",
            ConversationType::Group => "Group",
            ConversationType::Subscription => "Subscription",
        }
    }
    /// Creates an enum from field names used in the ProtoBuf definition.
    pub fn from_str_name(value: &str) -> ::core::option::Option<Self> {
        match value {
            "Single" => Some(Self::Single),
            "Group" => Some(Self::Group),
            "Subscription" => Some(Self::Subscription),
            _ => None,
        }
    }
}
/// NoticeContentType 通知内容类型
#[derive(serde::Serialize, serde::Deserialize)]
#[derive(Clone, Copy, Debug, PartialEq, Eq, Hash, PartialOrd, Ord, ::prost::Enumeration)]
#[repr(i32)]
pub enum NoticeContentType {
    /// 有新的好友请求
    NewFriendRequest = 0,
    /// 加入到了新群
    JoinNewGroup = 1,
    /// 在线状态
    OnlineStatus = 2,
}
impl NoticeContentType {
    /// String value of the enum field names used in the ProtoBuf definition.
    ///
    /// The values are not transformed in any way and thus are considered stable
    /// (if the ProtoBuf definition does not change) and safe for programmatic use.
    pub fn as_str_name(&self) -> &'static str {
        match self {
            NoticeContentType::NewFriendRequest => "NewFriendRequest",
            NoticeContentType::JoinNewGroup => "JoinNewGroup",
            NoticeContentType::OnlineStatus => "OnlineStatus",
        }
    }
    /// Creates an enum from field names used in the ProtoBuf definition.
    pub fn from_str_name(value: &str) -> ::core::option::Option<Self> {
        match value {
            "NewFriendRequest" => Some(Self::NewFriendRequest),
            "JoinNewGroup" => Some(Self::JoinNewGroup),
            "OnlineStatus" => Some(Self::OnlineStatus),
            _ => None,
        }
    }
}
/// MessageContentType 消息内容类型
#[derive(serde::Serialize, serde::Deserialize)]
#[derive(Clone, Copy, Debug, PartialEq, Eq, Hash, PartialOrd, Ord, ::prost::Enumeration)]
#[repr(i32)]
pub enum MessageContentType {
    /// 图文
    Text = 0,
    /// Markdown
    Markdown = 1,
    /// 图片
    Image = 2,
    /// 语音
    Voice = 3,
    /// 视频
    Video = 4,
    /// 正在输入
    Typing = 101,
    /// 已读
    Read = 102,
    /// 撤回
    Recall = 103,
}
impl MessageContentType {
    /// String value of the enum field names used in the ProtoBuf definition.
    ///
    /// The values are not transformed in any way and thus are considered stable
    /// (if the ProtoBuf definition does not change) and safe for programmatic use.
    pub fn as_str_name(&self) -> &'static str {
        match self {
            MessageContentType::Text => "Text",
            MessageContentType::Markdown => "Markdown",
            MessageContentType::Image => "Image",
            MessageContentType::Voice => "Voice",
            MessageContentType::Video => "Video",
            MessageContentType::Typing => "Typing",
            MessageContentType::Read => "Read",
            MessageContentType::Recall => "Recall",
        }
    }
    /// Creates an enum from field names used in the ProtoBuf definition.
    pub fn from_str_name(value: &str) -> ::core::option::Option<Self> {
        match value {
            "Text" => Some(Self::Text),
            "Markdown" => Some(Self::Markdown),
            "Image" => Some(Self::Image),
            "Voice" => Some(Self::Voice),
            "Video" => Some(Self::Video),
            "Typing" => Some(Self::Typing),
            "Read" => Some(Self::Read),
            "Recall" => Some(Self::Recall),
            _ => None,
        }
    }
}
/// ConversationSettingKey 会话设置key
#[derive(serde::Serialize, serde::Deserialize)]
#[derive(Clone, Copy, Debug, PartialEq, Eq, Hash, PartialOrd, Ord, ::prost::Enumeration)]
#[repr(i32)]
pub enum ConversationSettingKey {
    /// 是否置顶
    IsPinned = 0,
    /// 是否免打扰
    IsMuted = 1,
    /// 是否屏蔽
    IsBlocked = 2,
    /// 是否折叠
    IsFolded = 3,
    /// 自己设置的会话备注
    ConversationAlias = 4,
    /// 在会话中的昵称
    NicknameInConversation = 5,
}
impl ConversationSettingKey {
    /// String value of the enum field names used in the ProtoBuf definition.
    ///
    /// The values are not transformed in any way and thus are considered stable
    /// (if the ProtoBuf definition does not change) and safe for programmatic use.
    pub fn as_str_name(&self) -> &'static str {
        match self {
            ConversationSettingKey::IsPinned => "IsPinned",
            ConversationSettingKey::IsMuted => "IsMuted",
            ConversationSettingKey::IsBlocked => "IsBlocked",
            ConversationSettingKey::IsFolded => "IsFolded",
            ConversationSettingKey::ConversationAlias => "ConversationAlias",
            ConversationSettingKey::NicknameInConversation => "NicknameInConversation",
        }
    }
    /// Creates an enum from field names used in the ProtoBuf definition.
    pub fn from_str_name(value: &str) -> ::core::option::Option<Self> {
        match value {
            "IsPinned" => Some(Self::IsPinned),
            "IsMuted" => Some(Self::IsMuted),
            "IsBlocked" => Some(Self::IsBlocked),
            "IsFolded" => Some(Self::IsFolded),
            "ConversationAlias" => Some(Self::ConversationAlias),
            "NicknameInConversation" => Some(Self::NicknameInConversation),
            _ => None,
        }
    }
}
#[derive(serde::Serialize, serde::Deserialize)]
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct GroupCreateReq {
    #[prost(message, optional, tag = "1")]
    pub header: ::core::option::Option<RequestHeader>,
    #[prost(string, optional, tag = "2")]
    pub name: ::core::option::Option<::prost::alloc::string::String>,
    #[prost(string, optional, tag = "3")]
    pub avatar: ::core::option::Option<::prost::alloc::string::String>,
    #[prost(string, repeated, tag = "4")]
    pub member_list: ::prost::alloc::vec::Vec<::prost::alloc::string::String>,
    #[prost(map = "string, string", tag = "5")]
    pub info_map: ::std::collections::HashMap<
        ::prost::alloc::string::String,
        ::prost::alloc::string::String,
    >,
    #[prost(map = "string, string", tag = "6")]
    pub extra_map: ::std::collections::HashMap<
        ::prost::alloc::string::String,
        ::prost::alloc::string::String,
    >,
}
#[derive(serde::Serialize, serde::Deserialize)]
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct GroupCreateResp {
    #[prost(message, optional, tag = "1")]
    pub header: ::core::option::Option<ResponseHeader>,
    #[prost(string, tag = "2")]
    pub group_id: ::prost::alloc::string::String,
}
/// CountJoinGroupReq 统计加入的群组数量
#[derive(serde::Serialize, serde::Deserialize)]
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct CountJoinGroupReq {
    #[prost(message, optional, tag = "1")]
    pub header: ::core::option::Option<RequestHeader>,
}
#[derive(serde::Serialize, serde::Deserialize)]
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct CountJoinGroupResp {
    #[prost(message, optional, tag = "1")]
    pub header: ::core::option::Option<ResponseHeader>,
    #[prost(int64, tag = "2")]
    pub count: i64,
}
/// CountCreateGroupReq 统计创建的群组数量
#[derive(serde::Serialize, serde::Deserialize)]
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct CountCreateGroupReq {
    #[prost(message, optional, tag = "1")]
    pub header: ::core::option::Option<RequestHeader>,
}
#[derive(serde::Serialize, serde::Deserialize)]
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct CountCreateGroupResp {
    #[prost(message, optional, tag = "1")]
    pub header: ::core::option::Option<ResponseHeader>,
    #[prost(int64, tag = "2")]
    pub count: i64,
}
#[derive(serde::Serialize, serde::Deserialize)]
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct GroupSubscribeReq {
    #[prost(message, optional, tag = "1")]
    pub header: ::core::option::Option<RequestHeader>,
}
#[derive(serde::Serialize, serde::Deserialize)]
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct GroupSubscribeResp {
    #[prost(message, optional, tag = "1")]
    pub header: ::core::option::Option<ResponseHeader>,
}
/// ListGroupSubscribersReq 列出群组订阅者
#[derive(serde::Serialize, serde::Deserialize)]
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct ListGroupSubscribersReq {
    #[prost(message, optional, tag = "1")]
    pub header: ::core::option::Option<RequestHeader>,
    /// GroupId 群组id
    #[prost(string, tag = "2")]
    pub group_id: ::prost::alloc::string::String,
    /// Cursor 游标
    #[prost(int64, tag = "3")]
    pub cursor: i64,
    /// Limit 限制
    #[prost(int64, tag = "4")]
    pub limit: i64,
    #[prost(message, optional, tag = "5")]
    pub filter: ::core::option::Option<list_group_subscribers_req::Filter>,
    #[prost(message, optional, tag = "6")]
    pub option: ::core::option::Option<list_group_subscribers_req::Option>,
}
/// Nested message and enum types in `ListGroupSubscribersReq`.
pub mod list_group_subscribers_req {
    /// Filter 过滤器
    #[derive(serde::Serialize, serde::Deserialize)]
    #[allow(clippy::derive_partial_eq_without_eq)]
    #[derive(Clone, PartialEq, ::prost::Message)]
    pub struct Filter {
        /// subscribeTimeGte 订阅时间大于等于
        #[prost(int64, tag = "1")]
        pub subscribe_time_gte: i64,
    }
    /// Option 选项
    #[derive(serde::Serialize, serde::Deserialize)]
    #[allow(clippy::derive_partial_eq_without_eq)]
    #[derive(Clone, PartialEq, ::prost::Message)]
    pub struct Option {}
}
#[derive(serde::Serialize, serde::Deserialize)]
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct ListGroupSubscribersResp {
    #[prost(message, optional, tag = "1")]
    pub header: ::core::option::Option<ResponseHeader>,
    #[prost(message, repeated, tag = "2")]
    pub subscriber_list: ::prost::alloc::vec::Vec<
        list_group_subscribers_resp::Subscriber,
    >,
}
/// Nested message and enum types in `ListGroupSubscribersResp`.
pub mod list_group_subscribers_resp {
    /// Cursor 游标
    /// List 列表
    #[derive(serde::Serialize, serde::Deserialize)]
    #[allow(clippy::derive_partial_eq_without_eq)]
    #[derive(Clone, PartialEq, ::prost::Message)]
    pub struct Subscriber {
        /// UserId 用户id
        #[prost(string, tag = "1")]
        pub user_id: ::prost::alloc::string::String,
        /// SubscribeTime 订阅时间
        #[prost(int64, tag = "2")]
        pub subscribe_time: i64,
    }
}
#[derive(serde::Serialize, serde::Deserialize)]
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct FriendApplyReq {
    #[prost(message, optional, tag = "1")]
    pub header: ::core::option::Option<RequestHeader>,
    #[prost(string, tag = "2")]
    pub to_user_id: ::prost::alloc::string::String,
    /// Message 附加消息
    #[prost(string, optional, tag = "3")]
    pub message: ::core::option::Option<::prost::alloc::string::String>,
    /// Answer 附加回答
    #[prost(string, optional, tag = "4")]
    pub answer: ::core::option::Option<::prost::alloc::string::String>,
}
#[derive(serde::Serialize, serde::Deserialize)]
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct FriendApplyResp {
    #[prost(message, optional, tag = "1")]
    pub header: ::core::option::Option<ResponseHeader>,
}
#[derive(serde::Serialize, serde::Deserialize)]
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct FriendApplyHandleReq {
    #[prost(message, optional, tag = "1")]
    pub header: ::core::option::Option<RequestHeader>,
    #[prost(string, tag = "2")]
    pub apply_id: ::prost::alloc::string::String,
    /// Agree 是否同意
    #[prost(bool, tag = "3")]
    pub agree: bool,
    /// 同意后发送的第一条消息
    #[prost(string, optional, tag = "4")]
    pub first_message: ::core::option::Option<::prost::alloc::string::String>,
}
#[derive(serde::Serialize, serde::Deserialize)]
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct FriendApplyHandleResp {
    #[prost(message, optional, tag = "1")]
    pub header: ::core::option::Option<ResponseHeader>,
}
#[derive(serde::Serialize, serde::Deserialize)]
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct ListFriendApplyReq {
    #[prost(message, optional, tag = "1")]
    pub header: ::core::option::Option<RequestHeader>,
    /// Cursor 游标
    #[prost(int64, tag = "2")]
    pub cursor: i64,
    /// Limit 限制
    #[prost(int64, tag = "3")]
    pub limit: i64,
    #[prost(message, optional, tag = "4")]
    pub filter: ::core::option::Option<list_friend_apply_req::Filter>,
    #[prost(message, optional, tag = "5")]
    pub option: ::core::option::Option<list_friend_apply_req::Option>,
}
/// Nested message and enum types in `ListFriendApplyReq`.
pub mod list_friend_apply_req {
    /// Filter 过滤器
    #[derive(serde::Serialize, serde::Deserialize)]
    #[allow(clippy::derive_partial_eq_without_eq)]
    #[derive(Clone, PartialEq, ::prost::Message)]
    pub struct Filter {
        #[prost(enumeration = "super::FriendApplyStatus", optional, tag = "1")]
        pub status: ::core::option::Option<i32>,
    }
    /// Option 选项
    #[derive(serde::Serialize, serde::Deserialize)]
    #[allow(clippy::derive_partial_eq_without_eq)]
    #[derive(Clone, PartialEq, ::prost::Message)]
    pub struct Option {
        /// 包含我发出的申请
        #[prost(bool, tag = "1")]
        pub include_apply_by_me: bool,
    }
}
#[derive(serde::Serialize, serde::Deserialize)]
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct ListFriendApplyResp {
    #[prost(message, optional, tag = "1")]
    pub header: ::core::option::Option<ResponseHeader>,
    /// Cursor 游标
    #[prost(int64, tag = "2")]
    pub cursor: i64,
    #[prost(message, repeated, tag = "3")]
    pub friend_apply_list: ::prost::alloc::vec::Vec<list_friend_apply_resp::FriendApply>,
}
/// Nested message and enum types in `ListFriendApplyResp`.
pub mod list_friend_apply_resp {
    /// List 列表
    #[derive(serde::Serialize, serde::Deserialize)]
    #[allow(clippy::derive_partial_eq_without_eq)]
    #[derive(Clone, PartialEq, ::prost::Message)]
    pub struct FriendApply {
        /// ApplyId 申请id
        #[prost(string, tag = "1")]
        pub apply_id: ::prost::alloc::string::String,
        /// FromUserId 申请人id
        #[prost(string, tag = "2")]
        pub from_user_id: ::prost::alloc::string::String,
        /// ToUserId 被申请人id
        #[prost(string, tag = "3")]
        pub to_user_id: ::prost::alloc::string::String,
        /// Message 附加消息
        #[prost(string, tag = "4")]
        pub message: ::prost::alloc::string::String,
        /// Answer 附加回答
        #[prost(string, tag = "5")]
        pub answer: ::prost::alloc::string::String,
    }
}
/// CountFriendReq 统计好友数量
#[derive(serde::Serialize, serde::Deserialize)]
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct CountFriendReq {
    #[prost(message, optional, tag = "1")]
    pub header: ::core::option::Option<RequestHeader>,
}
#[derive(serde::Serialize, serde::Deserialize)]
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct CountFriendResp {
    #[prost(message, optional, tag = "1")]
    pub header: ::core::option::Option<ResponseHeader>,
    #[prost(int64, tag = "2")]
    pub count: i64,
}
#[derive(serde::Serialize, serde::Deserialize)]
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct ConversationSettingUpdateReq {
    #[prost(message, optional, tag = "1")]
    pub header: ::core::option::Option<RequestHeader>,
}
#[derive(serde::Serialize, serde::Deserialize)]
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct ConversationSettingUpdateResp {
    #[prost(message, optional, tag = "1")]
    pub header: ::core::option::Option<ResponseHeader>,
}
#[derive(serde::Serialize, serde::Deserialize)]
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct ListJoinedConversationsReq {
    #[prost(message, optional, tag = "1")]
    pub header: ::core::option::Option<RequestHeader>,
    #[prost(enumeration = "ConversationType", tag = "2")]
    pub conversation_type: i32,
    /// Cursor 游标
    #[prost(int64, tag = "3")]
    pub cursor: i64,
    /// Limit 限制
    #[prost(int64, tag = "4")]
    pub limit: i64,
    #[prost(message, optional, tag = "5")]
    pub filter: ::core::option::Option<list_joined_conversations_req::Filter>,
    #[prost(message, optional, tag = "6")]
    pub option: ::core::option::Option<list_joined_conversations_req::Option>,
}
/// Nested message and enum types in `ListJoinedConversationsReq`.
pub mod list_joined_conversations_req {
    /// Filter 过滤器
    #[derive(serde::Serialize, serde::Deserialize)]
    #[allow(clippy::derive_partial_eq_without_eq)]
    #[derive(Clone, PartialEq, ::prost::Message)]
    pub struct Filter {
        /// 使用setting中的字段过滤
        #[prost(message, repeated, tag = "1")]
        pub setting_list: ::prost::alloc::vec::Vec<filter::SettingKv>,
    }
    /// Nested message and enum types in `Filter`.
    pub mod filter {
        #[derive(serde::Serialize, serde::Deserialize)]
        #[allow(clippy::derive_partial_eq_without_eq)]
        #[derive(Clone, PartialEq, ::prost::Message)]
        pub struct SettingKv {
            #[prost(enumeration = "super::super::ConversationSettingKey", tag = "1")]
            pub key: i32,
            #[prost(string, tag = "2")]
            pub value: ::prost::alloc::string::String,
            #[prost(enumeration = "setting_kv::Operator", tag = "3")]
            pub operator: i32,
            #[prost(bool, tag = "4")]
            pub or_not_exists: bool,
            #[prost(bool, tag = "5")]
            pub or_exists: bool,
        }
        /// Nested message and enum types in `SettingKV`.
        pub mod setting_kv {
            #[derive(serde::Serialize, serde::Deserialize)]
            #[derive(
                Clone,
                Copy,
                Debug,
                PartialEq,
                Eq,
                Hash,
                PartialOrd,
                Ord,
                ::prost::Enumeration
            )]
            #[repr(i32)]
            pub enum Operator {
                /// 等于
                Equal = 0,
                /// 不等于
                NotEqual = 1,
            }
            impl Operator {
                /// String value of the enum field names used in the ProtoBuf definition.
                ///
                /// The values are not transformed in any way and thus are considered stable
                /// (if the ProtoBuf definition does not change) and safe for programmatic use.
                pub fn as_str_name(&self) -> &'static str {
                    match self {
                        Operator::Equal => "Equal",
                        Operator::NotEqual => "NotEqual",
                    }
                }
                /// Creates an enum from field names used in the ProtoBuf definition.
                pub fn from_str_name(value: &str) -> ::core::option::Option<Self> {
                    match value {
                        "Equal" => Some(Self::Equal),
                        "NotEqual" => Some(Self::NotEqual),
                        _ => None,
                    }
                }
            }
        }
    }
    /// Option 选项
    #[derive(serde::Serialize, serde::Deserialize)]
    #[allow(clippy::derive_partial_eq_without_eq)]
    #[derive(Clone, PartialEq, ::prost::Message)]
    pub struct Option {
        /// IncludeSelfMemberInfo 是否包含自己的成员信息
        #[prost(bool, tag = "2")]
        pub include_self_member_info: bool,
    }
}
#[derive(serde::Serialize, serde::Deserialize)]
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct ListJoinedConversationsResp {
    #[prost(message, optional, tag = "1")]
    pub header: ::core::option::Option<ResponseHeader>,
    #[prost(message, repeated, tag = "3")]
    pub conversation_list: ::prost::alloc::vec::Vec<
        list_joined_conversations_resp::Conversation,
    >,
}
/// Nested message and enum types in `ListJoinedConversationsResp`.
pub mod list_joined_conversations_resp {
    /// List 列表
    #[derive(serde::Serialize, serde::Deserialize)]
    #[allow(clippy::derive_partial_eq_without_eq)]
    #[derive(Clone, PartialEq, ::prost::Message)]
    pub struct Conversation {
        /// ConversationId 会话id
        #[prost(string, tag = "1")]
        pub conversation_id: ::prost::alloc::string::String,
        #[prost(enumeration = "super::ConversationType", tag = "2")]
        pub conversation_type: i32,
        #[prost(message, optional, tag = "31")]
        pub self_member_info: ::core::option::Option<conversation::SelfMemberInfo>,
    }
    /// Nested message and enum types in `Conversation`.
    pub mod conversation {
        #[derive(serde::Serialize, serde::Deserialize)]
        #[allow(clippy::derive_partial_eq_without_eq)]
        #[derive(Clone, PartialEq, ::prost::Message)]
        pub struct SelfMemberInfo {
            #[prost(int64, tag = "1")]
            pub join_time: i64,
        }
    }
}
#[derive(serde::Serialize, serde::Deserialize)]
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct SubscriptionSubscribeReq {
    #[prost(message, optional, tag = "1")]
    pub header: ::core::option::Option<RequestHeader>,
}
#[derive(serde::Serialize, serde::Deserialize)]
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct SubscriptionSubscribeResp {
    #[prost(message, optional, tag = "1")]
    pub header: ::core::option::Option<ResponseHeader>,
}
#[derive(serde::Serialize, serde::Deserialize)]
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct SubscriptionAfterOnlineReq {
    #[prost(message, optional, tag = "1")]
    pub header: ::core::option::Option<RequestHeader>,
}
#[derive(serde::Serialize, serde::Deserialize)]
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct SubscriptionAfterOnlineResp {
    #[prost(message, optional, tag = "1")]
    pub header: ::core::option::Option<ResponseHeader>,
}
/// UserSubscription 用户订阅的订阅号
#[derive(serde::Serialize, serde::Deserialize)]
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct UserSubscription {
    #[prost(string, tag = "1")]
    pub subscription_id: ::prost::alloc::string::String,
    #[prost(string, tag = "2")]
    pub subscriber: ::prost::alloc::string::String,
    #[prost(int64, tag = "3")]
    pub subscribe_time: i64,
    #[prost(map = "string, string", tag = "6")]
    pub extra_map: ::std::collections::HashMap<
        ::prost::alloc::string::String,
        ::prost::alloc::string::String,
    >,
}
#[derive(serde::Serialize, serde::Deserialize)]
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct UpsertUserSubscriptionReq {
    #[prost(message, optional, tag = "1")]
    pub header: ::core::option::Option<RequestHeader>,
    /// SubscriptionId 订阅号id
    #[prost(string, tag = "2")]
    pub subscription_id: ::prost::alloc::string::String,
    #[prost(message, optional, tag = "3")]
    pub user_subscription: ::core::option::Option<UserSubscription>,
}
#[derive(serde::Serialize, serde::Deserialize)]
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct UpsertUserSubscriptionResp {
    #[prost(message, optional, tag = "1")]
    pub header: ::core::option::Option<ResponseHeader>,
}
#[derive(serde::Serialize, serde::Deserialize)]
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct DeleteUserSubscriptionReq {
    #[prost(message, optional, tag = "1")]
    pub header: ::core::option::Option<RequestHeader>,
    /// SubscriptionId 订阅号id
    #[prost(string, tag = "2")]
    pub subscription_id: ::prost::alloc::string::String,
}
#[derive(serde::Serialize, serde::Deserialize)]
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct DeleteUserSubscriptionResp {
    #[prost(message, optional, tag = "1")]
    pub header: ::core::option::Option<ResponseHeader>,
}
#[derive(serde::Serialize, serde::Deserialize)]
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct ListSubscriptionSubscribersReq {
    #[prost(message, optional, tag = "1")]
    pub header: ::core::option::Option<RequestHeader>,
    /// SubscriptionId 订阅号id
    #[prost(string, tag = "2")]
    pub subscription_id: ::prost::alloc::string::String,
    /// Cursor 游标
    #[prost(int64, tag = "3")]
    pub cursor: i64,
    /// Limit 限制
    #[prost(int64, tag = "4")]
    pub limit: i64,
    #[prost(message, optional, tag = "5")]
    pub filter: ::core::option::Option<list_subscription_subscribers_req::Filter>,
    #[prost(message, optional, tag = "6")]
    pub option: ::core::option::Option<list_subscription_subscribers_req::Option>,
}
/// Nested message and enum types in `ListSubscriptionSubscribersReq`.
pub mod list_subscription_subscribers_req {
    /// Filter 过滤器
    #[derive(serde::Serialize, serde::Deserialize)]
    #[allow(clippy::derive_partial_eq_without_eq)]
    #[derive(Clone, PartialEq, ::prost::Message)]
    pub struct Filter {
        /// subscribeTimeGte 订阅时间大于等于
        #[prost(int64, tag = "1")]
        pub subscribe_time_gte: i64,
    }
    /// Option 选项
    #[derive(serde::Serialize, serde::Deserialize)]
    #[allow(clippy::derive_partial_eq_without_eq)]
    #[derive(Clone, PartialEq, ::prost::Message)]
    pub struct Option {}
}
#[derive(serde::Serialize, serde::Deserialize)]
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct ListSubscriptionSubscribersResp {
    #[prost(message, optional, tag = "1")]
    pub header: ::core::option::Option<ResponseHeader>,
    #[prost(message, repeated, tag = "2")]
    pub subscriber_list: ::prost::alloc::vec::Vec<
        list_subscription_subscribers_resp::Subscriber,
    >,
}
/// Nested message and enum types in `ListSubscriptionSubscribersResp`.
pub mod list_subscription_subscribers_resp {
    /// Cursor 游标
    /// List 列表
    #[derive(serde::Serialize, serde::Deserialize)]
    #[allow(clippy::derive_partial_eq_without_eq)]
    #[derive(Clone, PartialEq, ::prost::Message)]
    pub struct Subscriber {
        /// UserId 用户id
        #[prost(string, tag = "1")]
        pub user_id: ::prost::alloc::string::String,
        /// SubscribeTime 订阅时间
        #[prost(int64, tag = "2")]
        pub subscribe_time: i64,
    }
}
/// FriendApplyStatus 好友申请状态
#[derive(serde::Serialize, serde::Deserialize)]
#[derive(Clone, Copy, Debug, PartialEq, Eq, Hash, PartialOrd, Ord, ::prost::Enumeration)]
#[repr(i32)]
pub enum FriendApplyStatus {
    /// Applying 申请中
    Applying = 0,
    /// Accepted 已同意
    Accepted = 1,
    /// Rejected 已拒绝
    Rejected = 2,
}
impl FriendApplyStatus {
    /// String value of the enum field names used in the ProtoBuf definition.
    ///
    /// The values are not transformed in any way and thus are considered stable
    /// (if the ProtoBuf definition does not change) and safe for programmatic use.
    pub fn as_str_name(&self) -> &'static str {
        match self {
            FriendApplyStatus::Applying => "Applying",
            FriendApplyStatus::Accepted => "Accepted",
            FriendApplyStatus::Rejected => "Rejected",
        }
    }
    /// Creates an enum from field names used in the ProtoBuf definition.
    pub fn from_str_name(value: &str) -> ::core::option::Option<Self> {
        match value {
            "Applying" => Some(Self::Applying),
            "Accepted" => Some(Self::Accepted),
            "Rejected" => Some(Self::Rejected),
            _ => None,
        }
    }
}
/// Generated client implementations.
pub mod group_service_client {
    #![allow(unused_variables, dead_code, missing_docs, clippy::let_unit_value)]
    use tonic::codegen::*;
    use tonic::codegen::http::Uri;
    #[derive(Debug, Clone)]
    pub struct GroupServiceClient<T> {
        inner: tonic::client::Grpc<T>,
    }
    impl GroupServiceClient<tonic::transport::Channel> {
        /// Attempt to create a new client by connecting to a given endpoint.
        pub async fn connect<D>(dst: D) -> Result<Self, tonic::transport::Error>
        where
            D: TryInto<tonic::transport::Endpoint>,
            D::Error: Into<StdError>,
        {
            let conn = tonic::transport::Endpoint::new(dst)?.connect().await?;
            Ok(Self::new(conn))
        }
    }
    impl<T> GroupServiceClient<T>
    where
        T: tonic::client::GrpcService<tonic::body::BoxBody>,
        T::Error: Into<StdError>,
        T::ResponseBody: Body<Data = Bytes> + Send + 'static,
        <T::ResponseBody as Body>::Error: Into<StdError> + Send,
    {
        pub fn new(inner: T) -> Self {
            let inner = tonic::client::Grpc::new(inner);
            Self { inner }
        }
        pub fn with_origin(inner: T, origin: Uri) -> Self {
            let inner = tonic::client::Grpc::with_origin(inner, origin);
            Self { inner }
        }
        pub fn with_interceptor<F>(
            inner: T,
            interceptor: F,
        ) -> GroupServiceClient<InterceptedService<T, F>>
        where
            F: tonic::service::Interceptor,
            T::ResponseBody: Default,
            T: tonic::codegen::Service<
                http::Request<tonic::body::BoxBody>,
                Response = http::Response<
                    <T as tonic::client::GrpcService<tonic::body::BoxBody>>::ResponseBody,
                >,
            >,
            <T as tonic::codegen::Service<
                http::Request<tonic::body::BoxBody>,
            >>::Error: Into<StdError> + Send + Sync,
        {
            GroupServiceClient::new(InterceptedService::new(inner, interceptor))
        }
        /// Compress requests with the given encoding.
        ///
        /// This requires the server to support it otherwise it might respond with an
        /// error.
        #[must_use]
        pub fn send_compressed(mut self, encoding: CompressionEncoding) -> Self {
            self.inner = self.inner.send_compressed(encoding);
            self
        }
        /// Enable decompressing responses.
        #[must_use]
        pub fn accept_compressed(mut self, encoding: CompressionEncoding) -> Self {
            self.inner = self.inner.accept_compressed(encoding);
            self
        }
        /// Limits the maximum size of a decoded message.
        ///
        /// Default: `4MB`
        #[must_use]
        pub fn max_decoding_message_size(mut self, limit: usize) -> Self {
            self.inner = self.inner.max_decoding_message_size(limit);
            self
        }
        /// Limits the maximum size of an encoded message.
        ///
        /// Default: `usize::MAX`
        #[must_use]
        pub fn max_encoding_message_size(mut self, limit: usize) -> Self {
            self.inner = self.inner.max_encoding_message_size(limit);
            self
        }
        /// GroupCreate 创建群组
        pub async fn group_create(
            &mut self,
            request: impl tonic::IntoRequest<super::GroupCreateReq>,
        ) -> std::result::Result<
            tonic::Response<super::GroupCreateResp>,
            tonic::Status,
        > {
            self.inner
                .ready()
                .await
                .map_err(|e| {
                    tonic::Status::new(
                        tonic::Code::Unknown,
                        format!("Service was not ready: {}", e.into()),
                    )
                })?;
            let codec = tonic::codec::ProstCodec::default();
            let path = http::uri::PathAndQuery::from_static(
                "/pb.groupService/GroupCreate",
            );
            let mut req = request.into_request();
            req.extensions_mut()
                .insert(GrpcMethod::new("pb.groupService", "GroupCreate"));
            self.inner.unary(req, path, codec).await
        }
        /// CountJoinGroup 统计加入的群组数量
        pub async fn count_join_group(
            &mut self,
            request: impl tonic::IntoRequest<super::CountJoinGroupReq>,
        ) -> std::result::Result<
            tonic::Response<super::CountJoinGroupResp>,
            tonic::Status,
        > {
            self.inner
                .ready()
                .await
                .map_err(|e| {
                    tonic::Status::new(
                        tonic::Code::Unknown,
                        format!("Service was not ready: {}", e.into()),
                    )
                })?;
            let codec = tonic::codec::ProstCodec::default();
            let path = http::uri::PathAndQuery::from_static(
                "/pb.groupService/CountJoinGroup",
            );
            let mut req = request.into_request();
            req.extensions_mut()
                .insert(GrpcMethod::new("pb.groupService", "CountJoinGroup"));
            self.inner.unary(req, path, codec).await
        }
        /// CountCreateGroup 统计创建的群组数量
        pub async fn count_create_group(
            &mut self,
            request: impl tonic::IntoRequest<super::CountCreateGroupReq>,
        ) -> std::result::Result<
            tonic::Response<super::CountCreateGroupResp>,
            tonic::Status,
        > {
            self.inner
                .ready()
                .await
                .map_err(|e| {
                    tonic::Status::new(
                        tonic::Code::Unknown,
                        format!("Service was not ready: {}", e.into()),
                    )
                })?;
            let codec = tonic::codec::ProstCodec::default();
            let path = http::uri::PathAndQuery::from_static(
                "/pb.groupService/CountCreateGroup",
            );
            let mut req = request.into_request();
            req.extensions_mut()
                .insert(GrpcMethod::new("pb.groupService", "CountCreateGroup"));
            self.inner.unary(req, path, codec).await
        }
        /// GroupSubscribe 群组订阅
        pub async fn group_subscribe(
            &mut self,
            request: impl tonic::IntoRequest<super::GroupSubscribeReq>,
        ) -> std::result::Result<
            tonic::Response<super::GroupSubscribeResp>,
            tonic::Status,
        > {
            self.inner
                .ready()
                .await
                .map_err(|e| {
                    tonic::Status::new(
                        tonic::Code::Unknown,
                        format!("Service was not ready: {}", e.into()),
                    )
                })?;
            let codec = tonic::codec::ProstCodec::default();
            let path = http::uri::PathAndQuery::from_static(
                "/pb.groupService/GroupSubscribe",
            );
            let mut req = request.into_request();
            req.extensions_mut()
                .insert(GrpcMethod::new("pb.groupService", "GroupSubscribe"));
            self.inner.unary(req, path, codec).await
        }
        /// ListGroupSubscribers 列出群组订阅者
        pub async fn list_group_subscribers(
            &mut self,
            request: impl tonic::IntoRequest<super::ListGroupSubscribersReq>,
        ) -> std::result::Result<
            tonic::Response<super::ListGroupSubscribersResp>,
            tonic::Status,
        > {
            self.inner
                .ready()
                .await
                .map_err(|e| {
                    tonic::Status::new(
                        tonic::Code::Unknown,
                        format!("Service was not ready: {}", e.into()),
                    )
                })?;
            let codec = tonic::codec::ProstCodec::default();
            let path = http::uri::PathAndQuery::from_static(
                "/pb.groupService/ListGroupSubscribers",
            );
            let mut req = request.into_request();
            req.extensions_mut()
                .insert(GrpcMethod::new("pb.groupService", "ListGroupSubscribers"));
            self.inner.unary(req, path, codec).await
        }
    }
}
/// Generated client implementations.
pub mod friend_service_client {
    #![allow(unused_variables, dead_code, missing_docs, clippy::let_unit_value)]
    use tonic::codegen::*;
    use tonic::codegen::http::Uri;
    #[derive(Debug, Clone)]
    pub struct FriendServiceClient<T> {
        inner: tonic::client::Grpc<T>,
    }
    impl FriendServiceClient<tonic::transport::Channel> {
        /// Attempt to create a new client by connecting to a given endpoint.
        pub async fn connect<D>(dst: D) -> Result<Self, tonic::transport::Error>
        where
            D: TryInto<tonic::transport::Endpoint>,
            D::Error: Into<StdError>,
        {
            let conn = tonic::transport::Endpoint::new(dst)?.connect().await?;
            Ok(Self::new(conn))
        }
    }
    impl<T> FriendServiceClient<T>
    where
        T: tonic::client::GrpcService<tonic::body::BoxBody>,
        T::Error: Into<StdError>,
        T::ResponseBody: Body<Data = Bytes> + Send + 'static,
        <T::ResponseBody as Body>::Error: Into<StdError> + Send,
    {
        pub fn new(inner: T) -> Self {
            let inner = tonic::client::Grpc::new(inner);
            Self { inner }
        }
        pub fn with_origin(inner: T, origin: Uri) -> Self {
            let inner = tonic::client::Grpc::with_origin(inner, origin);
            Self { inner }
        }
        pub fn with_interceptor<F>(
            inner: T,
            interceptor: F,
        ) -> FriendServiceClient<InterceptedService<T, F>>
        where
            F: tonic::service::Interceptor,
            T::ResponseBody: Default,
            T: tonic::codegen::Service<
                http::Request<tonic::body::BoxBody>,
                Response = http::Response<
                    <T as tonic::client::GrpcService<tonic::body::BoxBody>>::ResponseBody,
                >,
            >,
            <T as tonic::codegen::Service<
                http::Request<tonic::body::BoxBody>,
            >>::Error: Into<StdError> + Send + Sync,
        {
            FriendServiceClient::new(InterceptedService::new(inner, interceptor))
        }
        /// Compress requests with the given encoding.
        ///
        /// This requires the server to support it otherwise it might respond with an
        /// error.
        #[must_use]
        pub fn send_compressed(mut self, encoding: CompressionEncoding) -> Self {
            self.inner = self.inner.send_compressed(encoding);
            self
        }
        /// Enable decompressing responses.
        #[must_use]
        pub fn accept_compressed(mut self, encoding: CompressionEncoding) -> Self {
            self.inner = self.inner.accept_compressed(encoding);
            self
        }
        /// Limits the maximum size of a decoded message.
        ///
        /// Default: `4MB`
        #[must_use]
        pub fn max_decoding_message_size(mut self, limit: usize) -> Self {
            self.inner = self.inner.max_decoding_message_size(limit);
            self
        }
        /// Limits the maximum size of an encoded message.
        ///
        /// Default: `usize::MAX`
        #[must_use]
        pub fn max_encoding_message_size(mut self, limit: usize) -> Self {
            self.inner = self.inner.max_encoding_message_size(limit);
            self
        }
        /// FriendApply 添加好友
        pub async fn friend_apply(
            &mut self,
            request: impl tonic::IntoRequest<super::FriendApplyReq>,
        ) -> std::result::Result<
            tonic::Response<super::FriendApplyResp>,
            tonic::Status,
        > {
            self.inner
                .ready()
                .await
                .map_err(|e| {
                    tonic::Status::new(
                        tonic::Code::Unknown,
                        format!("Service was not ready: {}", e.into()),
                    )
                })?;
            let codec = tonic::codec::ProstCodec::default();
            let path = http::uri::PathAndQuery::from_static(
                "/pb.friendService/FriendApply",
            );
            let mut req = request.into_request();
            req.extensions_mut()
                .insert(GrpcMethod::new("pb.friendService", "FriendApply"));
            self.inner.unary(req, path, codec).await
        }
        /// FriendApplyHandle 处理好友申请
        pub async fn friend_apply_handle(
            &mut self,
            request: impl tonic::IntoRequest<super::FriendApplyHandleReq>,
        ) -> std::result::Result<
            tonic::Response<super::FriendApplyHandleResp>,
            tonic::Status,
        > {
            self.inner
                .ready()
                .await
                .map_err(|e| {
                    tonic::Status::new(
                        tonic::Code::Unknown,
                        format!("Service was not ready: {}", e.into()),
                    )
                })?;
            let codec = tonic::codec::ProstCodec::default();
            let path = http::uri::PathAndQuery::from_static(
                "/pb.friendService/FriendApplyHandle",
            );
            let mut req = request.into_request();
            req.extensions_mut()
                .insert(GrpcMethod::new("pb.friendService", "FriendApplyHandle"));
            self.inner.unary(req, path, codec).await
        }
        /// ListFriendApply 列出好友申请
        pub async fn list_friend_apply(
            &mut self,
            request: impl tonic::IntoRequest<super::ListFriendApplyReq>,
        ) -> std::result::Result<
            tonic::Response<super::ListFriendApplyResp>,
            tonic::Status,
        > {
            self.inner
                .ready()
                .await
                .map_err(|e| {
                    tonic::Status::new(
                        tonic::Code::Unknown,
                        format!("Service was not ready: {}", e.into()),
                    )
                })?;
            let codec = tonic::codec::ProstCodec::default();
            let path = http::uri::PathAndQuery::from_static(
                "/pb.friendService/ListFriendApply",
            );
            let mut req = request.into_request();
            req.extensions_mut()
                .insert(GrpcMethod::new("pb.friendService", "ListFriendApply"));
            self.inner.unary(req, path, codec).await
        }
        /// CountFriend 统计好友数量
        pub async fn count_friend(
            &mut self,
            request: impl tonic::IntoRequest<super::CountFriendReq>,
        ) -> std::result::Result<
            tonic::Response<super::CountFriendResp>,
            tonic::Status,
        > {
            self.inner
                .ready()
                .await
                .map_err(|e| {
                    tonic::Status::new(
                        tonic::Code::Unknown,
                        format!("Service was not ready: {}", e.into()),
                    )
                })?;
            let codec = tonic::codec::ProstCodec::default();
            let path = http::uri::PathAndQuery::from_static(
                "/pb.friendService/CountFriend",
            );
            let mut req = request.into_request();
            req.extensions_mut()
                .insert(GrpcMethod::new("pb.friendService", "CountFriend"));
            self.inner.unary(req, path, codec).await
        }
    }
}
/// Generated client implementations.
pub mod conversation_service_client {
    #![allow(unused_variables, dead_code, missing_docs, clippy::let_unit_value)]
    use tonic::codegen::*;
    use tonic::codegen::http::Uri;
    #[derive(Debug, Clone)]
    pub struct ConversationServiceClient<T> {
        inner: tonic::client::Grpc<T>,
    }
    impl ConversationServiceClient<tonic::transport::Channel> {
        /// Attempt to create a new client by connecting to a given endpoint.
        pub async fn connect<D>(dst: D) -> Result<Self, tonic::transport::Error>
        where
            D: TryInto<tonic::transport::Endpoint>,
            D::Error: Into<StdError>,
        {
            let conn = tonic::transport::Endpoint::new(dst)?.connect().await?;
            Ok(Self::new(conn))
        }
    }
    impl<T> ConversationServiceClient<T>
    where
        T: tonic::client::GrpcService<tonic::body::BoxBody>,
        T::Error: Into<StdError>,
        T::ResponseBody: Body<Data = Bytes> + Send + 'static,
        <T::ResponseBody as Body>::Error: Into<StdError> + Send,
    {
        pub fn new(inner: T) -> Self {
            let inner = tonic::client::Grpc::new(inner);
            Self { inner }
        }
        pub fn with_origin(inner: T, origin: Uri) -> Self {
            let inner = tonic::client::Grpc::with_origin(inner, origin);
            Self { inner }
        }
        pub fn with_interceptor<F>(
            inner: T,
            interceptor: F,
        ) -> ConversationServiceClient<InterceptedService<T, F>>
        where
            F: tonic::service::Interceptor,
            T::ResponseBody: Default,
            T: tonic::codegen::Service<
                http::Request<tonic::body::BoxBody>,
                Response = http::Response<
                    <T as tonic::client::GrpcService<tonic::body::BoxBody>>::ResponseBody,
                >,
            >,
            <T as tonic::codegen::Service<
                http::Request<tonic::body::BoxBody>,
            >>::Error: Into<StdError> + Send + Sync,
        {
            ConversationServiceClient::new(InterceptedService::new(inner, interceptor))
        }
        /// Compress requests with the given encoding.
        ///
        /// This requires the server to support it otherwise it might respond with an
        /// error.
        #[must_use]
        pub fn send_compressed(mut self, encoding: CompressionEncoding) -> Self {
            self.inner = self.inner.send_compressed(encoding);
            self
        }
        /// Enable decompressing responses.
        #[must_use]
        pub fn accept_compressed(mut self, encoding: CompressionEncoding) -> Self {
            self.inner = self.inner.accept_compressed(encoding);
            self
        }
        /// Limits the maximum size of a decoded message.
        ///
        /// Default: `4MB`
        #[must_use]
        pub fn max_decoding_message_size(mut self, limit: usize) -> Self {
            self.inner = self.inner.max_decoding_message_size(limit);
            self
        }
        /// Limits the maximum size of an encoded message.
        ///
        /// Default: `usize::MAX`
        #[must_use]
        pub fn max_encoding_message_size(mut self, limit: usize) -> Self {
            self.inner = self.inner.max_encoding_message_size(limit);
            self
        }
        /// ConversationSettingUpdate 更新会话设置
        pub async fn conversation_setting_update(
            &mut self,
            request: impl tonic::IntoRequest<super::ConversationSettingUpdateReq>,
        ) -> std::result::Result<
            tonic::Response<super::ConversationSettingUpdateResp>,
            tonic::Status,
        > {
            self.inner
                .ready()
                .await
                .map_err(|e| {
                    tonic::Status::new(
                        tonic::Code::Unknown,
                        format!("Service was not ready: {}", e.into()),
                    )
                })?;
            let codec = tonic::codec::ProstCodec::default();
            let path = http::uri::PathAndQuery::from_static(
                "/pb.conversationService/ConversationSettingUpdate",
            );
            let mut req = request.into_request();
            req.extensions_mut()
                .insert(
                    GrpcMethod::new(
                        "pb.conversationService",
                        "ConversationSettingUpdate",
                    ),
                );
            self.inner.unary(req, path, codec).await
        }
        /// ListJoinedConversations 列出加入的会话
        pub async fn list_joined_conversations(
            &mut self,
            request: impl tonic::IntoRequest<super::ListJoinedConversationsReq>,
        ) -> std::result::Result<
            tonic::Response<super::ListJoinedConversationsResp>,
            tonic::Status,
        > {
            self.inner
                .ready()
                .await
                .map_err(|e| {
                    tonic::Status::new(
                        tonic::Code::Unknown,
                        format!("Service was not ready: {}", e.into()),
                    )
                })?;
            let codec = tonic::codec::ProstCodec::default();
            let path = http::uri::PathAndQuery::from_static(
                "/pb.conversationService/ListJoinedConversations",
            );
            let mut req = request.into_request();
            req.extensions_mut()
                .insert(
                    GrpcMethod::new("pb.conversationService", "ListJoinedConversations"),
                );
            self.inner.unary(req, path, codec).await
        }
    }
}
/// Generated client implementations.
pub mod subscription_service_client {
    #![allow(unused_variables, dead_code, missing_docs, clippy::let_unit_value)]
    use tonic::codegen::*;
    use tonic::codegen::http::Uri;
    #[derive(Debug, Clone)]
    pub struct SubscriptionServiceClient<T> {
        inner: tonic::client::Grpc<T>,
    }
    impl SubscriptionServiceClient<tonic::transport::Channel> {
        /// Attempt to create a new client by connecting to a given endpoint.
        pub async fn connect<D>(dst: D) -> Result<Self, tonic::transport::Error>
        where
            D: TryInto<tonic::transport::Endpoint>,
            D::Error: Into<StdError>,
        {
            let conn = tonic::transport::Endpoint::new(dst)?.connect().await?;
            Ok(Self::new(conn))
        }
    }
    impl<T> SubscriptionServiceClient<T>
    where
        T: tonic::client::GrpcService<tonic::body::BoxBody>,
        T::Error: Into<StdError>,
        T::ResponseBody: Body<Data = Bytes> + Send + 'static,
        <T::ResponseBody as Body>::Error: Into<StdError> + Send,
    {
        pub fn new(inner: T) -> Self {
            let inner = tonic::client::Grpc::new(inner);
            Self { inner }
        }
        pub fn with_origin(inner: T, origin: Uri) -> Self {
            let inner = tonic::client::Grpc::with_origin(inner, origin);
            Self { inner }
        }
        pub fn with_interceptor<F>(
            inner: T,
            interceptor: F,
        ) -> SubscriptionServiceClient<InterceptedService<T, F>>
        where
            F: tonic::service::Interceptor,
            T::ResponseBody: Default,
            T: tonic::codegen::Service<
                http::Request<tonic::body::BoxBody>,
                Response = http::Response<
                    <T as tonic::client::GrpcService<tonic::body::BoxBody>>::ResponseBody,
                >,
            >,
            <T as tonic::codegen::Service<
                http::Request<tonic::body::BoxBody>,
            >>::Error: Into<StdError> + Send + Sync,
        {
            SubscriptionServiceClient::new(InterceptedService::new(inner, interceptor))
        }
        /// Compress requests with the given encoding.
        ///
        /// This requires the server to support it otherwise it might respond with an
        /// error.
        #[must_use]
        pub fn send_compressed(mut self, encoding: CompressionEncoding) -> Self {
            self.inner = self.inner.send_compressed(encoding);
            self
        }
        /// Enable decompressing responses.
        #[must_use]
        pub fn accept_compressed(mut self, encoding: CompressionEncoding) -> Self {
            self.inner = self.inner.accept_compressed(encoding);
            self
        }
        /// Limits the maximum size of a decoded message.
        ///
        /// Default: `4MB`
        #[must_use]
        pub fn max_decoding_message_size(mut self, limit: usize) -> Self {
            self.inner = self.inner.max_decoding_message_size(limit);
            self
        }
        /// Limits the maximum size of an encoded message.
        ///
        /// Default: `usize::MAX`
        #[must_use]
        pub fn max_encoding_message_size(mut self, limit: usize) -> Self {
            self.inner = self.inner.max_encoding_message_size(limit);
            self
        }
        /// SubscriptionSubscribe 订阅号订阅
        pub async fn subscription_subscribe(
            &mut self,
            request: impl tonic::IntoRequest<super::SubscriptionSubscribeReq>,
        ) -> std::result::Result<
            tonic::Response<super::SubscriptionSubscribeResp>,
            tonic::Status,
        > {
            self.inner
                .ready()
                .await
                .map_err(|e| {
                    tonic::Status::new(
                        tonic::Code::Unknown,
                        format!("Service was not ready: {}", e.into()),
                    )
                })?;
            let codec = tonic::codec::ProstCodec::default();
            let path = http::uri::PathAndQuery::from_static(
                "/pb.subscriptionService/SubscriptionSubscribe",
            );
            let mut req = request.into_request();
            req.extensions_mut()
                .insert(
                    GrpcMethod::new("pb.subscriptionService", "SubscriptionSubscribe"),
                );
            self.inner.unary(req, path, codec).await
        }
        /// SubscriptionAfterOnline 订阅号在做用户上线后的操作
        pub async fn subscription_after_online(
            &mut self,
            request: impl tonic::IntoRequest<super::SubscriptionAfterOnlineReq>,
        ) -> std::result::Result<
            tonic::Response<super::SubscriptionAfterOnlineResp>,
            tonic::Status,
        > {
            self.inner
                .ready()
                .await
                .map_err(|e| {
                    tonic::Status::new(
                        tonic::Code::Unknown,
                        format!("Service was not ready: {}", e.into()),
                    )
                })?;
            let codec = tonic::codec::ProstCodec::default();
            let path = http::uri::PathAndQuery::from_static(
                "/pb.subscriptionService/SubscriptionAfterOnline",
            );
            let mut req = request.into_request();
            req.extensions_mut()
                .insert(
                    GrpcMethod::new("pb.subscriptionService", "SubscriptionAfterOnline"),
                );
            self.inner.unary(req, path, codec).await
        }
        /// UpsertUserSubscription 更新用户订阅的订阅号
        pub async fn upsert_user_subscription(
            &mut self,
            request: impl tonic::IntoRequest<super::UpsertUserSubscriptionReq>,
        ) -> std::result::Result<
            tonic::Response<super::UpsertUserSubscriptionResp>,
            tonic::Status,
        > {
            self.inner
                .ready()
                .await
                .map_err(|e| {
                    tonic::Status::new(
                        tonic::Code::Unknown,
                        format!("Service was not ready: {}", e.into()),
                    )
                })?;
            let codec = tonic::codec::ProstCodec::default();
            let path = http::uri::PathAndQuery::from_static(
                "/pb.subscriptionService/UpsertUserSubscription",
            );
            let mut req = request.into_request();
            req.extensions_mut()
                .insert(
                    GrpcMethod::new("pb.subscriptionService", "UpsertUserSubscription"),
                );
            self.inner.unary(req, path, codec).await
        }
        /// DeleteUserSubscription 删除用户订阅的订阅号
        pub async fn delete_user_subscription(
            &mut self,
            request: impl tonic::IntoRequest<super::DeleteUserSubscriptionReq>,
        ) -> std::result::Result<
            tonic::Response<super::DeleteUserSubscriptionResp>,
            tonic::Status,
        > {
            self.inner
                .ready()
                .await
                .map_err(|e| {
                    tonic::Status::new(
                        tonic::Code::Unknown,
                        format!("Service was not ready: {}", e.into()),
                    )
                })?;
            let codec = tonic::codec::ProstCodec::default();
            let path = http::uri::PathAndQuery::from_static(
                "/pb.subscriptionService/DeleteUserSubscription",
            );
            let mut req = request.into_request();
            req.extensions_mut()
                .insert(
                    GrpcMethod::new("pb.subscriptionService", "DeleteUserSubscription"),
                );
            self.inner.unary(req, path, codec).await
        }
        /// ListSubscriptionSubscribers 列出订阅号订阅者
        pub async fn list_subscription_subscribers(
            &mut self,
            request: impl tonic::IntoRequest<super::ListSubscriptionSubscribersReq>,
        ) -> std::result::Result<
            tonic::Response<super::ListSubscriptionSubscribersResp>,
            tonic::Status,
        > {
            self.inner
                .ready()
                .await
                .map_err(|e| {
                    tonic::Status::new(
                        tonic::Code::Unknown,
                        format!("Service was not ready: {}", e.into()),
                    )
                })?;
            let codec = tonic::codec::ProstCodec::default();
            let path = http::uri::PathAndQuery::from_static(
                "/pb.subscriptionService/ListSubscriptionSubscribers",
            );
            let mut req = request.into_request();
            req.extensions_mut()
                .insert(
                    GrpcMethod::new(
                        "pb.subscriptionService",
                        "ListSubscriptionSubscribers",
                    ),
                );
            self.inner.unary(req, path, codec).await
        }
    }
}
/// Generated server implementations.
pub mod group_service_server {
    #![allow(unused_variables, dead_code, missing_docs, clippy::let_unit_value)]
    use tonic::codegen::*;
    /// Generated trait containing gRPC methods that should be implemented for use with GroupServiceServer.
    #[async_trait]
    pub trait GroupService: Send + Sync + 'static {
        /// GroupCreate 创建群组
        async fn group_create(
            &self,
            request: tonic::Request<super::GroupCreateReq>,
        ) -> std::result::Result<tonic::Response<super::GroupCreateResp>, tonic::Status>;
        /// CountJoinGroup 统计加入的群组数量
        async fn count_join_group(
            &self,
            request: tonic::Request<super::CountJoinGroupReq>,
        ) -> std::result::Result<
            tonic::Response<super::CountJoinGroupResp>,
            tonic::Status,
        >;
        /// CountCreateGroup 统计创建的群组数量
        async fn count_create_group(
            &self,
            request: tonic::Request<super::CountCreateGroupReq>,
        ) -> std::result::Result<
            tonic::Response<super::CountCreateGroupResp>,
            tonic::Status,
        >;
        /// GroupSubscribe 群组订阅
        async fn group_subscribe(
            &self,
            request: tonic::Request<super::GroupSubscribeReq>,
        ) -> std::result::Result<
            tonic::Response<super::GroupSubscribeResp>,
            tonic::Status,
        >;
        /// ListGroupSubscribers 列出群组订阅者
        async fn list_group_subscribers(
            &self,
            request: tonic::Request<super::ListGroupSubscribersReq>,
        ) -> std::result::Result<
            tonic::Response<super::ListGroupSubscribersResp>,
            tonic::Status,
        >;
    }
    #[derive(Debug)]
    pub struct GroupServiceServer<T: GroupService> {
        inner: _Inner<T>,
        accept_compression_encodings: EnabledCompressionEncodings,
        send_compression_encodings: EnabledCompressionEncodings,
        max_decoding_message_size: Option<usize>,
        max_encoding_message_size: Option<usize>,
    }
    struct _Inner<T>(Arc<T>);
    impl<T: GroupService> GroupServiceServer<T> {
        pub fn new(inner: T) -> Self {
            Self::from_arc(Arc::new(inner))
        }
        pub fn from_arc(inner: Arc<T>) -> Self {
            let inner = _Inner(inner);
            Self {
                inner,
                accept_compression_encodings: Default::default(),
                send_compression_encodings: Default::default(),
                max_decoding_message_size: None,
                max_encoding_message_size: None,
            }
        }
        pub fn with_interceptor<F>(
            inner: T,
            interceptor: F,
        ) -> InterceptedService<Self, F>
        where
            F: tonic::service::Interceptor,
        {
            InterceptedService::new(Self::new(inner), interceptor)
        }
        /// Enable decompressing requests with the given encoding.
        #[must_use]
        pub fn accept_compressed(mut self, encoding: CompressionEncoding) -> Self {
            self.accept_compression_encodings.enable(encoding);
            self
        }
        /// Compress responses with the given encoding, if the client supports it.
        #[must_use]
        pub fn send_compressed(mut self, encoding: CompressionEncoding) -> Self {
            self.send_compression_encodings.enable(encoding);
            self
        }
        /// Limits the maximum size of a decoded message.
        ///
        /// Default: `4MB`
        #[must_use]
        pub fn max_decoding_message_size(mut self, limit: usize) -> Self {
            self.max_decoding_message_size = Some(limit);
            self
        }
        /// Limits the maximum size of an encoded message.
        ///
        /// Default: `usize::MAX`
        #[must_use]
        pub fn max_encoding_message_size(mut self, limit: usize) -> Self {
            self.max_encoding_message_size = Some(limit);
            self
        }
    }
    impl<T, B> tonic::codegen::Service<http::Request<B>> for GroupServiceServer<T>
    where
        T: GroupService,
        B: Body + Send + 'static,
        B::Error: Into<StdError> + Send + 'static,
    {
        type Response = http::Response<tonic::body::BoxBody>;
        type Error = std::convert::Infallible;
        type Future = BoxFuture<Self::Response, Self::Error>;
        fn poll_ready(
            &mut self,
            _cx: &mut Context<'_>,
        ) -> Poll<std::result::Result<(), Self::Error>> {
            Poll::Ready(Ok(()))
        }
        fn call(&mut self, req: http::Request<B>) -> Self::Future {
            let inner = self.inner.clone();
            match req.uri().path() {
                "/pb.groupService/GroupCreate" => {
                    #[allow(non_camel_case_types)]
                    struct GroupCreateSvc<T: GroupService>(pub Arc<T>);
                    impl<
                        T: GroupService,
                    > tonic::server::UnaryService<super::GroupCreateReq>
                    for GroupCreateSvc<T> {
                        type Response = super::GroupCreateResp;
                        type Future = BoxFuture<
                            tonic::Response<Self::Response>,
                            tonic::Status,
                        >;
                        fn call(
                            &mut self,
                            request: tonic::Request<super::GroupCreateReq>,
                        ) -> Self::Future {
                            let inner = Arc::clone(&self.0);
                            let fut = async move {
                                (*inner).group_create(request).await
                            };
                            Box::pin(fut)
                        }
                    }
                    let accept_compression_encodings = self.accept_compression_encodings;
                    let send_compression_encodings = self.send_compression_encodings;
                    let max_decoding_message_size = self.max_decoding_message_size;
                    let max_encoding_message_size = self.max_encoding_message_size;
                    let inner = self.inner.clone();
                    let fut = async move {
                        let inner = inner.0;
                        let method = GroupCreateSvc(inner);
                        let codec = tonic::codec::ProstCodec::default();
                        let mut grpc = tonic::server::Grpc::new(codec)
                            .apply_compression_config(
                                accept_compression_encodings,
                                send_compression_encodings,
                            )
                            .apply_max_message_size_config(
                                max_decoding_message_size,
                                max_encoding_message_size,
                            );
                        let res = grpc.unary(method, req).await;
                        Ok(res)
                    };
                    Box::pin(fut)
                }
                "/pb.groupService/CountJoinGroup" => {
                    #[allow(non_camel_case_types)]
                    struct CountJoinGroupSvc<T: GroupService>(pub Arc<T>);
                    impl<
                        T: GroupService,
                    > tonic::server::UnaryService<super::CountJoinGroupReq>
                    for CountJoinGroupSvc<T> {
                        type Response = super::CountJoinGroupResp;
                        type Future = BoxFuture<
                            tonic::Response<Self::Response>,
                            tonic::Status,
                        >;
                        fn call(
                            &mut self,
                            request: tonic::Request<super::CountJoinGroupReq>,
                        ) -> Self::Future {
                            let inner = Arc::clone(&self.0);
                            let fut = async move {
                                (*inner).count_join_group(request).await
                            };
                            Box::pin(fut)
                        }
                    }
                    let accept_compression_encodings = self.accept_compression_encodings;
                    let send_compression_encodings = self.send_compression_encodings;
                    let max_decoding_message_size = self.max_decoding_message_size;
                    let max_encoding_message_size = self.max_encoding_message_size;
                    let inner = self.inner.clone();
                    let fut = async move {
                        let inner = inner.0;
                        let method = CountJoinGroupSvc(inner);
                        let codec = tonic::codec::ProstCodec::default();
                        let mut grpc = tonic::server::Grpc::new(codec)
                            .apply_compression_config(
                                accept_compression_encodings,
                                send_compression_encodings,
                            )
                            .apply_max_message_size_config(
                                max_decoding_message_size,
                                max_encoding_message_size,
                            );
                        let res = grpc.unary(method, req).await;
                        Ok(res)
                    };
                    Box::pin(fut)
                }
                "/pb.groupService/CountCreateGroup" => {
                    #[allow(non_camel_case_types)]
                    struct CountCreateGroupSvc<T: GroupService>(pub Arc<T>);
                    impl<
                        T: GroupService,
                    > tonic::server::UnaryService<super::CountCreateGroupReq>
                    for CountCreateGroupSvc<T> {
                        type Response = super::CountCreateGroupResp;
                        type Future = BoxFuture<
                            tonic::Response<Self::Response>,
                            tonic::Status,
                        >;
                        fn call(
                            &mut self,
                            request: tonic::Request<super::CountCreateGroupReq>,
                        ) -> Self::Future {
                            let inner = Arc::clone(&self.0);
                            let fut = async move {
                                (*inner).count_create_group(request).await
                            };
                            Box::pin(fut)
                        }
                    }
                    let accept_compression_encodings = self.accept_compression_encodings;
                    let send_compression_encodings = self.send_compression_encodings;
                    let max_decoding_message_size = self.max_decoding_message_size;
                    let max_encoding_message_size = self.max_encoding_message_size;
                    let inner = self.inner.clone();
                    let fut = async move {
                        let inner = inner.0;
                        let method = CountCreateGroupSvc(inner);
                        let codec = tonic::codec::ProstCodec::default();
                        let mut grpc = tonic::server::Grpc::new(codec)
                            .apply_compression_config(
                                accept_compression_encodings,
                                send_compression_encodings,
                            )
                            .apply_max_message_size_config(
                                max_decoding_message_size,
                                max_encoding_message_size,
                            );
                        let res = grpc.unary(method, req).await;
                        Ok(res)
                    };
                    Box::pin(fut)
                }
                "/pb.groupService/GroupSubscribe" => {
                    #[allow(non_camel_case_types)]
                    struct GroupSubscribeSvc<T: GroupService>(pub Arc<T>);
                    impl<
                        T: GroupService,
                    > tonic::server::UnaryService<super::GroupSubscribeReq>
                    for GroupSubscribeSvc<T> {
                        type Response = super::GroupSubscribeResp;
                        type Future = BoxFuture<
                            tonic::Response<Self::Response>,
                            tonic::Status,
                        >;
                        fn call(
                            &mut self,
                            request: tonic::Request<super::GroupSubscribeReq>,
                        ) -> Self::Future {
                            let inner = Arc::clone(&self.0);
                            let fut = async move {
                                (*inner).group_subscribe(request).await
                            };
                            Box::pin(fut)
                        }
                    }
                    let accept_compression_encodings = self.accept_compression_encodings;
                    let send_compression_encodings = self.send_compression_encodings;
                    let max_decoding_message_size = self.max_decoding_message_size;
                    let max_encoding_message_size = self.max_encoding_message_size;
                    let inner = self.inner.clone();
                    let fut = async move {
                        let inner = inner.0;
                        let method = GroupSubscribeSvc(inner);
                        let codec = tonic::codec::ProstCodec::default();
                        let mut grpc = tonic::server::Grpc::new(codec)
                            .apply_compression_config(
                                accept_compression_encodings,
                                send_compression_encodings,
                            )
                            .apply_max_message_size_config(
                                max_decoding_message_size,
                                max_encoding_message_size,
                            );
                        let res = grpc.unary(method, req).await;
                        Ok(res)
                    };
                    Box::pin(fut)
                }
                "/pb.groupService/ListGroupSubscribers" => {
                    #[allow(non_camel_case_types)]
                    struct ListGroupSubscribersSvc<T: GroupService>(pub Arc<T>);
                    impl<
                        T: GroupService,
                    > tonic::server::UnaryService<super::ListGroupSubscribersReq>
                    for ListGroupSubscribersSvc<T> {
                        type Response = super::ListGroupSubscribersResp;
                        type Future = BoxFuture<
                            tonic::Response<Self::Response>,
                            tonic::Status,
                        >;
                        fn call(
                            &mut self,
                            request: tonic::Request<super::ListGroupSubscribersReq>,
                        ) -> Self::Future {
                            let inner = Arc::clone(&self.0);
                            let fut = async move {
                                (*inner).list_group_subscribers(request).await
                            };
                            Box::pin(fut)
                        }
                    }
                    let accept_compression_encodings = self.accept_compression_encodings;
                    let send_compression_encodings = self.send_compression_encodings;
                    let max_decoding_message_size = self.max_decoding_message_size;
                    let max_encoding_message_size = self.max_encoding_message_size;
                    let inner = self.inner.clone();
                    let fut = async move {
                        let inner = inner.0;
                        let method = ListGroupSubscribersSvc(inner);
                        let codec = tonic::codec::ProstCodec::default();
                        let mut grpc = tonic::server::Grpc::new(codec)
                            .apply_compression_config(
                                accept_compression_encodings,
                                send_compression_encodings,
                            )
                            .apply_max_message_size_config(
                                max_decoding_message_size,
                                max_encoding_message_size,
                            );
                        let res = grpc.unary(method, req).await;
                        Ok(res)
                    };
                    Box::pin(fut)
                }
                _ => {
                    Box::pin(async move {
                        Ok(
                            http::Response::builder()
                                .status(200)
                                .header("grpc-status", "12")
                                .header("content-type", "application/grpc")
                                .body(empty_body())
                                .unwrap(),
                        )
                    })
                }
            }
        }
    }
    impl<T: GroupService> Clone for GroupServiceServer<T> {
        fn clone(&self) -> Self {
            let inner = self.inner.clone();
            Self {
                inner,
                accept_compression_encodings: self.accept_compression_encodings,
                send_compression_encodings: self.send_compression_encodings,
                max_decoding_message_size: self.max_decoding_message_size,
                max_encoding_message_size: self.max_encoding_message_size,
            }
        }
    }
    impl<T: GroupService> Clone for _Inner<T> {
        fn clone(&self) -> Self {
            Self(Arc::clone(&self.0))
        }
    }
    impl<T: std::fmt::Debug> std::fmt::Debug for _Inner<T> {
        fn fmt(&self, f: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
            write!(f, "{:?}", self.0)
        }
    }
    impl<T: GroupService> tonic::server::NamedService for GroupServiceServer<T> {
        const NAME: &'static str = "pb.groupService";
    }
}
/// Generated server implementations.
pub mod friend_service_server {
    #![allow(unused_variables, dead_code, missing_docs, clippy::let_unit_value)]
    use tonic::codegen::*;
    /// Generated trait containing gRPC methods that should be implemented for use with FriendServiceServer.
    #[async_trait]
    pub trait FriendService: Send + Sync + 'static {
        /// FriendApply 添加好友
        async fn friend_apply(
            &self,
            request: tonic::Request<super::FriendApplyReq>,
        ) -> std::result::Result<tonic::Response<super::FriendApplyResp>, tonic::Status>;
        /// FriendApplyHandle 处理好友申请
        async fn friend_apply_handle(
            &self,
            request: tonic::Request<super::FriendApplyHandleReq>,
        ) -> std::result::Result<
            tonic::Response<super::FriendApplyHandleResp>,
            tonic::Status,
        >;
        /// ListFriendApply 列出好友申请
        async fn list_friend_apply(
            &self,
            request: tonic::Request<super::ListFriendApplyReq>,
        ) -> std::result::Result<
            tonic::Response<super::ListFriendApplyResp>,
            tonic::Status,
        >;
        /// CountFriend 统计好友数量
        async fn count_friend(
            &self,
            request: tonic::Request<super::CountFriendReq>,
        ) -> std::result::Result<tonic::Response<super::CountFriendResp>, tonic::Status>;
    }
    #[derive(Debug)]
    pub struct FriendServiceServer<T: FriendService> {
        inner: _Inner<T>,
        accept_compression_encodings: EnabledCompressionEncodings,
        send_compression_encodings: EnabledCompressionEncodings,
        max_decoding_message_size: Option<usize>,
        max_encoding_message_size: Option<usize>,
    }
    struct _Inner<T>(Arc<T>);
    impl<T: FriendService> FriendServiceServer<T> {
        pub fn new(inner: T) -> Self {
            Self::from_arc(Arc::new(inner))
        }
        pub fn from_arc(inner: Arc<T>) -> Self {
            let inner = _Inner(inner);
            Self {
                inner,
                accept_compression_encodings: Default::default(),
                send_compression_encodings: Default::default(),
                max_decoding_message_size: None,
                max_encoding_message_size: None,
            }
        }
        pub fn with_interceptor<F>(
            inner: T,
            interceptor: F,
        ) -> InterceptedService<Self, F>
        where
            F: tonic::service::Interceptor,
        {
            InterceptedService::new(Self::new(inner), interceptor)
        }
        /// Enable decompressing requests with the given encoding.
        #[must_use]
        pub fn accept_compressed(mut self, encoding: CompressionEncoding) -> Self {
            self.accept_compression_encodings.enable(encoding);
            self
        }
        /// Compress responses with the given encoding, if the client supports it.
        #[must_use]
        pub fn send_compressed(mut self, encoding: CompressionEncoding) -> Self {
            self.send_compression_encodings.enable(encoding);
            self
        }
        /// Limits the maximum size of a decoded message.
        ///
        /// Default: `4MB`
        #[must_use]
        pub fn max_decoding_message_size(mut self, limit: usize) -> Self {
            self.max_decoding_message_size = Some(limit);
            self
        }
        /// Limits the maximum size of an encoded message.
        ///
        /// Default: `usize::MAX`
        #[must_use]
        pub fn max_encoding_message_size(mut self, limit: usize) -> Self {
            self.max_encoding_message_size = Some(limit);
            self
        }
    }
    impl<T, B> tonic::codegen::Service<http::Request<B>> for FriendServiceServer<T>
    where
        T: FriendService,
        B: Body + Send + 'static,
        B::Error: Into<StdError> + Send + 'static,
    {
        type Response = http::Response<tonic::body::BoxBody>;
        type Error = std::convert::Infallible;
        type Future = BoxFuture<Self::Response, Self::Error>;
        fn poll_ready(
            &mut self,
            _cx: &mut Context<'_>,
        ) -> Poll<std::result::Result<(), Self::Error>> {
            Poll::Ready(Ok(()))
        }
        fn call(&mut self, req: http::Request<B>) -> Self::Future {
            let inner = self.inner.clone();
            match req.uri().path() {
                "/pb.friendService/FriendApply" => {
                    #[allow(non_camel_case_types)]
                    struct FriendApplySvc<T: FriendService>(pub Arc<T>);
                    impl<
                        T: FriendService,
                    > tonic::server::UnaryService<super::FriendApplyReq>
                    for FriendApplySvc<T> {
                        type Response = super::FriendApplyResp;
                        type Future = BoxFuture<
                            tonic::Response<Self::Response>,
                            tonic::Status,
                        >;
                        fn call(
                            &mut self,
                            request: tonic::Request<super::FriendApplyReq>,
                        ) -> Self::Future {
                            let inner = Arc::clone(&self.0);
                            let fut = async move {
                                (*inner).friend_apply(request).await
                            };
                            Box::pin(fut)
                        }
                    }
                    let accept_compression_encodings = self.accept_compression_encodings;
                    let send_compression_encodings = self.send_compression_encodings;
                    let max_decoding_message_size = self.max_decoding_message_size;
                    let max_encoding_message_size = self.max_encoding_message_size;
                    let inner = self.inner.clone();
                    let fut = async move {
                        let inner = inner.0;
                        let method = FriendApplySvc(inner);
                        let codec = tonic::codec::ProstCodec::default();
                        let mut grpc = tonic::server::Grpc::new(codec)
                            .apply_compression_config(
                                accept_compression_encodings,
                                send_compression_encodings,
                            )
                            .apply_max_message_size_config(
                                max_decoding_message_size,
                                max_encoding_message_size,
                            );
                        let res = grpc.unary(method, req).await;
                        Ok(res)
                    };
                    Box::pin(fut)
                }
                "/pb.friendService/FriendApplyHandle" => {
                    #[allow(non_camel_case_types)]
                    struct FriendApplyHandleSvc<T: FriendService>(pub Arc<T>);
                    impl<
                        T: FriendService,
                    > tonic::server::UnaryService<super::FriendApplyHandleReq>
                    for FriendApplyHandleSvc<T> {
                        type Response = super::FriendApplyHandleResp;
                        type Future = BoxFuture<
                            tonic::Response<Self::Response>,
                            tonic::Status,
                        >;
                        fn call(
                            &mut self,
                            request: tonic::Request<super::FriendApplyHandleReq>,
                        ) -> Self::Future {
                            let inner = Arc::clone(&self.0);
                            let fut = async move {
                                (*inner).friend_apply_handle(request).await
                            };
                            Box::pin(fut)
                        }
                    }
                    let accept_compression_encodings = self.accept_compression_encodings;
                    let send_compression_encodings = self.send_compression_encodings;
                    let max_decoding_message_size = self.max_decoding_message_size;
                    let max_encoding_message_size = self.max_encoding_message_size;
                    let inner = self.inner.clone();
                    let fut = async move {
                        let inner = inner.0;
                        let method = FriendApplyHandleSvc(inner);
                        let codec = tonic::codec::ProstCodec::default();
                        let mut grpc = tonic::server::Grpc::new(codec)
                            .apply_compression_config(
                                accept_compression_encodings,
                                send_compression_encodings,
                            )
                            .apply_max_message_size_config(
                                max_decoding_message_size,
                                max_encoding_message_size,
                            );
                        let res = grpc.unary(method, req).await;
                        Ok(res)
                    };
                    Box::pin(fut)
                }
                "/pb.friendService/ListFriendApply" => {
                    #[allow(non_camel_case_types)]
                    struct ListFriendApplySvc<T: FriendService>(pub Arc<T>);
                    impl<
                        T: FriendService,
                    > tonic::server::UnaryService<super::ListFriendApplyReq>
                    for ListFriendApplySvc<T> {
                        type Response = super::ListFriendApplyResp;
                        type Future = BoxFuture<
                            tonic::Response<Self::Response>,
                            tonic::Status,
                        >;
                        fn call(
                            &mut self,
                            request: tonic::Request<super::ListFriendApplyReq>,
                        ) -> Self::Future {
                            let inner = Arc::clone(&self.0);
                            let fut = async move {
                                (*inner).list_friend_apply(request).await
                            };
                            Box::pin(fut)
                        }
                    }
                    let accept_compression_encodings = self.accept_compression_encodings;
                    let send_compression_encodings = self.send_compression_encodings;
                    let max_decoding_message_size = self.max_decoding_message_size;
                    let max_encoding_message_size = self.max_encoding_message_size;
                    let inner = self.inner.clone();
                    let fut = async move {
                        let inner = inner.0;
                        let method = ListFriendApplySvc(inner);
                        let codec = tonic::codec::ProstCodec::default();
                        let mut grpc = tonic::server::Grpc::new(codec)
                            .apply_compression_config(
                                accept_compression_encodings,
                                send_compression_encodings,
                            )
                            .apply_max_message_size_config(
                                max_decoding_message_size,
                                max_encoding_message_size,
                            );
                        let res = grpc.unary(method, req).await;
                        Ok(res)
                    };
                    Box::pin(fut)
                }
                "/pb.friendService/CountFriend" => {
                    #[allow(non_camel_case_types)]
                    struct CountFriendSvc<T: FriendService>(pub Arc<T>);
                    impl<
                        T: FriendService,
                    > tonic::server::UnaryService<super::CountFriendReq>
                    for CountFriendSvc<T> {
                        type Response = super::CountFriendResp;
                        type Future = BoxFuture<
                            tonic::Response<Self::Response>,
                            tonic::Status,
                        >;
                        fn call(
                            &mut self,
                            request: tonic::Request<super::CountFriendReq>,
                        ) -> Self::Future {
                            let inner = Arc::clone(&self.0);
                            let fut = async move {
                                (*inner).count_friend(request).await
                            };
                            Box::pin(fut)
                        }
                    }
                    let accept_compression_encodings = self.accept_compression_encodings;
                    let send_compression_encodings = self.send_compression_encodings;
                    let max_decoding_message_size = self.max_decoding_message_size;
                    let max_encoding_message_size = self.max_encoding_message_size;
                    let inner = self.inner.clone();
                    let fut = async move {
                        let inner = inner.0;
                        let method = CountFriendSvc(inner);
                        let codec = tonic::codec::ProstCodec::default();
                        let mut grpc = tonic::server::Grpc::new(codec)
                            .apply_compression_config(
                                accept_compression_encodings,
                                send_compression_encodings,
                            )
                            .apply_max_message_size_config(
                                max_decoding_message_size,
                                max_encoding_message_size,
                            );
                        let res = grpc.unary(method, req).await;
                        Ok(res)
                    };
                    Box::pin(fut)
                }
                _ => {
                    Box::pin(async move {
                        Ok(
                            http::Response::builder()
                                .status(200)
                                .header("grpc-status", "12")
                                .header("content-type", "application/grpc")
                                .body(empty_body())
                                .unwrap(),
                        )
                    })
                }
            }
        }
    }
    impl<T: FriendService> Clone for FriendServiceServer<T> {
        fn clone(&self) -> Self {
            let inner = self.inner.clone();
            Self {
                inner,
                accept_compression_encodings: self.accept_compression_encodings,
                send_compression_encodings: self.send_compression_encodings,
                max_decoding_message_size: self.max_decoding_message_size,
                max_encoding_message_size: self.max_encoding_message_size,
            }
        }
    }
    impl<T: FriendService> Clone for _Inner<T> {
        fn clone(&self) -> Self {
            Self(Arc::clone(&self.0))
        }
    }
    impl<T: std::fmt::Debug> std::fmt::Debug for _Inner<T> {
        fn fmt(&self, f: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
            write!(f, "{:?}", self.0)
        }
    }
    impl<T: FriendService> tonic::server::NamedService for FriendServiceServer<T> {
        const NAME: &'static str = "pb.friendService";
    }
}
/// Generated server implementations.
pub mod conversation_service_server {
    #![allow(unused_variables, dead_code, missing_docs, clippy::let_unit_value)]
    use tonic::codegen::*;
    /// Generated trait containing gRPC methods that should be implemented for use with ConversationServiceServer.
    #[async_trait]
    pub trait ConversationService: Send + Sync + 'static {
        /// ConversationSettingUpdate 更新会话设置
        async fn conversation_setting_update(
            &self,
            request: tonic::Request<super::ConversationSettingUpdateReq>,
        ) -> std::result::Result<
            tonic::Response<super::ConversationSettingUpdateResp>,
            tonic::Status,
        >;
        /// ListJoinedConversations 列出加入的会话
        async fn list_joined_conversations(
            &self,
            request: tonic::Request<super::ListJoinedConversationsReq>,
        ) -> std::result::Result<
            tonic::Response<super::ListJoinedConversationsResp>,
            tonic::Status,
        >;
    }
    #[derive(Debug)]
    pub struct ConversationServiceServer<T: ConversationService> {
        inner: _Inner<T>,
        accept_compression_encodings: EnabledCompressionEncodings,
        send_compression_encodings: EnabledCompressionEncodings,
        max_decoding_message_size: Option<usize>,
        max_encoding_message_size: Option<usize>,
    }
    struct _Inner<T>(Arc<T>);
    impl<T: ConversationService> ConversationServiceServer<T> {
        pub fn new(inner: T) -> Self {
            Self::from_arc(Arc::new(inner))
        }
        pub fn from_arc(inner: Arc<T>) -> Self {
            let inner = _Inner(inner);
            Self {
                inner,
                accept_compression_encodings: Default::default(),
                send_compression_encodings: Default::default(),
                max_decoding_message_size: None,
                max_encoding_message_size: None,
            }
        }
        pub fn with_interceptor<F>(
            inner: T,
            interceptor: F,
        ) -> InterceptedService<Self, F>
        where
            F: tonic::service::Interceptor,
        {
            InterceptedService::new(Self::new(inner), interceptor)
        }
        /// Enable decompressing requests with the given encoding.
        #[must_use]
        pub fn accept_compressed(mut self, encoding: CompressionEncoding) -> Self {
            self.accept_compression_encodings.enable(encoding);
            self
        }
        /// Compress responses with the given encoding, if the client supports it.
        #[must_use]
        pub fn send_compressed(mut self, encoding: CompressionEncoding) -> Self {
            self.send_compression_encodings.enable(encoding);
            self
        }
        /// Limits the maximum size of a decoded message.
        ///
        /// Default: `4MB`
        #[must_use]
        pub fn max_decoding_message_size(mut self, limit: usize) -> Self {
            self.max_decoding_message_size = Some(limit);
            self
        }
        /// Limits the maximum size of an encoded message.
        ///
        /// Default: `usize::MAX`
        #[must_use]
        pub fn max_encoding_message_size(mut self, limit: usize) -> Self {
            self.max_encoding_message_size = Some(limit);
            self
        }
    }
    impl<T, B> tonic::codegen::Service<http::Request<B>> for ConversationServiceServer<T>
    where
        T: ConversationService,
        B: Body + Send + 'static,
        B::Error: Into<StdError> + Send + 'static,
    {
        type Response = http::Response<tonic::body::BoxBody>;
        type Error = std::convert::Infallible;
        type Future = BoxFuture<Self::Response, Self::Error>;
        fn poll_ready(
            &mut self,
            _cx: &mut Context<'_>,
        ) -> Poll<std::result::Result<(), Self::Error>> {
            Poll::Ready(Ok(()))
        }
        fn call(&mut self, req: http::Request<B>) -> Self::Future {
            let inner = self.inner.clone();
            match req.uri().path() {
                "/pb.conversationService/ConversationSettingUpdate" => {
                    #[allow(non_camel_case_types)]
                    struct ConversationSettingUpdateSvc<T: ConversationService>(
                        pub Arc<T>,
                    );
                    impl<
                        T: ConversationService,
                    > tonic::server::UnaryService<super::ConversationSettingUpdateReq>
                    for ConversationSettingUpdateSvc<T> {
                        type Response = super::ConversationSettingUpdateResp;
                        type Future = BoxFuture<
                            tonic::Response<Self::Response>,
                            tonic::Status,
                        >;
                        fn call(
                            &mut self,
                            request: tonic::Request<super::ConversationSettingUpdateReq>,
                        ) -> Self::Future {
                            let inner = Arc::clone(&self.0);
                            let fut = async move {
                                (*inner).conversation_setting_update(request).await
                            };
                            Box::pin(fut)
                        }
                    }
                    let accept_compression_encodings = self.accept_compression_encodings;
                    let send_compression_encodings = self.send_compression_encodings;
                    let max_decoding_message_size = self.max_decoding_message_size;
                    let max_encoding_message_size = self.max_encoding_message_size;
                    let inner = self.inner.clone();
                    let fut = async move {
                        let inner = inner.0;
                        let method = ConversationSettingUpdateSvc(inner);
                        let codec = tonic::codec::ProstCodec::default();
                        let mut grpc = tonic::server::Grpc::new(codec)
                            .apply_compression_config(
                                accept_compression_encodings,
                                send_compression_encodings,
                            )
                            .apply_max_message_size_config(
                                max_decoding_message_size,
                                max_encoding_message_size,
                            );
                        let res = grpc.unary(method, req).await;
                        Ok(res)
                    };
                    Box::pin(fut)
                }
                "/pb.conversationService/ListJoinedConversations" => {
                    #[allow(non_camel_case_types)]
                    struct ListJoinedConversationsSvc<T: ConversationService>(
                        pub Arc<T>,
                    );
                    impl<
                        T: ConversationService,
                    > tonic::server::UnaryService<super::ListJoinedConversationsReq>
                    for ListJoinedConversationsSvc<T> {
                        type Response = super::ListJoinedConversationsResp;
                        type Future = BoxFuture<
                            tonic::Response<Self::Response>,
                            tonic::Status,
                        >;
                        fn call(
                            &mut self,
                            request: tonic::Request<super::ListJoinedConversationsReq>,
                        ) -> Self::Future {
                            let inner = Arc::clone(&self.0);
                            let fut = async move {
                                (*inner).list_joined_conversations(request).await
                            };
                            Box::pin(fut)
                        }
                    }
                    let accept_compression_encodings = self.accept_compression_encodings;
                    let send_compression_encodings = self.send_compression_encodings;
                    let max_decoding_message_size = self.max_decoding_message_size;
                    let max_encoding_message_size = self.max_encoding_message_size;
                    let inner = self.inner.clone();
                    let fut = async move {
                        let inner = inner.0;
                        let method = ListJoinedConversationsSvc(inner);
                        let codec = tonic::codec::ProstCodec::default();
                        let mut grpc = tonic::server::Grpc::new(codec)
                            .apply_compression_config(
                                accept_compression_encodings,
                                send_compression_encodings,
                            )
                            .apply_max_message_size_config(
                                max_decoding_message_size,
                                max_encoding_message_size,
                            );
                        let res = grpc.unary(method, req).await;
                        Ok(res)
                    };
                    Box::pin(fut)
                }
                _ => {
                    Box::pin(async move {
                        Ok(
                            http::Response::builder()
                                .status(200)
                                .header("grpc-status", "12")
                                .header("content-type", "application/grpc")
                                .body(empty_body())
                                .unwrap(),
                        )
                    })
                }
            }
        }
    }
    impl<T: ConversationService> Clone for ConversationServiceServer<T> {
        fn clone(&self) -> Self {
            let inner = self.inner.clone();
            Self {
                inner,
                accept_compression_encodings: self.accept_compression_encodings,
                send_compression_encodings: self.send_compression_encodings,
                max_decoding_message_size: self.max_decoding_message_size,
                max_encoding_message_size: self.max_encoding_message_size,
            }
        }
    }
    impl<T: ConversationService> Clone for _Inner<T> {
        fn clone(&self) -> Self {
            Self(Arc::clone(&self.0))
        }
    }
    impl<T: std::fmt::Debug> std::fmt::Debug for _Inner<T> {
        fn fmt(&self, f: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
            write!(f, "{:?}", self.0)
        }
    }
    impl<T: ConversationService> tonic::server::NamedService
    for ConversationServiceServer<T> {
        const NAME: &'static str = "pb.conversationService";
    }
}
/// Generated server implementations.
pub mod subscription_service_server {
    #![allow(unused_variables, dead_code, missing_docs, clippy::let_unit_value)]
    use tonic::codegen::*;
    /// Generated trait containing gRPC methods that should be implemented for use with SubscriptionServiceServer.
    #[async_trait]
    pub trait SubscriptionService: Send + Sync + 'static {
        /// SubscriptionSubscribe 订阅号订阅
        async fn subscription_subscribe(
            &self,
            request: tonic::Request<super::SubscriptionSubscribeReq>,
        ) -> std::result::Result<
            tonic::Response<super::SubscriptionSubscribeResp>,
            tonic::Status,
        >;
        /// SubscriptionAfterOnline 订阅号在做用户上线后的操作
        async fn subscription_after_online(
            &self,
            request: tonic::Request<super::SubscriptionAfterOnlineReq>,
        ) -> std::result::Result<
            tonic::Response<super::SubscriptionAfterOnlineResp>,
            tonic::Status,
        >;
        /// UpsertUserSubscription 更新用户订阅的订阅号
        async fn upsert_user_subscription(
            &self,
            request: tonic::Request<super::UpsertUserSubscriptionReq>,
        ) -> std::result::Result<
            tonic::Response<super::UpsertUserSubscriptionResp>,
            tonic::Status,
        >;
        /// DeleteUserSubscription 删除用户订阅的订阅号
        async fn delete_user_subscription(
            &self,
            request: tonic::Request<super::DeleteUserSubscriptionReq>,
        ) -> std::result::Result<
            tonic::Response<super::DeleteUserSubscriptionResp>,
            tonic::Status,
        >;
        /// ListSubscriptionSubscribers 列出订阅号订阅者
        async fn list_subscription_subscribers(
            &self,
            request: tonic::Request<super::ListSubscriptionSubscribersReq>,
        ) -> std::result::Result<
            tonic::Response<super::ListSubscriptionSubscribersResp>,
            tonic::Status,
        >;
    }
    #[derive(Debug)]
    pub struct SubscriptionServiceServer<T: SubscriptionService> {
        inner: _Inner<T>,
        accept_compression_encodings: EnabledCompressionEncodings,
        send_compression_encodings: EnabledCompressionEncodings,
        max_decoding_message_size: Option<usize>,
        max_encoding_message_size: Option<usize>,
    }
    struct _Inner<T>(Arc<T>);
    impl<T: SubscriptionService> SubscriptionServiceServer<T> {
        pub fn new(inner: T) -> Self {
            Self::from_arc(Arc::new(inner))
        }
        pub fn from_arc(inner: Arc<T>) -> Self {
            let inner = _Inner(inner);
            Self {
                inner,
                accept_compression_encodings: Default::default(),
                send_compression_encodings: Default::default(),
                max_decoding_message_size: None,
                max_encoding_message_size: None,
            }
        }
        pub fn with_interceptor<F>(
            inner: T,
            interceptor: F,
        ) -> InterceptedService<Self, F>
        where
            F: tonic::service::Interceptor,
        {
            InterceptedService::new(Self::new(inner), interceptor)
        }
        /// Enable decompressing requests with the given encoding.
        #[must_use]
        pub fn accept_compressed(mut self, encoding: CompressionEncoding) -> Self {
            self.accept_compression_encodings.enable(encoding);
            self
        }
        /// Compress responses with the given encoding, if the client supports it.
        #[must_use]
        pub fn send_compressed(mut self, encoding: CompressionEncoding) -> Self {
            self.send_compression_encodings.enable(encoding);
            self
        }
        /// Limits the maximum size of a decoded message.
        ///
        /// Default: `4MB`
        #[must_use]
        pub fn max_decoding_message_size(mut self, limit: usize) -> Self {
            self.max_decoding_message_size = Some(limit);
            self
        }
        /// Limits the maximum size of an encoded message.
        ///
        /// Default: `usize::MAX`
        #[must_use]
        pub fn max_encoding_message_size(mut self, limit: usize) -> Self {
            self.max_encoding_message_size = Some(limit);
            self
        }
    }
    impl<T, B> tonic::codegen::Service<http::Request<B>> for SubscriptionServiceServer<T>
    where
        T: SubscriptionService,
        B: Body + Send + 'static,
        B::Error: Into<StdError> + Send + 'static,
    {
        type Response = http::Response<tonic::body::BoxBody>;
        type Error = std::convert::Infallible;
        type Future = BoxFuture<Self::Response, Self::Error>;
        fn poll_ready(
            &mut self,
            _cx: &mut Context<'_>,
        ) -> Poll<std::result::Result<(), Self::Error>> {
            Poll::Ready(Ok(()))
        }
        fn call(&mut self, req: http::Request<B>) -> Self::Future {
            let inner = self.inner.clone();
            match req.uri().path() {
                "/pb.subscriptionService/SubscriptionSubscribe" => {
                    #[allow(non_camel_case_types)]
                    struct SubscriptionSubscribeSvc<T: SubscriptionService>(pub Arc<T>);
                    impl<
                        T: SubscriptionService,
                    > tonic::server::UnaryService<super::SubscriptionSubscribeReq>
                    for SubscriptionSubscribeSvc<T> {
                        type Response = super::SubscriptionSubscribeResp;
                        type Future = BoxFuture<
                            tonic::Response<Self::Response>,
                            tonic::Status,
                        >;
                        fn call(
                            &mut self,
                            request: tonic::Request<super::SubscriptionSubscribeReq>,
                        ) -> Self::Future {
                            let inner = Arc::clone(&self.0);
                            let fut = async move {
                                (*inner).subscription_subscribe(request).await
                            };
                            Box::pin(fut)
                        }
                    }
                    let accept_compression_encodings = self.accept_compression_encodings;
                    let send_compression_encodings = self.send_compression_encodings;
                    let max_decoding_message_size = self.max_decoding_message_size;
                    let max_encoding_message_size = self.max_encoding_message_size;
                    let inner = self.inner.clone();
                    let fut = async move {
                        let inner = inner.0;
                        let method = SubscriptionSubscribeSvc(inner);
                        let codec = tonic::codec::ProstCodec::default();
                        let mut grpc = tonic::server::Grpc::new(codec)
                            .apply_compression_config(
                                accept_compression_encodings,
                                send_compression_encodings,
                            )
                            .apply_max_message_size_config(
                                max_decoding_message_size,
                                max_encoding_message_size,
                            );
                        let res = grpc.unary(method, req).await;
                        Ok(res)
                    };
                    Box::pin(fut)
                }
                "/pb.subscriptionService/SubscriptionAfterOnline" => {
                    #[allow(non_camel_case_types)]
                    struct SubscriptionAfterOnlineSvc<T: SubscriptionService>(
                        pub Arc<T>,
                    );
                    impl<
                        T: SubscriptionService,
                    > tonic::server::UnaryService<super::SubscriptionAfterOnlineReq>
                    for SubscriptionAfterOnlineSvc<T> {
                        type Response = super::SubscriptionAfterOnlineResp;
                        type Future = BoxFuture<
                            tonic::Response<Self::Response>,
                            tonic::Status,
                        >;
                        fn call(
                            &mut self,
                            request: tonic::Request<super::SubscriptionAfterOnlineReq>,
                        ) -> Self::Future {
                            let inner = Arc::clone(&self.0);
                            let fut = async move {
                                (*inner).subscription_after_online(request).await
                            };
                            Box::pin(fut)
                        }
                    }
                    let accept_compression_encodings = self.accept_compression_encodings;
                    let send_compression_encodings = self.send_compression_encodings;
                    let max_decoding_message_size = self.max_decoding_message_size;
                    let max_encoding_message_size = self.max_encoding_message_size;
                    let inner = self.inner.clone();
                    let fut = async move {
                        let inner = inner.0;
                        let method = SubscriptionAfterOnlineSvc(inner);
                        let codec = tonic::codec::ProstCodec::default();
                        let mut grpc = tonic::server::Grpc::new(codec)
                            .apply_compression_config(
                                accept_compression_encodings,
                                send_compression_encodings,
                            )
                            .apply_max_message_size_config(
                                max_decoding_message_size,
                                max_encoding_message_size,
                            );
                        let res = grpc.unary(method, req).await;
                        Ok(res)
                    };
                    Box::pin(fut)
                }
                "/pb.subscriptionService/UpsertUserSubscription" => {
                    #[allow(non_camel_case_types)]
                    struct UpsertUserSubscriptionSvc<T: SubscriptionService>(pub Arc<T>);
                    impl<
                        T: SubscriptionService,
                    > tonic::server::UnaryService<super::UpsertUserSubscriptionReq>
                    for UpsertUserSubscriptionSvc<T> {
                        type Response = super::UpsertUserSubscriptionResp;
                        type Future = BoxFuture<
                            tonic::Response<Self::Response>,
                            tonic::Status,
                        >;
                        fn call(
                            &mut self,
                            request: tonic::Request<super::UpsertUserSubscriptionReq>,
                        ) -> Self::Future {
                            let inner = Arc::clone(&self.0);
                            let fut = async move {
                                (*inner).upsert_user_subscription(request).await
                            };
                            Box::pin(fut)
                        }
                    }
                    let accept_compression_encodings = self.accept_compression_encodings;
                    let send_compression_encodings = self.send_compression_encodings;
                    let max_decoding_message_size = self.max_decoding_message_size;
                    let max_encoding_message_size = self.max_encoding_message_size;
                    let inner = self.inner.clone();
                    let fut = async move {
                        let inner = inner.0;
                        let method = UpsertUserSubscriptionSvc(inner);
                        let codec = tonic::codec::ProstCodec::default();
                        let mut grpc = tonic::server::Grpc::new(codec)
                            .apply_compression_config(
                                accept_compression_encodings,
                                send_compression_encodings,
                            )
                            .apply_max_message_size_config(
                                max_decoding_message_size,
                                max_encoding_message_size,
                            );
                        let res = grpc.unary(method, req).await;
                        Ok(res)
                    };
                    Box::pin(fut)
                }
                "/pb.subscriptionService/DeleteUserSubscription" => {
                    #[allow(non_camel_case_types)]
                    struct DeleteUserSubscriptionSvc<T: SubscriptionService>(pub Arc<T>);
                    impl<
                        T: SubscriptionService,
                    > tonic::server::UnaryService<super::DeleteUserSubscriptionReq>
                    for DeleteUserSubscriptionSvc<T> {
                        type Response = super::DeleteUserSubscriptionResp;
                        type Future = BoxFuture<
                            tonic::Response<Self::Response>,
                            tonic::Status,
                        >;
                        fn call(
                            &mut self,
                            request: tonic::Request<super::DeleteUserSubscriptionReq>,
                        ) -> Self::Future {
                            let inner = Arc::clone(&self.0);
                            let fut = async move {
                                (*inner).delete_user_subscription(request).await
                            };
                            Box::pin(fut)
                        }
                    }
                    let accept_compression_encodings = self.accept_compression_encodings;
                    let send_compression_encodings = self.send_compression_encodings;
                    let max_decoding_message_size = self.max_decoding_message_size;
                    let max_encoding_message_size = self.max_encoding_message_size;
                    let inner = self.inner.clone();
                    let fut = async move {
                        let inner = inner.0;
                        let method = DeleteUserSubscriptionSvc(inner);
                        let codec = tonic::codec::ProstCodec::default();
                        let mut grpc = tonic::server::Grpc::new(codec)
                            .apply_compression_config(
                                accept_compression_encodings,
                                send_compression_encodings,
                            )
                            .apply_max_message_size_config(
                                max_decoding_message_size,
                                max_encoding_message_size,
                            );
                        let res = grpc.unary(method, req).await;
                        Ok(res)
                    };
                    Box::pin(fut)
                }
                "/pb.subscriptionService/ListSubscriptionSubscribers" => {
                    #[allow(non_camel_case_types)]
                    struct ListSubscriptionSubscribersSvc<T: SubscriptionService>(
                        pub Arc<T>,
                    );
                    impl<
                        T: SubscriptionService,
                    > tonic::server::UnaryService<super::ListSubscriptionSubscribersReq>
                    for ListSubscriptionSubscribersSvc<T> {
                        type Response = super::ListSubscriptionSubscribersResp;
                        type Future = BoxFuture<
                            tonic::Response<Self::Response>,
                            tonic::Status,
                        >;
                        fn call(
                            &mut self,
                            request: tonic::Request<
                                super::ListSubscriptionSubscribersReq,
                            >,
                        ) -> Self::Future {
                            let inner = Arc::clone(&self.0);
                            let fut = async move {
                                (*inner).list_subscription_subscribers(request).await
                            };
                            Box::pin(fut)
                        }
                    }
                    let accept_compression_encodings = self.accept_compression_encodings;
                    let send_compression_encodings = self.send_compression_encodings;
                    let max_decoding_message_size = self.max_decoding_message_size;
                    let max_encoding_message_size = self.max_encoding_message_size;
                    let inner = self.inner.clone();
                    let fut = async move {
                        let inner = inner.0;
                        let method = ListSubscriptionSubscribersSvc(inner);
                        let codec = tonic::codec::ProstCodec::default();
                        let mut grpc = tonic::server::Grpc::new(codec)
                            .apply_compression_config(
                                accept_compression_encodings,
                                send_compression_encodings,
                            )
                            .apply_max_message_size_config(
                                max_decoding_message_size,
                                max_encoding_message_size,
                            );
                        let res = grpc.unary(method, req).await;
                        Ok(res)
                    };
                    Box::pin(fut)
                }
                _ => {
                    Box::pin(async move {
                        Ok(
                            http::Response::builder()
                                .status(200)
                                .header("grpc-status", "12")
                                .header("content-type", "application/grpc")
                                .body(empty_body())
                                .unwrap(),
                        )
                    })
                }
            }
        }
    }
    impl<T: SubscriptionService> Clone for SubscriptionServiceServer<T> {
        fn clone(&self) -> Self {
            let inner = self.inner.clone();
            Self {
                inner,
                accept_compression_encodings: self.accept_compression_encodings,
                send_compression_encodings: self.send_compression_encodings,
                max_decoding_message_size: self.max_decoding_message_size,
                max_encoding_message_size: self.max_encoding_message_size,
            }
        }
    }
    impl<T: SubscriptionService> Clone for _Inner<T> {
        fn clone(&self) -> Self {
            Self(Arc::clone(&self.0))
        }
    }
    impl<T: std::fmt::Debug> std::fmt::Debug for _Inner<T> {
        fn fmt(&self, f: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
            write!(f, "{:?}", self.0)
        }
    }
    impl<T: SubscriptionService> tonic::server::NamedService
    for SubscriptionServiceServer<T> {
        const NAME: &'static str = "pb.subscriptionService";
    }
}
/// GatewayApiRequest http/私有协议 请求
#[derive(serde::Serialize, serde::Deserialize)]
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct GatewayApiRequest {
    #[prost(message, optional, tag = "1")]
    pub header: ::core::option::Option<RequestHeader>,
    #[prost(string, tag = "2")]
    pub request_id: ::prost::alloc::string::String,
    #[prost(string, tag = "3")]
    pub path: ::prost::alloc::string::String,
    #[prost(bytes = "vec", tag = "4")]
    pub body: ::prost::alloc::vec::Vec<u8>,
}
/// GatewayApiResponse http/私有协议 响应
#[derive(serde::Serialize, serde::Deserialize)]
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct GatewayApiResponse {
    #[prost(message, optional, tag = "1")]
    pub header: ::core::option::Option<ResponseHeader>,
    #[prost(string, tag = "2")]
    pub request_id: ::prost::alloc::string::String,
    #[prost(string, tag = "3")]
    pub path: ::prost::alloc::string::String,
    #[prost(bytes = "vec", tag = "4")]
    pub body: ::prost::alloc::vec::Vec<u8>,
}
/// GatewayWriteDataContent 写入数据内容
#[derive(serde::Serialize, serde::Deserialize)]
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct GatewayWriteDataContent {
    /// 写入数据类型
    #[prost(enumeration = "GatewayWriteDataType", tag = "1")]
    pub data_type: i32,
    /// 响应
    #[prost(message, optional, tag = "2")]
    pub response: ::core::option::Option<GatewayApiResponse>,
    /// 主动推送message
    #[prost(message, optional, tag = "3")]
    pub message: ::core::option::Option<Message>,
    /// 主动推送notice
    #[prost(message, optional, tag = "4")]
    pub notice: ::core::option::Option<Notice>,
}
/// WsConnection ws连接
#[derive(serde::Serialize, serde::Deserialize)]
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct WsConnection {
    #[prost(int64, tag = "1")]
    pub id: i64,
    #[prost(message, optional, tag = "2")]
    pub header: ::core::option::Option<RequestHeader>,
}
/// GatewayGetUserConnectionReq 获取用户的连接
#[derive(serde::Serialize, serde::Deserialize)]
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct GatewayGetUserConnectionReq {
    #[prost(message, optional, tag = "1")]
    pub header: ::core::option::Option<RequestHeader>,
    #[prost(string, tag = "2")]
    pub user_id: ::prost::alloc::string::String,
}
#[derive(serde::Serialize, serde::Deserialize)]
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct GatewayGetUserConnectionResp {
    #[prost(message, optional, tag = "1")]
    pub header: ::core::option::Option<ResponseHeader>,
    #[prost(message, repeated, tag = "2")]
    pub connections: ::prost::alloc::vec::Vec<WsConnection>,
}
/// GatewayBatchGetUserConnectionReq 批量获取用户的连接
#[derive(serde::Serialize, serde::Deserialize)]
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct GatewayBatchGetUserConnectionReq {
    #[prost(message, optional, tag = "1")]
    pub header: ::core::option::Option<RequestHeader>,
    #[prost(string, repeated, tag = "2")]
    pub user_ids: ::prost::alloc::vec::Vec<::prost::alloc::string::String>,
}
#[derive(serde::Serialize, serde::Deserialize)]
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct GatewayBatchGetUserConnectionResp {
    #[prost(message, optional, tag = "1")]
    pub header: ::core::option::Option<ResponseHeader>,
    #[prost(message, repeated, tag = "2")]
    pub connections: ::prost::alloc::vec::Vec<WsConnection>,
}
#[derive(serde::Serialize, serde::Deserialize)]
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct GatewayGetConnectionFilter {
    #[prost(string, repeated, tag = "1")]
    pub user_ids: ::prost::alloc::vec::Vec<::prost::alloc::string::String>,
}
/// GatewayGetConnectionByFilterReq 根据过滤条件获取连接
#[derive(serde::Serialize, serde::Deserialize)]
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct GatewayGetConnectionByFilterReq {
    #[prost(message, optional, tag = "1")]
    pub header: ::core::option::Option<RequestHeader>,
    #[prost(message, optional, tag = "2")]
    pub filter: ::core::option::Option<GatewayGetConnectionFilter>,
}
#[derive(serde::Serialize, serde::Deserialize)]
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct GatewayGetConnectionByFilterResp {
    #[prost(message, optional, tag = "1")]
    pub header: ::core::option::Option<ResponseHeader>,
    #[prost(message, repeated, tag = "2")]
    pub connections: ::prost::alloc::vec::Vec<WsConnection>,
}
/// GatewayWriteDataToWsReq 写入数据到ws连接
#[derive(serde::Serialize, serde::Deserialize)]
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct GatewayWriteDataToWsReq {
    #[prost(message, optional, tag = "1")]
    pub header: ::core::option::Option<RequestHeader>,
    #[prost(message, optional, tag = "2")]
    pub filter: ::core::option::Option<GatewayGetConnectionFilter>,
    #[prost(message, optional, tag = "3")]
    pub data: ::core::option::Option<GatewayWriteDataContent>,
}
#[derive(serde::Serialize, serde::Deserialize)]
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct GatewayWriteDataToWsResp {
    #[prost(message, optional, tag = "1")]
    pub header: ::core::option::Option<ResponseHeader>,
    #[prost(message, repeated, tag = "2")]
    pub success_connections: ::prost::alloc::vec::Vec<WsConnection>,
}
/// GatewayWriteDataToWsWrapperReq 写入数据到ws连接
#[derive(serde::Serialize, serde::Deserialize)]
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct GatewayWriteDataToWsWrapperReq {
    #[prost(message, optional, tag = "1")]
    pub header: ::core::option::Option<RequestHeader>,
    #[prost(message, optional, tag = "2")]
    pub filter: ::core::option::Option<GatewayGetConnectionFilter>,
    #[prost(message, optional, tag = "3")]
    pub data: ::core::option::Option<GatewayWriteDataContent>,
}
/// GatewayKickWsReq 踢出ws连接
#[derive(serde::Serialize, serde::Deserialize)]
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct GatewayKickWsReq {
    #[prost(message, optional, tag = "1")]
    pub header: ::core::option::Option<RequestHeader>,
    #[prost(message, optional, tag = "2")]
    pub filter: ::core::option::Option<GatewayGetConnectionFilter>,
    #[prost(enumeration = "WebsocketCustomCloseCode", tag = "3")]
    pub close_code: i32,
    #[prost(string, tag = "4")]
    pub close_reason: ::prost::alloc::string::String,
}
#[derive(serde::Serialize, serde::Deserialize)]
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct GatewayKickWsResp {
    #[prost(message, optional, tag = "1")]
    pub header: ::core::option::Option<ResponseHeader>,
    #[prost(message, repeated, tag = "2")]
    pub success_connections: ::prost::alloc::vec::Vec<WsConnection>,
}
/// GatewayKeepAliveReq 保持连接
#[derive(serde::Serialize, serde::Deserialize)]
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct GatewayKeepAliveReq {
    #[prost(message, optional, tag = "1")]
    pub header: ::core::option::Option<RequestHeader>,
}
#[derive(serde::Serialize, serde::Deserialize)]
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct GatewayKeepAliveResp {
    #[prost(message, optional, tag = "1")]
    pub header: ::core::option::Option<ResponseHeader>,
}
/// GatewayWriteDataType 写入数据类型
#[derive(serde::Serialize, serde::Deserialize)]
#[derive(Clone, Copy, Debug, PartialEq, Eq, Hash, PartialOrd, Ord, ::prost::Enumeration)]
#[repr(i32)]
pub enum GatewayWriteDataType {
    /// 返回响应
    Response = 0,
    /// 主动推送message
    PushMessage = 1,
    /// 主动推送notice
    PushNotice = 2,
}
impl GatewayWriteDataType {
    /// String value of the enum field names used in the ProtoBuf definition.
    ///
    /// The values are not transformed in any way and thus are considered stable
    /// (if the ProtoBuf definition does not change) and safe for programmatic use.
    pub fn as_str_name(&self) -> &'static str {
        match self {
            GatewayWriteDataType::Response => "Response",
            GatewayWriteDataType::PushMessage => "PushMessage",
            GatewayWriteDataType::PushNotice => "PushNotice",
        }
    }
    /// Creates an enum from field names used in the ProtoBuf definition.
    pub fn from_str_name(value: &str) -> ::core::option::Option<Self> {
        match value {
            "Response" => Some(Self::Response),
            "PushMessage" => Some(Self::PushMessage),
            "PushNotice" => Some(Self::PushNotice),
            _ => None,
        }
    }
}
/// Generated client implementations.
pub mod gateway_service_client {
    #![allow(unused_variables, dead_code, missing_docs, clippy::let_unit_value)]
    use tonic::codegen::*;
    use tonic::codegen::http::Uri;
    #[derive(Debug, Clone)]
    pub struct GatewayServiceClient<T> {
        inner: tonic::client::Grpc<T>,
    }
    impl GatewayServiceClient<tonic::transport::Channel> {
        /// Attempt to create a new client by connecting to a given endpoint.
        pub async fn connect<D>(dst: D) -> Result<Self, tonic::transport::Error>
        where
            D: TryInto<tonic::transport::Endpoint>,
            D::Error: Into<StdError>,
        {
            let conn = tonic::transport::Endpoint::new(dst)?.connect().await?;
            Ok(Self::new(conn))
        }
    }
    impl<T> GatewayServiceClient<T>
    where
        T: tonic::client::GrpcService<tonic::body::BoxBody>,
        T::Error: Into<StdError>,
        T::ResponseBody: Body<Data = Bytes> + Send + 'static,
        <T::ResponseBody as Body>::Error: Into<StdError> + Send,
    {
        pub fn new(inner: T) -> Self {
            let inner = tonic::client::Grpc::new(inner);
            Self { inner }
        }
        pub fn with_origin(inner: T, origin: Uri) -> Self {
            let inner = tonic::client::Grpc::with_origin(inner, origin);
            Self { inner }
        }
        pub fn with_interceptor<F>(
            inner: T,
            interceptor: F,
        ) -> GatewayServiceClient<InterceptedService<T, F>>
        where
            F: tonic::service::Interceptor,
            T::ResponseBody: Default,
            T: tonic::codegen::Service<
                http::Request<tonic::body::BoxBody>,
                Response = http::Response<
                    <T as tonic::client::GrpcService<tonic::body::BoxBody>>::ResponseBody,
                >,
            >,
            <T as tonic::codegen::Service<
                http::Request<tonic::body::BoxBody>,
            >>::Error: Into<StdError> + Send + Sync,
        {
            GatewayServiceClient::new(InterceptedService::new(inner, interceptor))
        }
        /// Compress requests with the given encoding.
        ///
        /// This requires the server to support it otherwise it might respond with an
        /// error.
        #[must_use]
        pub fn send_compressed(mut self, encoding: CompressionEncoding) -> Self {
            self.inner = self.inner.send_compressed(encoding);
            self
        }
        /// Enable decompressing responses.
        #[must_use]
        pub fn accept_compressed(mut self, encoding: CompressionEncoding) -> Self {
            self.inner = self.inner.accept_compressed(encoding);
            self
        }
        /// Limits the maximum size of a decoded message.
        ///
        /// Default: `4MB`
        #[must_use]
        pub fn max_decoding_message_size(mut self, limit: usize) -> Self {
            self.inner = self.inner.max_decoding_message_size(limit);
            self
        }
        /// Limits the maximum size of an encoded message.
        ///
        /// Default: `usize::MAX`
        #[must_use]
        pub fn max_encoding_message_size(mut self, limit: usize) -> Self {
            self.inner = self.inner.max_encoding_message_size(limit);
            self
        }
        /// GatewayGetUserConnection 获取用户的连接
        /// 二次开发人员不建议修改此处逻辑
        pub async fn gateway_get_user_connection(
            &mut self,
            request: impl tonic::IntoRequest<super::GatewayGetUserConnectionReq>,
        ) -> std::result::Result<
            tonic::Response<super::GatewayGetUserConnectionResp>,
            tonic::Status,
        > {
            self.inner
                .ready()
                .await
                .map_err(|e| {
                    tonic::Status::new(
                        tonic::Code::Unknown,
                        format!("Service was not ready: {}", e.into()),
                    )
                })?;
            let codec = tonic::codec::ProstCodec::default();
            let path = http::uri::PathAndQuery::from_static(
                "/pb.gatewayService/GatewayGetUserConnection",
            );
            let mut req = request.into_request();
            req.extensions_mut()
                .insert(
                    GrpcMethod::new("pb.gatewayService", "GatewayGetUserConnection"),
                );
            self.inner.unary(req, path, codec).await
        }
        /// GatewayBatchGetUserConnection 批量获取用户的连接
        /// 二次开发人员建议不修改此处逻辑
        pub async fn gateway_batch_get_user_connection(
            &mut self,
            request: impl tonic::IntoRequest<super::GatewayBatchGetUserConnectionReq>,
        ) -> std::result::Result<
            tonic::Response<super::GatewayBatchGetUserConnectionResp>,
            tonic::Status,
        > {
            self.inner
                .ready()
                .await
                .map_err(|e| {
                    tonic::Status::new(
                        tonic::Code::Unknown,
                        format!("Service was not ready: {}", e.into()),
                    )
                })?;
            let codec = tonic::codec::ProstCodec::default();
            let path = http::uri::PathAndQuery::from_static(
                "/pb.gatewayService/GatewayBatchGetUserConnection",
            );
            let mut req = request.into_request();
            req.extensions_mut()
                .insert(
                    GrpcMethod::new("pb.gatewayService", "GatewayBatchGetUserConnection"),
                );
            self.inner.unary(req, path, codec).await
        }
        /// GatewayGetConnectionByFilter 通过条件获取用户的连接
        /// 二次开发人员可以增加过滤条件
        pub async fn gateway_get_connection_by_filter(
            &mut self,
            request: impl tonic::IntoRequest<super::GatewayGetConnectionByFilterReq>,
        ) -> std::result::Result<
            tonic::Response<super::GatewayGetConnectionByFilterResp>,
            tonic::Status,
        > {
            self.inner
                .ready()
                .await
                .map_err(|e| {
                    tonic::Status::new(
                        tonic::Code::Unknown,
                        format!("Service was not ready: {}", e.into()),
                    )
                })?;
            let codec = tonic::codec::ProstCodec::default();
            let path = http::uri::PathAndQuery::from_static(
                "/pb.gatewayService/GatewayGetConnectionByFilter",
            );
            let mut req = request.into_request();
            req.extensions_mut()
                .insert(
                    GrpcMethod::new("pb.gatewayService", "GatewayGetConnectionByFilter"),
                );
            self.inner.unary(req, path, codec).await
        }
        /// GatewayWriteDataToWs 向用户的连接写入数据
        /// 二次开发人员不建议修改此处逻辑
        pub async fn gateway_write_data_to_ws(
            &mut self,
            request: impl tonic::IntoRequest<super::GatewayWriteDataToWsReq>,
        ) -> std::result::Result<
            tonic::Response<super::GatewayWriteDataToWsResp>,
            tonic::Status,
        > {
            self.inner
                .ready()
                .await
                .map_err(|e| {
                    tonic::Status::new(
                        tonic::Code::Unknown,
                        format!("Service was not ready: {}", e.into()),
                    )
                })?;
            let codec = tonic::codec::ProstCodec::default();
            let path = http::uri::PathAndQuery::from_static(
                "/pb.gatewayService/GatewayWriteDataToWs",
            );
            let mut req = request.into_request();
            req.extensions_mut()
                .insert(GrpcMethod::new("pb.gatewayService", "GatewayWriteDataToWs"));
            self.inner.unary(req, path, codec).await
        }
        /// GatewayWriteDataToWsWrapper 向用户的连接写入数据
        /// 二次开发人员不建议修改此处逻辑
        pub async fn gateway_write_data_to_ws_wrapper(
            &mut self,
            request: impl tonic::IntoRequest<super::GatewayWriteDataToWsWrapperReq>,
        ) -> std::result::Result<
            tonic::Response<super::GatewayWriteDataToWsResp>,
            tonic::Status,
        > {
            self.inner
                .ready()
                .await
                .map_err(|e| {
                    tonic::Status::new(
                        tonic::Code::Unknown,
                        format!("Service was not ready: {}", e.into()),
                    )
                })?;
            let codec = tonic::codec::ProstCodec::default();
            let path = http::uri::PathAndQuery::from_static(
                "/pb.gatewayService/GatewayWriteDataToWsWrapper",
            );
            let mut req = request.into_request();
            req.extensions_mut()
                .insert(
                    GrpcMethod::new("pb.gatewayService", "GatewayWriteDataToWsWrapper"),
                );
            self.inner.unary(req, path, codec).await
        }
        /// GatewayKickWs 踢出用户的连接
        /// 二次开发人员可以在此处修改踢出用户连接的逻辑
        /// 比如踢出连接之前，先给用户发送一条消息
        pub async fn gateway_kick_ws(
            &mut self,
            request: impl tonic::IntoRequest<super::GatewayKickWsReq>,
        ) -> std::result::Result<
            tonic::Response<super::GatewayKickWsResp>,
            tonic::Status,
        > {
            self.inner
                .ready()
                .await
                .map_err(|e| {
                    tonic::Status::new(
                        tonic::Code::Unknown,
                        format!("Service was not ready: {}", e.into()),
                    )
                })?;
            let codec = tonic::codec::ProstCodec::default();
            let path = http::uri::PathAndQuery::from_static(
                "/pb.gatewayService/GatewayKickWs",
            );
            let mut req = request.into_request();
            req.extensions_mut()
                .insert(GrpcMethod::new("pb.gatewayService", "GatewayKickWs"));
            self.inner.unary(req, path, codec).await
        }
        /// KeepAlive 保持连接
        /// 客户端必须每隔 config.Websocket.KeepAliveSecond 秒发送一次心跳包
        /// 二次开发人员可以在这里修改逻辑，比如一致性算法安全校验等
        pub async fn gateway_keep_alive(
            &mut self,
            request: impl tonic::IntoRequest<super::GatewayKeepAliveReq>,
        ) -> std::result::Result<
            tonic::Response<super::GatewayKeepAliveResp>,
            tonic::Status,
        > {
            self.inner
                .ready()
                .await
                .map_err(|e| {
                    tonic::Status::new(
                        tonic::Code::Unknown,
                        format!("Service was not ready: {}", e.into()),
                    )
                })?;
            let codec = tonic::codec::ProstCodec::default();
            let path = http::uri::PathAndQuery::from_static(
                "/pb.gatewayService/GatewayKeepAlive",
            );
            let mut req = request.into_request();
            req.extensions_mut()
                .insert(GrpcMethod::new("pb.gatewayService", "GatewayKeepAlive"));
            self.inner.unary(req, path, codec).await
        }
    }
}
/// Generated server implementations.
pub mod gateway_service_server {
    #![allow(unused_variables, dead_code, missing_docs, clippy::let_unit_value)]
    use tonic::codegen::*;
    /// Generated trait containing gRPC methods that should be implemented for use with GatewayServiceServer.
    #[async_trait]
    pub trait GatewayService: Send + Sync + 'static {
        /// GatewayGetUserConnection 获取用户的连接
        /// 二次开发人员不建议修改此处逻辑
        async fn gateway_get_user_connection(
            &self,
            request: tonic::Request<super::GatewayGetUserConnectionReq>,
        ) -> std::result::Result<
            tonic::Response<super::GatewayGetUserConnectionResp>,
            tonic::Status,
        >;
        /// GatewayBatchGetUserConnection 批量获取用户的连接
        /// 二次开发人员建议不修改此处逻辑
        async fn gateway_batch_get_user_connection(
            &self,
            request: tonic::Request<super::GatewayBatchGetUserConnectionReq>,
        ) -> std::result::Result<
            tonic::Response<super::GatewayBatchGetUserConnectionResp>,
            tonic::Status,
        >;
        /// GatewayGetConnectionByFilter 通过条件获取用户的连接
        /// 二次开发人员可以增加过滤条件
        async fn gateway_get_connection_by_filter(
            &self,
            request: tonic::Request<super::GatewayGetConnectionByFilterReq>,
        ) -> std::result::Result<
            tonic::Response<super::GatewayGetConnectionByFilterResp>,
            tonic::Status,
        >;
        /// GatewayWriteDataToWs 向用户的连接写入数据
        /// 二次开发人员不建议修改此处逻辑
        async fn gateway_write_data_to_ws(
            &self,
            request: tonic::Request<super::GatewayWriteDataToWsReq>,
        ) -> std::result::Result<
            tonic::Response<super::GatewayWriteDataToWsResp>,
            tonic::Status,
        >;
        /// GatewayWriteDataToWsWrapper 向用户的连接写入数据
        /// 二次开发人员不建议修改此处逻辑
        async fn gateway_write_data_to_ws_wrapper(
            &self,
            request: tonic::Request<super::GatewayWriteDataToWsWrapperReq>,
        ) -> std::result::Result<
            tonic::Response<super::GatewayWriteDataToWsResp>,
            tonic::Status,
        >;
        /// GatewayKickWs 踢出用户的连接
        /// 二次开发人员可以在此处修改踢出用户连接的逻辑
        /// 比如踢出连接之前，先给用户发送一条消息
        async fn gateway_kick_ws(
            &self,
            request: tonic::Request<super::GatewayKickWsReq>,
        ) -> std::result::Result<
            tonic::Response<super::GatewayKickWsResp>,
            tonic::Status,
        >;
        /// KeepAlive 保持连接
        /// 客户端必须每隔 config.Websocket.KeepAliveSecond 秒发送一次心跳包
        /// 二次开发人员可以在这里修改逻辑，比如一致性算法安全校验等
        async fn gateway_keep_alive(
            &self,
            request: tonic::Request<super::GatewayKeepAliveReq>,
        ) -> std::result::Result<
            tonic::Response<super::GatewayKeepAliveResp>,
            tonic::Status,
        >;
    }
    #[derive(Debug)]
    pub struct GatewayServiceServer<T: GatewayService> {
        inner: _Inner<T>,
        accept_compression_encodings: EnabledCompressionEncodings,
        send_compression_encodings: EnabledCompressionEncodings,
        max_decoding_message_size: Option<usize>,
        max_encoding_message_size: Option<usize>,
    }
    struct _Inner<T>(Arc<T>);
    impl<T: GatewayService> GatewayServiceServer<T> {
        pub fn new(inner: T) -> Self {
            Self::from_arc(Arc::new(inner))
        }
        pub fn from_arc(inner: Arc<T>) -> Self {
            let inner = _Inner(inner);
            Self {
                inner,
                accept_compression_encodings: Default::default(),
                send_compression_encodings: Default::default(),
                max_decoding_message_size: None,
                max_encoding_message_size: None,
            }
        }
        pub fn with_interceptor<F>(
            inner: T,
            interceptor: F,
        ) -> InterceptedService<Self, F>
        where
            F: tonic::service::Interceptor,
        {
            InterceptedService::new(Self::new(inner), interceptor)
        }
        /// Enable decompressing requests with the given encoding.
        #[must_use]
        pub fn accept_compressed(mut self, encoding: CompressionEncoding) -> Self {
            self.accept_compression_encodings.enable(encoding);
            self
        }
        /// Compress responses with the given encoding, if the client supports it.
        #[must_use]
        pub fn send_compressed(mut self, encoding: CompressionEncoding) -> Self {
            self.send_compression_encodings.enable(encoding);
            self
        }
        /// Limits the maximum size of a decoded message.
        ///
        /// Default: `4MB`
        #[must_use]
        pub fn max_decoding_message_size(mut self, limit: usize) -> Self {
            self.max_decoding_message_size = Some(limit);
            self
        }
        /// Limits the maximum size of an encoded message.
        ///
        /// Default: `usize::MAX`
        #[must_use]
        pub fn max_encoding_message_size(mut self, limit: usize) -> Self {
            self.max_encoding_message_size = Some(limit);
            self
        }
    }
    impl<T, B> tonic::codegen::Service<http::Request<B>> for GatewayServiceServer<T>
    where
        T: GatewayService,
        B: Body + Send + 'static,
        B::Error: Into<StdError> + Send + 'static,
    {
        type Response = http::Response<tonic::body::BoxBody>;
        type Error = std::convert::Infallible;
        type Future = BoxFuture<Self::Response, Self::Error>;
        fn poll_ready(
            &mut self,
            _cx: &mut Context<'_>,
        ) -> Poll<std::result::Result<(), Self::Error>> {
            Poll::Ready(Ok(()))
        }
        fn call(&mut self, req: http::Request<B>) -> Self::Future {
            let inner = self.inner.clone();
            match req.uri().path() {
                "/pb.gatewayService/GatewayGetUserConnection" => {
                    #[allow(non_camel_case_types)]
                    struct GatewayGetUserConnectionSvc<T: GatewayService>(pub Arc<T>);
                    impl<
                        T: GatewayService,
                    > tonic::server::UnaryService<super::GatewayGetUserConnectionReq>
                    for GatewayGetUserConnectionSvc<T> {
                        type Response = super::GatewayGetUserConnectionResp;
                        type Future = BoxFuture<
                            tonic::Response<Self::Response>,
                            tonic::Status,
                        >;
                        fn call(
                            &mut self,
                            request: tonic::Request<super::GatewayGetUserConnectionReq>,
                        ) -> Self::Future {
                            let inner = Arc::clone(&self.0);
                            let fut = async move {
                                (*inner).gateway_get_user_connection(request).await
                            };
                            Box::pin(fut)
                        }
                    }
                    let accept_compression_encodings = self.accept_compression_encodings;
                    let send_compression_encodings = self.send_compression_encodings;
                    let max_decoding_message_size = self.max_decoding_message_size;
                    let max_encoding_message_size = self.max_encoding_message_size;
                    let inner = self.inner.clone();
                    let fut = async move {
                        let inner = inner.0;
                        let method = GatewayGetUserConnectionSvc(inner);
                        let codec = tonic::codec::ProstCodec::default();
                        let mut grpc = tonic::server::Grpc::new(codec)
                            .apply_compression_config(
                                accept_compression_encodings,
                                send_compression_encodings,
                            )
                            .apply_max_message_size_config(
                                max_decoding_message_size,
                                max_encoding_message_size,
                            );
                        let res = grpc.unary(method, req).await;
                        Ok(res)
                    };
                    Box::pin(fut)
                }
                "/pb.gatewayService/GatewayBatchGetUserConnection" => {
                    #[allow(non_camel_case_types)]
                    struct GatewayBatchGetUserConnectionSvc<T: GatewayService>(
                        pub Arc<T>,
                    );
                    impl<
                        T: GatewayService,
                    > tonic::server::UnaryService<
                        super::GatewayBatchGetUserConnectionReq,
                    > for GatewayBatchGetUserConnectionSvc<T> {
                        type Response = super::GatewayBatchGetUserConnectionResp;
                        type Future = BoxFuture<
                            tonic::Response<Self::Response>,
                            tonic::Status,
                        >;
                        fn call(
                            &mut self,
                            request: tonic::Request<
                                super::GatewayBatchGetUserConnectionReq,
                            >,
                        ) -> Self::Future {
                            let inner = Arc::clone(&self.0);
                            let fut = async move {
                                (*inner).gateway_batch_get_user_connection(request).await
                            };
                            Box::pin(fut)
                        }
                    }
                    let accept_compression_encodings = self.accept_compression_encodings;
                    let send_compression_encodings = self.send_compression_encodings;
                    let max_decoding_message_size = self.max_decoding_message_size;
                    let max_encoding_message_size = self.max_encoding_message_size;
                    let inner = self.inner.clone();
                    let fut = async move {
                        let inner = inner.0;
                        let method = GatewayBatchGetUserConnectionSvc(inner);
                        let codec = tonic::codec::ProstCodec::default();
                        let mut grpc = tonic::server::Grpc::new(codec)
                            .apply_compression_config(
                                accept_compression_encodings,
                                send_compression_encodings,
                            )
                            .apply_max_message_size_config(
                                max_decoding_message_size,
                                max_encoding_message_size,
                            );
                        let res = grpc.unary(method, req).await;
                        Ok(res)
                    };
                    Box::pin(fut)
                }
                "/pb.gatewayService/GatewayGetConnectionByFilter" => {
                    #[allow(non_camel_case_types)]
                    struct GatewayGetConnectionByFilterSvc<T: GatewayService>(
                        pub Arc<T>,
                    );
                    impl<
                        T: GatewayService,
                    > tonic::server::UnaryService<super::GatewayGetConnectionByFilterReq>
                    for GatewayGetConnectionByFilterSvc<T> {
                        type Response = super::GatewayGetConnectionByFilterResp;
                        type Future = BoxFuture<
                            tonic::Response<Self::Response>,
                            tonic::Status,
                        >;
                        fn call(
                            &mut self,
                            request: tonic::Request<
                                super::GatewayGetConnectionByFilterReq,
                            >,
                        ) -> Self::Future {
                            let inner = Arc::clone(&self.0);
                            let fut = async move {
                                (*inner).gateway_get_connection_by_filter(request).await
                            };
                            Box::pin(fut)
                        }
                    }
                    let accept_compression_encodings = self.accept_compression_encodings;
                    let send_compression_encodings = self.send_compression_encodings;
                    let max_decoding_message_size = self.max_decoding_message_size;
                    let max_encoding_message_size = self.max_encoding_message_size;
                    let inner = self.inner.clone();
                    let fut = async move {
                        let inner = inner.0;
                        let method = GatewayGetConnectionByFilterSvc(inner);
                        let codec = tonic::codec::ProstCodec::default();
                        let mut grpc = tonic::server::Grpc::new(codec)
                            .apply_compression_config(
                                accept_compression_encodings,
                                send_compression_encodings,
                            )
                            .apply_max_message_size_config(
                                max_decoding_message_size,
                                max_encoding_message_size,
                            );
                        let res = grpc.unary(method, req).await;
                        Ok(res)
                    };
                    Box::pin(fut)
                }
                "/pb.gatewayService/GatewayWriteDataToWs" => {
                    #[allow(non_camel_case_types)]
                    struct GatewayWriteDataToWsSvc<T: GatewayService>(pub Arc<T>);
                    impl<
                        T: GatewayService,
                    > tonic::server::UnaryService<super::GatewayWriteDataToWsReq>
                    for GatewayWriteDataToWsSvc<T> {
                        type Response = super::GatewayWriteDataToWsResp;
                        type Future = BoxFuture<
                            tonic::Response<Self::Response>,
                            tonic::Status,
                        >;
                        fn call(
                            &mut self,
                            request: tonic::Request<super::GatewayWriteDataToWsReq>,
                        ) -> Self::Future {
                            let inner = Arc::clone(&self.0);
                            let fut = async move {
                                (*inner).gateway_write_data_to_ws(request).await
                            };
                            Box::pin(fut)
                        }
                    }
                    let accept_compression_encodings = self.accept_compression_encodings;
                    let send_compression_encodings = self.send_compression_encodings;
                    let max_decoding_message_size = self.max_decoding_message_size;
                    let max_encoding_message_size = self.max_encoding_message_size;
                    let inner = self.inner.clone();
                    let fut = async move {
                        let inner = inner.0;
                        let method = GatewayWriteDataToWsSvc(inner);
                        let codec = tonic::codec::ProstCodec::default();
                        let mut grpc = tonic::server::Grpc::new(codec)
                            .apply_compression_config(
                                accept_compression_encodings,
                                send_compression_encodings,
                            )
                            .apply_max_message_size_config(
                                max_decoding_message_size,
                                max_encoding_message_size,
                            );
                        let res = grpc.unary(method, req).await;
                        Ok(res)
                    };
                    Box::pin(fut)
                }
                "/pb.gatewayService/GatewayWriteDataToWsWrapper" => {
                    #[allow(non_camel_case_types)]
                    struct GatewayWriteDataToWsWrapperSvc<T: GatewayService>(pub Arc<T>);
                    impl<
                        T: GatewayService,
                    > tonic::server::UnaryService<super::GatewayWriteDataToWsWrapperReq>
                    for GatewayWriteDataToWsWrapperSvc<T> {
                        type Response = super::GatewayWriteDataToWsResp;
                        type Future = BoxFuture<
                            tonic::Response<Self::Response>,
                            tonic::Status,
                        >;
                        fn call(
                            &mut self,
                            request: tonic::Request<
                                super::GatewayWriteDataToWsWrapperReq,
                            >,
                        ) -> Self::Future {
                            let inner = Arc::clone(&self.0);
                            let fut = async move {
                                (*inner).gateway_write_data_to_ws_wrapper(request).await
                            };
                            Box::pin(fut)
                        }
                    }
                    let accept_compression_encodings = self.accept_compression_encodings;
                    let send_compression_encodings = self.send_compression_encodings;
                    let max_decoding_message_size = self.max_decoding_message_size;
                    let max_encoding_message_size = self.max_encoding_message_size;
                    let inner = self.inner.clone();
                    let fut = async move {
                        let inner = inner.0;
                        let method = GatewayWriteDataToWsWrapperSvc(inner);
                        let codec = tonic::codec::ProstCodec::default();
                        let mut grpc = tonic::server::Grpc::new(codec)
                            .apply_compression_config(
                                accept_compression_encodings,
                                send_compression_encodings,
                            )
                            .apply_max_message_size_config(
                                max_decoding_message_size,
                                max_encoding_message_size,
                            );
                        let res = grpc.unary(method, req).await;
                        Ok(res)
                    };
                    Box::pin(fut)
                }
                "/pb.gatewayService/GatewayKickWs" => {
                    #[allow(non_camel_case_types)]
                    struct GatewayKickWsSvc<T: GatewayService>(pub Arc<T>);
                    impl<
                        T: GatewayService,
                    > tonic::server::UnaryService<super::GatewayKickWsReq>
                    for GatewayKickWsSvc<T> {
                        type Response = super::GatewayKickWsResp;
                        type Future = BoxFuture<
                            tonic::Response<Self::Response>,
                            tonic::Status,
                        >;
                        fn call(
                            &mut self,
                            request: tonic::Request<super::GatewayKickWsReq>,
                        ) -> Self::Future {
                            let inner = Arc::clone(&self.0);
                            let fut = async move {
                                (*inner).gateway_kick_ws(request).await
                            };
                            Box::pin(fut)
                        }
                    }
                    let accept_compression_encodings = self.accept_compression_encodings;
                    let send_compression_encodings = self.send_compression_encodings;
                    let max_decoding_message_size = self.max_decoding_message_size;
                    let max_encoding_message_size = self.max_encoding_message_size;
                    let inner = self.inner.clone();
                    let fut = async move {
                        let inner = inner.0;
                        let method = GatewayKickWsSvc(inner);
                        let codec = tonic::codec::ProstCodec::default();
                        let mut grpc = tonic::server::Grpc::new(codec)
                            .apply_compression_config(
                                accept_compression_encodings,
                                send_compression_encodings,
                            )
                            .apply_max_message_size_config(
                                max_decoding_message_size,
                                max_encoding_message_size,
                            );
                        let res = grpc.unary(method, req).await;
                        Ok(res)
                    };
                    Box::pin(fut)
                }
                "/pb.gatewayService/GatewayKeepAlive" => {
                    #[allow(non_camel_case_types)]
                    struct GatewayKeepAliveSvc<T: GatewayService>(pub Arc<T>);
                    impl<
                        T: GatewayService,
                    > tonic::server::UnaryService<super::GatewayKeepAliveReq>
                    for GatewayKeepAliveSvc<T> {
                        type Response = super::GatewayKeepAliveResp;
                        type Future = BoxFuture<
                            tonic::Response<Self::Response>,
                            tonic::Status,
                        >;
                        fn call(
                            &mut self,
                            request: tonic::Request<super::GatewayKeepAliveReq>,
                        ) -> Self::Future {
                            let inner = Arc::clone(&self.0);
                            let fut = async move {
                                (*inner).gateway_keep_alive(request).await
                            };
                            Box::pin(fut)
                        }
                    }
                    let accept_compression_encodings = self.accept_compression_encodings;
                    let send_compression_encodings = self.send_compression_encodings;
                    let max_decoding_message_size = self.max_decoding_message_size;
                    let max_encoding_message_size = self.max_encoding_message_size;
                    let inner = self.inner.clone();
                    let fut = async move {
                        let inner = inner.0;
                        let method = GatewayKeepAliveSvc(inner);
                        let codec = tonic::codec::ProstCodec::default();
                        let mut grpc = tonic::server::Grpc::new(codec)
                            .apply_compression_config(
                                accept_compression_encodings,
                                send_compression_encodings,
                            )
                            .apply_max_message_size_config(
                                max_decoding_message_size,
                                max_encoding_message_size,
                            );
                        let res = grpc.unary(method, req).await;
                        Ok(res)
                    };
                    Box::pin(fut)
                }
                _ => {
                    Box::pin(async move {
                        Ok(
                            http::Response::builder()
                                .status(200)
                                .header("grpc-status", "12")
                                .header("content-type", "application/grpc")
                                .body(empty_body())
                                .unwrap(),
                        )
                    })
                }
            }
        }
    }
    impl<T: GatewayService> Clone for GatewayServiceServer<T> {
        fn clone(&self) -> Self {
            let inner = self.inner.clone();
            Self {
                inner,
                accept_compression_encodings: self.accept_compression_encodings,
                send_compression_encodings: self.send_compression_encodings,
                max_decoding_message_size: self.max_decoding_message_size,
                max_encoding_message_size: self.max_encoding_message_size,
            }
        }
    }
    impl<T: GatewayService> Clone for _Inner<T> {
        fn clone(&self) -> Self {
            Self(Arc::clone(&self.0))
        }
    }
    impl<T: std::fmt::Debug> std::fmt::Debug for _Inner<T> {
        fn fmt(&self, f: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
            write!(f, "{:?}", self.0)
        }
    }
    impl<T: GatewayService> tonic::server::NamedService for GatewayServiceServer<T> {
        const NAME: &'static str = "pb.gatewayService";
    }
}
/// MessageSendReq 发送消息请求
#[derive(serde::Serialize, serde::Deserialize)]
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct MessageSendReq {
    #[prost(message, optional, tag = "1")]
    pub header: ::core::option::Option<RequestHeader>,
    /// 消息
    #[prost(message, optional, tag = "2")]
    pub message: ::core::option::Option<Message>,
    /// 禁止走队列
    #[prost(bool, tag = "3")]
    pub disable_queue: bool,
}
/// MessageSendResp 发送消息响应
#[derive(serde::Serialize, serde::Deserialize)]
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct MessageSendResp {
    #[prost(message, optional, tag = "1")]
    pub header: ::core::option::Option<ResponseHeader>,
}
/// MessageBatchSendReq 批量发送消息请求
#[derive(serde::Serialize, serde::Deserialize)]
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct MessageBatchSendReq {
    #[prost(message, optional, tag = "1")]
    pub header: ::core::option::Option<RequestHeader>,
    /// 消息
    #[prost(message, repeated, tag = "2")]
    pub messages: ::prost::alloc::vec::Vec<Message>,
    /// 禁止走队列
    #[prost(bool, tag = "3")]
    pub disable_queue: bool,
}
/// MessageBatchSendResp 批量发送消息响应
#[derive(serde::Serialize, serde::Deserialize)]
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct MessageBatchSendResp {
    #[prost(message, optional, tag = "1")]
    pub header: ::core::option::Option<ResponseHeader>,
}
/// MessageInsertReq 插入消息请求
#[derive(serde::Serialize, serde::Deserialize)]
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct MessageInsertReq {
    #[prost(message, optional, tag = "1")]
    pub header: ::core::option::Option<RequestHeader>,
    /// 消息
    #[prost(message, repeated, tag = "2")]
    pub messages: ::prost::alloc::vec::Vec<Message>,
}
/// MessageInsertResp 插入消息响应
#[derive(serde::Serialize, serde::Deserialize)]
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct MessageInsertResp {
    #[prost(message, optional, tag = "1")]
    pub header: ::core::option::Option<ResponseHeader>,
}
/// MessagePushReq 推送消息请求
#[derive(serde::Serialize, serde::Deserialize)]
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct MessagePushReq {
    #[prost(message, optional, tag = "1")]
    pub header: ::core::option::Option<RequestHeader>,
    /// 消息
    #[prost(message, repeated, tag = "2")]
    pub message: ::prost::alloc::vec::Vec<Message>,
}
/// MessagePushResp 推送消息响应
#[derive(serde::Serialize, serde::Deserialize)]
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct MessagePushResp {
    #[prost(message, optional, tag = "1")]
    pub header: ::core::option::Option<ResponseHeader>,
}
/// MessageContentText 图文消息
#[derive(serde::Serialize, serde::Deserialize)]
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct MessageContentText {
    /// items 图文消息
    #[prost(message, repeated, tag = "1")]
    pub items: ::prost::alloc::vec::Vec<message_content_text::Item>,
}
/// Nested message and enum types in `MessageContentText`.
pub mod message_content_text {
    #[derive(serde::Serialize, serde::Deserialize)]
    #[allow(clippy::derive_partial_eq_without_eq)]
    #[derive(Clone, PartialEq, ::prost::Message)]
    pub struct Item {
        /// 类型
        #[prost(enumeration = "item::Type", tag = "1")]
        pub r#type: i32,
        /// 文本
        #[prost(string, tag = "2")]
        pub text: ::prost::alloc::string::String,
        #[prost(message, optional, tag = "3")]
        pub image: ::core::option::Option<item::Image>,
        #[prost(message, optional, tag = "4")]
        pub at: ::core::option::Option<item::At>,
    }
    /// Nested message and enum types in `Item`.
    pub mod item {
        /// 图片
        #[derive(serde::Serialize, serde::Deserialize)]
        #[allow(clippy::derive_partial_eq_without_eq)]
        #[derive(Clone, PartialEq, ::prost::Message)]
        pub struct Image {
            /// 图片地址
            #[prost(string, tag = "1")]
            pub url: ::prost::alloc::string::String,
            /// 宽度
            #[prost(int32, tag = "2")]
            pub width: i32,
            /// 高度
            #[prost(int32, tag = "3")]
            pub height: i32,
        }
        /// @用户信息
        #[derive(serde::Serialize, serde::Deserialize)]
        #[allow(clippy::derive_partial_eq_without_eq)]
        #[derive(Clone, PartialEq, ::prost::Message)]
        pub struct At {
            /// 用户id
            #[prost(string, tag = "1")]
            pub user_id: ::prost::alloc::string::String,
            /// 用户名称, 渲染时先获取用户本地信息中的备注，如果没有备注，那么就显示该名称
            #[prost(string, tag = "2")]
            pub name: ::prost::alloc::string::String,
        }
        #[derive(serde::Serialize, serde::Deserialize)]
        #[derive(
            Clone,
            Copy,
            Debug,
            PartialEq,
            Eq,
            Hash,
            PartialOrd,
            Ord,
            ::prost::Enumeration
        )]
        #[repr(i32)]
        pub enum Type {
            /// 文本
            Text = 0,
            /// 图片
            Image = 1,
            /// @
            At = 2,
        }
        impl Type {
            /// String value of the enum field names used in the ProtoBuf definition.
            ///
            /// The values are not transformed in any way and thus are considered stable
            /// (if the ProtoBuf definition does not change) and safe for programmatic use.
            pub fn as_str_name(&self) -> &'static str {
                match self {
                    Type::Text => "TEXT",
                    Type::Image => "IMAGE",
                    Type::At => "AT",
                }
            }
            /// Creates an enum from field names used in the ProtoBuf definition.
            pub fn from_str_name(value: &str) -> ::core::option::Option<Self> {
                match value {
                    "TEXT" => Some(Self::Text),
                    "IMAGE" => Some(Self::Image),
                    "AT" => Some(Self::At),
                    _ => None,
                }
            }
        }
    }
}
/// NoticeContentNewFriendRequest 通知内容-新的好友请求
#[derive(serde::Serialize, serde::Deserialize)]
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct NoticeContentNewFriendRequest {}
/// NoticeContentJoinNewGroup 通知内容-加入新群
#[derive(serde::Serialize, serde::Deserialize)]
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct NoticeContentJoinNewGroup {
    #[prost(string, tag = "1")]
    pub group_id: ::prost::alloc::string::String,
}
/// NoticeContentOnlineStatus 通知内容-用户在线状态
#[derive(serde::Serialize, serde::Deserialize)]
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct NoticeContentOnlineStatus {
    /// 用户id
    #[prost(string, tag = "1")]
    pub user_id: ::prost::alloc::string::String,
    /// 是在线还是离线
    #[prost(bool, tag = "2")]
    pub online: bool,
}
#[derive(serde::Serialize, serde::Deserialize)]
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct NoticeSendReq {
    #[prost(message, optional, tag = "1")]
    pub header: ::core::option::Option<RequestHeader>,
    #[prost(message, optional, tag = "2")]
    pub notice: ::core::option::Option<Notice>,
    /// 追加用户
    #[prost(string, repeated, tag = "3")]
    pub user_ids: ::prost::alloc::vec::Vec<::prost::alloc::string::String>,
    /// 是否广播
    #[prost(bool, tag = "4")]
    pub broadcast: bool,
}
#[derive(serde::Serialize, serde::Deserialize)]
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct NoticeSendResp {
    #[prost(message, optional, tag = "1")]
    pub header: ::core::option::Option<ResponseHeader>,
}
#[derive(serde::Serialize, serde::Deserialize)]
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct NoticeBatchSendReq {
    #[prost(message, optional, tag = "1")]
    pub header: ::core::option::Option<RequestHeader>,
    #[prost(message, repeated, tag = "2")]
    pub notices: ::prost::alloc::vec::Vec<NoticeSendReq>,
}
#[derive(serde::Serialize, serde::Deserialize)]
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct NoticeBatchSendResp {
    #[prost(message, optional, tag = "1")]
    pub header: ::core::option::Option<ResponseHeader>,
}
#[derive(serde::Serialize, serde::Deserialize)]
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct ListNoticeReq {
    #[prost(message, optional, tag = "1")]
    pub header: ::core::option::Option<RequestHeader>,
    /// 会话id
    #[prost(message, repeated, tag = "2")]
    pub conv_list: ::prost::alloc::vec::Vec<list_notice_req::Conversation>,
    /// SortGt 排序大于
    #[prost(int64, tag = "3")]
    pub sort_gt: i64,
    /// Limit 限制条数
    #[prost(int64, tag = "4")]
    pub limit: i64,
}
/// Nested message and enum types in `ListNoticeReq`.
pub mod list_notice_req {
    #[derive(serde::Serialize, serde::Deserialize)]
    #[allow(clippy::derive_partial_eq_without_eq)]
    #[derive(Clone, PartialEq, ::prost::Message)]
    pub struct Conversation {
        /// 会话id
        #[prost(string, tag = "1")]
        pub conversation_id: ::prost::alloc::string::String,
        /// 会话类型
        #[prost(enumeration = "super::ConversationType", tag = "2")]
        pub conversation_type: i32,
    }
}
#[derive(serde::Serialize, serde::Deserialize)]
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct ListNoticeResp {
    #[prost(message, optional, tag = "1")]
    pub header: ::core::option::Option<ResponseHeader>,
    #[prost(message, repeated, tag = "2")]
    pub notices: ::prost::alloc::vec::Vec<Notice>,
}
/// Generated client implementations.
pub mod message_service_client {
    #![allow(unused_variables, dead_code, missing_docs, clippy::let_unit_value)]
    use tonic::codegen::*;
    use tonic::codegen::http::Uri;
    #[derive(Debug, Clone)]
    pub struct MessageServiceClient<T> {
        inner: tonic::client::Grpc<T>,
    }
    impl MessageServiceClient<tonic::transport::Channel> {
        /// Attempt to create a new client by connecting to a given endpoint.
        pub async fn connect<D>(dst: D) -> Result<Self, tonic::transport::Error>
        where
            D: TryInto<tonic::transport::Endpoint>,
            D::Error: Into<StdError>,
        {
            let conn = tonic::transport::Endpoint::new(dst)?.connect().await?;
            Ok(Self::new(conn))
        }
    }
    impl<T> MessageServiceClient<T>
    where
        T: tonic::client::GrpcService<tonic::body::BoxBody>,
        T::Error: Into<StdError>,
        T::ResponseBody: Body<Data = Bytes> + Send + 'static,
        <T::ResponseBody as Body>::Error: Into<StdError> + Send,
    {
        pub fn new(inner: T) -> Self {
            let inner = tonic::client::Grpc::new(inner);
            Self { inner }
        }
        pub fn with_origin(inner: T, origin: Uri) -> Self {
            let inner = tonic::client::Grpc::with_origin(inner, origin);
            Self { inner }
        }
        pub fn with_interceptor<F>(
            inner: T,
            interceptor: F,
        ) -> MessageServiceClient<InterceptedService<T, F>>
        where
            F: tonic::service::Interceptor,
            T::ResponseBody: Default,
            T: tonic::codegen::Service<
                http::Request<tonic::body::BoxBody>,
                Response = http::Response<
                    <T as tonic::client::GrpcService<tonic::body::BoxBody>>::ResponseBody,
                >,
            >,
            <T as tonic::codegen::Service<
                http::Request<tonic::body::BoxBody>,
            >>::Error: Into<StdError> + Send + Sync,
        {
            MessageServiceClient::new(InterceptedService::new(inner, interceptor))
        }
        /// Compress requests with the given encoding.
        ///
        /// This requires the server to support it otherwise it might respond with an
        /// error.
        #[must_use]
        pub fn send_compressed(mut self, encoding: CompressionEncoding) -> Self {
            self.inner = self.inner.send_compressed(encoding);
            self
        }
        /// Enable decompressing responses.
        #[must_use]
        pub fn accept_compressed(mut self, encoding: CompressionEncoding) -> Self {
            self.inner = self.inner.accept_compressed(encoding);
            self
        }
        /// Limits the maximum size of a decoded message.
        ///
        /// Default: `4MB`
        #[must_use]
        pub fn max_decoding_message_size(mut self, limit: usize) -> Self {
            self.inner = self.inner.max_decoding_message_size(limit);
            self
        }
        /// Limits the maximum size of an encoded message.
        ///
        /// Default: `usize::MAX`
        #[must_use]
        pub fn max_encoding_message_size(mut self, limit: usize) -> Self {
            self.inner = self.inner.max_encoding_message_size(limit);
            self
        }
        /// MessageInsert 插入消息
        /// 二次开发时，需要实现该接口
        pub async fn message_insert(
            &mut self,
            request: impl tonic::IntoRequest<super::MessageInsertReq>,
        ) -> std::result::Result<
            tonic::Response<super::MessageInsertResp>,
            tonic::Status,
        > {
            self.inner
                .ready()
                .await
                .map_err(|e| {
                    tonic::Status::new(
                        tonic::Code::Unknown,
                        format!("Service was not ready: {}", e.into()),
                    )
                })?;
            let codec = tonic::codec::ProstCodec::default();
            let path = http::uri::PathAndQuery::from_static(
                "/pb.messageService/MessageInsert",
            );
            let mut req = request.into_request();
            req.extensions_mut()
                .insert(GrpcMethod::new("pb.messageService", "MessageInsert"));
            self.inner.unary(req, path, codec).await
        }
        /// MessageSend 发送消息
        pub async fn message_send(
            &mut self,
            request: impl tonic::IntoRequest<super::MessageSendReq>,
        ) -> std::result::Result<
            tonic::Response<super::MessageSendResp>,
            tonic::Status,
        > {
            self.inner
                .ready()
                .await
                .map_err(|e| {
                    tonic::Status::new(
                        tonic::Code::Unknown,
                        format!("Service was not ready: {}", e.into()),
                    )
                })?;
            let codec = tonic::codec::ProstCodec::default();
            let path = http::uri::PathAndQuery::from_static(
                "/pb.messageService/MessageSend",
            );
            let mut req = request.into_request();
            req.extensions_mut()
                .insert(GrpcMethod::new("pb.messageService", "MessageSend"));
            self.inner.unary(req, path, codec).await
        }
        /// MessageBatchSend 批量发送消息
        pub async fn message_batch_send(
            &mut self,
            request: impl tonic::IntoRequest<super::MessageBatchSendReq>,
        ) -> std::result::Result<
            tonic::Response<super::MessageBatchSendResp>,
            tonic::Status,
        > {
            self.inner
                .ready()
                .await
                .map_err(|e| {
                    tonic::Status::new(
                        tonic::Code::Unknown,
                        format!("Service was not ready: {}", e.into()),
                    )
                })?;
            let codec = tonic::codec::ProstCodec::default();
            let path = http::uri::PathAndQuery::from_static(
                "/pb.messageService/MessageBatchSend",
            );
            let mut req = request.into_request();
            req.extensions_mut()
                .insert(GrpcMethod::new("pb.messageService", "MessageBatchSend"));
            self.inner.unary(req, path, codec).await
        }
        /// MessagePush 推送消息
        pub async fn message_push(
            &mut self,
            request: impl tonic::IntoRequest<super::MessagePushReq>,
        ) -> std::result::Result<
            tonic::Response<super::MessagePushResp>,
            tonic::Status,
        > {
            self.inner
                .ready()
                .await
                .map_err(|e| {
                    tonic::Status::new(
                        tonic::Code::Unknown,
                        format!("Service was not ready: {}", e.into()),
                    )
                })?;
            let codec = tonic::codec::ProstCodec::default();
            let path = http::uri::PathAndQuery::from_static(
                "/pb.messageService/MessagePush",
            );
            let mut req = request.into_request();
            req.extensions_mut()
                .insert(GrpcMethod::new("pb.messageService", "MessagePush"));
            self.inner.unary(req, path, codec).await
        }
    }
}
/// Generated client implementations.
pub mod notice_service_client {
    #![allow(unused_variables, dead_code, missing_docs, clippy::let_unit_value)]
    use tonic::codegen::*;
    use tonic::codegen::http::Uri;
    #[derive(Debug, Clone)]
    pub struct NoticeServiceClient<T> {
        inner: tonic::client::Grpc<T>,
    }
    impl NoticeServiceClient<tonic::transport::Channel> {
        /// Attempt to create a new client by connecting to a given endpoint.
        pub async fn connect<D>(dst: D) -> Result<Self, tonic::transport::Error>
        where
            D: TryInto<tonic::transport::Endpoint>,
            D::Error: Into<StdError>,
        {
            let conn = tonic::transport::Endpoint::new(dst)?.connect().await?;
            Ok(Self::new(conn))
        }
    }
    impl<T> NoticeServiceClient<T>
    where
        T: tonic::client::GrpcService<tonic::body::BoxBody>,
        T::Error: Into<StdError>,
        T::ResponseBody: Body<Data = Bytes> + Send + 'static,
        <T::ResponseBody as Body>::Error: Into<StdError> + Send,
    {
        pub fn new(inner: T) -> Self {
            let inner = tonic::client::Grpc::new(inner);
            Self { inner }
        }
        pub fn with_origin(inner: T, origin: Uri) -> Self {
            let inner = tonic::client::Grpc::with_origin(inner, origin);
            Self { inner }
        }
        pub fn with_interceptor<F>(
            inner: T,
            interceptor: F,
        ) -> NoticeServiceClient<InterceptedService<T, F>>
        where
            F: tonic::service::Interceptor,
            T::ResponseBody: Default,
            T: tonic::codegen::Service<
                http::Request<tonic::body::BoxBody>,
                Response = http::Response<
                    <T as tonic::client::GrpcService<tonic::body::BoxBody>>::ResponseBody,
                >,
            >,
            <T as tonic::codegen::Service<
                http::Request<tonic::body::BoxBody>,
            >>::Error: Into<StdError> + Send + Sync,
        {
            NoticeServiceClient::new(InterceptedService::new(inner, interceptor))
        }
        /// Compress requests with the given encoding.
        ///
        /// This requires the server to support it otherwise it might respond with an
        /// error.
        #[must_use]
        pub fn send_compressed(mut self, encoding: CompressionEncoding) -> Self {
            self.inner = self.inner.send_compressed(encoding);
            self
        }
        /// Enable decompressing responses.
        #[must_use]
        pub fn accept_compressed(mut self, encoding: CompressionEncoding) -> Self {
            self.inner = self.inner.accept_compressed(encoding);
            self
        }
        /// Limits the maximum size of a decoded message.
        ///
        /// Default: `4MB`
        #[must_use]
        pub fn max_decoding_message_size(mut self, limit: usize) -> Self {
            self.inner = self.inner.max_decoding_message_size(limit);
            self
        }
        /// Limits the maximum size of an encoded message.
        ///
        /// Default: `usize::MAX`
        #[must_use]
        pub fn max_encoding_message_size(mut self, limit: usize) -> Self {
            self.inner = self.inner.max_encoding_message_size(limit);
            self
        }
        /// NoticeSend 通知发送
        pub async fn notice_send(
            &mut self,
            request: impl tonic::IntoRequest<super::NoticeSendReq>,
        ) -> std::result::Result<tonic::Response<super::NoticeSendResp>, tonic::Status> {
            self.inner
                .ready()
                .await
                .map_err(|e| {
                    tonic::Status::new(
                        tonic::Code::Unknown,
                        format!("Service was not ready: {}", e.into()),
                    )
                })?;
            let codec = tonic::codec::ProstCodec::default();
            let path = http::uri::PathAndQuery::from_static(
                "/pb.noticeService/NoticeSend",
            );
            let mut req = request.into_request();
            req.extensions_mut()
                .insert(GrpcMethod::new("pb.noticeService", "NoticeSend"));
            self.inner.unary(req, path, codec).await
        }
        /// NoticeBatchSend 通知批量发送
        pub async fn notice_batch_send(
            &mut self,
            request: impl tonic::IntoRequest<super::NoticeBatchSendReq>,
        ) -> std::result::Result<
            tonic::Response<super::NoticeBatchSendResp>,
            tonic::Status,
        > {
            self.inner
                .ready()
                .await
                .map_err(|e| {
                    tonic::Status::new(
                        tonic::Code::Unknown,
                        format!("Service was not ready: {}", e.into()),
                    )
                })?;
            let codec = tonic::codec::ProstCodec::default();
            let path = http::uri::PathAndQuery::from_static(
                "/pb.noticeService/NoticeBatchSend",
            );
            let mut req = request.into_request();
            req.extensions_mut()
                .insert(GrpcMethod::new("pb.noticeService", "NoticeBatchSend"));
            self.inner.unary(req, path, codec).await
        }
        /// ListNotice 获取通知列表
        pub async fn list_notice(
            &mut self,
            request: impl tonic::IntoRequest<super::ListNoticeReq>,
        ) -> std::result::Result<tonic::Response<super::ListNoticeResp>, tonic::Status> {
            self.inner
                .ready()
                .await
                .map_err(|e| {
                    tonic::Status::new(
                        tonic::Code::Unknown,
                        format!("Service was not ready: {}", e.into()),
                    )
                })?;
            let codec = tonic::codec::ProstCodec::default();
            let path = http::uri::PathAndQuery::from_static(
                "/pb.noticeService/ListNotice",
            );
            let mut req = request.into_request();
            req.extensions_mut()
                .insert(GrpcMethod::new("pb.noticeService", "ListNotice"));
            self.inner.unary(req, path, codec).await
        }
    }
}
/// Generated server implementations.
pub mod message_service_server {
    #![allow(unused_variables, dead_code, missing_docs, clippy::let_unit_value)]
    use tonic::codegen::*;
    /// Generated trait containing gRPC methods that should be implemented for use with MessageServiceServer.
    #[async_trait]
    pub trait MessageService: Send + Sync + 'static {
        /// MessageInsert 插入消息
        /// 二次开发时，需要实现该接口
        async fn message_insert(
            &self,
            request: tonic::Request<super::MessageInsertReq>,
        ) -> std::result::Result<
            tonic::Response<super::MessageInsertResp>,
            tonic::Status,
        >;
        /// MessageSend 发送消息
        async fn message_send(
            &self,
            request: tonic::Request<super::MessageSendReq>,
        ) -> std::result::Result<tonic::Response<super::MessageSendResp>, tonic::Status>;
        /// MessageBatchSend 批量发送消息
        async fn message_batch_send(
            &self,
            request: tonic::Request<super::MessageBatchSendReq>,
        ) -> std::result::Result<
            tonic::Response<super::MessageBatchSendResp>,
            tonic::Status,
        >;
        /// MessagePush 推送消息
        async fn message_push(
            &self,
            request: tonic::Request<super::MessagePushReq>,
        ) -> std::result::Result<tonic::Response<super::MessagePushResp>, tonic::Status>;
    }
    #[derive(Debug)]
    pub struct MessageServiceServer<T: MessageService> {
        inner: _Inner<T>,
        accept_compression_encodings: EnabledCompressionEncodings,
        send_compression_encodings: EnabledCompressionEncodings,
        max_decoding_message_size: Option<usize>,
        max_encoding_message_size: Option<usize>,
    }
    struct _Inner<T>(Arc<T>);
    impl<T: MessageService> MessageServiceServer<T> {
        pub fn new(inner: T) -> Self {
            Self::from_arc(Arc::new(inner))
        }
        pub fn from_arc(inner: Arc<T>) -> Self {
            let inner = _Inner(inner);
            Self {
                inner,
                accept_compression_encodings: Default::default(),
                send_compression_encodings: Default::default(),
                max_decoding_message_size: None,
                max_encoding_message_size: None,
            }
        }
        pub fn with_interceptor<F>(
            inner: T,
            interceptor: F,
        ) -> InterceptedService<Self, F>
        where
            F: tonic::service::Interceptor,
        {
            InterceptedService::new(Self::new(inner), interceptor)
        }
        /// Enable decompressing requests with the given encoding.
        #[must_use]
        pub fn accept_compressed(mut self, encoding: CompressionEncoding) -> Self {
            self.accept_compression_encodings.enable(encoding);
            self
        }
        /// Compress responses with the given encoding, if the client supports it.
        #[must_use]
        pub fn send_compressed(mut self, encoding: CompressionEncoding) -> Self {
            self.send_compression_encodings.enable(encoding);
            self
        }
        /// Limits the maximum size of a decoded message.
        ///
        /// Default: `4MB`
        #[must_use]
        pub fn max_decoding_message_size(mut self, limit: usize) -> Self {
            self.max_decoding_message_size = Some(limit);
            self
        }
        /// Limits the maximum size of an encoded message.
        ///
        /// Default: `usize::MAX`
        #[must_use]
        pub fn max_encoding_message_size(mut self, limit: usize) -> Self {
            self.max_encoding_message_size = Some(limit);
            self
        }
    }
    impl<T, B> tonic::codegen::Service<http::Request<B>> for MessageServiceServer<T>
    where
        T: MessageService,
        B: Body + Send + 'static,
        B::Error: Into<StdError> + Send + 'static,
    {
        type Response = http::Response<tonic::body::BoxBody>;
        type Error = std::convert::Infallible;
        type Future = BoxFuture<Self::Response, Self::Error>;
        fn poll_ready(
            &mut self,
            _cx: &mut Context<'_>,
        ) -> Poll<std::result::Result<(), Self::Error>> {
            Poll::Ready(Ok(()))
        }
        fn call(&mut self, req: http::Request<B>) -> Self::Future {
            let inner = self.inner.clone();
            match req.uri().path() {
                "/pb.messageService/MessageInsert" => {
                    #[allow(non_camel_case_types)]
                    struct MessageInsertSvc<T: MessageService>(pub Arc<T>);
                    impl<
                        T: MessageService,
                    > tonic::server::UnaryService<super::MessageInsertReq>
                    for MessageInsertSvc<T> {
                        type Response = super::MessageInsertResp;
                        type Future = BoxFuture<
                            tonic::Response<Self::Response>,
                            tonic::Status,
                        >;
                        fn call(
                            &mut self,
                            request: tonic::Request<super::MessageInsertReq>,
                        ) -> Self::Future {
                            let inner = Arc::clone(&self.0);
                            let fut = async move {
                                (*inner).message_insert(request).await
                            };
                            Box::pin(fut)
                        }
                    }
                    let accept_compression_encodings = self.accept_compression_encodings;
                    let send_compression_encodings = self.send_compression_encodings;
                    let max_decoding_message_size = self.max_decoding_message_size;
                    let max_encoding_message_size = self.max_encoding_message_size;
                    let inner = self.inner.clone();
                    let fut = async move {
                        let inner = inner.0;
                        let method = MessageInsertSvc(inner);
                        let codec = tonic::codec::ProstCodec::default();
                        let mut grpc = tonic::server::Grpc::new(codec)
                            .apply_compression_config(
                                accept_compression_encodings,
                                send_compression_encodings,
                            )
                            .apply_max_message_size_config(
                                max_decoding_message_size,
                                max_encoding_message_size,
                            );
                        let res = grpc.unary(method, req).await;
                        Ok(res)
                    };
                    Box::pin(fut)
                }
                "/pb.messageService/MessageSend" => {
                    #[allow(non_camel_case_types)]
                    struct MessageSendSvc<T: MessageService>(pub Arc<T>);
                    impl<
                        T: MessageService,
                    > tonic::server::UnaryService<super::MessageSendReq>
                    for MessageSendSvc<T> {
                        type Response = super::MessageSendResp;
                        type Future = BoxFuture<
                            tonic::Response<Self::Response>,
                            tonic::Status,
                        >;
                        fn call(
                            &mut self,
                            request: tonic::Request<super::MessageSendReq>,
                        ) -> Self::Future {
                            let inner = Arc::clone(&self.0);
                            let fut = async move {
                                (*inner).message_send(request).await
                            };
                            Box::pin(fut)
                        }
                    }
                    let accept_compression_encodings = self.accept_compression_encodings;
                    let send_compression_encodings = self.send_compression_encodings;
                    let max_decoding_message_size = self.max_decoding_message_size;
                    let max_encoding_message_size = self.max_encoding_message_size;
                    let inner = self.inner.clone();
                    let fut = async move {
                        let inner = inner.0;
                        let method = MessageSendSvc(inner);
                        let codec = tonic::codec::ProstCodec::default();
                        let mut grpc = tonic::server::Grpc::new(codec)
                            .apply_compression_config(
                                accept_compression_encodings,
                                send_compression_encodings,
                            )
                            .apply_max_message_size_config(
                                max_decoding_message_size,
                                max_encoding_message_size,
                            );
                        let res = grpc.unary(method, req).await;
                        Ok(res)
                    };
                    Box::pin(fut)
                }
                "/pb.messageService/MessageBatchSend" => {
                    #[allow(non_camel_case_types)]
                    struct MessageBatchSendSvc<T: MessageService>(pub Arc<T>);
                    impl<
                        T: MessageService,
                    > tonic::server::UnaryService<super::MessageBatchSendReq>
                    for MessageBatchSendSvc<T> {
                        type Response = super::MessageBatchSendResp;
                        type Future = BoxFuture<
                            tonic::Response<Self::Response>,
                            tonic::Status,
                        >;
                        fn call(
                            &mut self,
                            request: tonic::Request<super::MessageBatchSendReq>,
                        ) -> Self::Future {
                            let inner = Arc::clone(&self.0);
                            let fut = async move {
                                (*inner).message_batch_send(request).await
                            };
                            Box::pin(fut)
                        }
                    }
                    let accept_compression_encodings = self.accept_compression_encodings;
                    let send_compression_encodings = self.send_compression_encodings;
                    let max_decoding_message_size = self.max_decoding_message_size;
                    let max_encoding_message_size = self.max_encoding_message_size;
                    let inner = self.inner.clone();
                    let fut = async move {
                        let inner = inner.0;
                        let method = MessageBatchSendSvc(inner);
                        let codec = tonic::codec::ProstCodec::default();
                        let mut grpc = tonic::server::Grpc::new(codec)
                            .apply_compression_config(
                                accept_compression_encodings,
                                send_compression_encodings,
                            )
                            .apply_max_message_size_config(
                                max_decoding_message_size,
                                max_encoding_message_size,
                            );
                        let res = grpc.unary(method, req).await;
                        Ok(res)
                    };
                    Box::pin(fut)
                }
                "/pb.messageService/MessagePush" => {
                    #[allow(non_camel_case_types)]
                    struct MessagePushSvc<T: MessageService>(pub Arc<T>);
                    impl<
                        T: MessageService,
                    > tonic::server::UnaryService<super::MessagePushReq>
                    for MessagePushSvc<T> {
                        type Response = super::MessagePushResp;
                        type Future = BoxFuture<
                            tonic::Response<Self::Response>,
                            tonic::Status,
                        >;
                        fn call(
                            &mut self,
                            request: tonic::Request<super::MessagePushReq>,
                        ) -> Self::Future {
                            let inner = Arc::clone(&self.0);
                            let fut = async move {
                                (*inner).message_push(request).await
                            };
                            Box::pin(fut)
                        }
                    }
                    let accept_compression_encodings = self.accept_compression_encodings;
                    let send_compression_encodings = self.send_compression_encodings;
                    let max_decoding_message_size = self.max_decoding_message_size;
                    let max_encoding_message_size = self.max_encoding_message_size;
                    let inner = self.inner.clone();
                    let fut = async move {
                        let inner = inner.0;
                        let method = MessagePushSvc(inner);
                        let codec = tonic::codec::ProstCodec::default();
                        let mut grpc = tonic::server::Grpc::new(codec)
                            .apply_compression_config(
                                accept_compression_encodings,
                                send_compression_encodings,
                            )
                            .apply_max_message_size_config(
                                max_decoding_message_size,
                                max_encoding_message_size,
                            );
                        let res = grpc.unary(method, req).await;
                        Ok(res)
                    };
                    Box::pin(fut)
                }
                _ => {
                    Box::pin(async move {
                        Ok(
                            http::Response::builder()
                                .status(200)
                                .header("grpc-status", "12")
                                .header("content-type", "application/grpc")
                                .body(empty_body())
                                .unwrap(),
                        )
                    })
                }
            }
        }
    }
    impl<T: MessageService> Clone for MessageServiceServer<T> {
        fn clone(&self) -> Self {
            let inner = self.inner.clone();
            Self {
                inner,
                accept_compression_encodings: self.accept_compression_encodings,
                send_compression_encodings: self.send_compression_encodings,
                max_decoding_message_size: self.max_decoding_message_size,
                max_encoding_message_size: self.max_encoding_message_size,
            }
        }
    }
    impl<T: MessageService> Clone for _Inner<T> {
        fn clone(&self) -> Self {
            Self(Arc::clone(&self.0))
        }
    }
    impl<T: std::fmt::Debug> std::fmt::Debug for _Inner<T> {
        fn fmt(&self, f: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
            write!(f, "{:?}", self.0)
        }
    }
    impl<T: MessageService> tonic::server::NamedService for MessageServiceServer<T> {
        const NAME: &'static str = "pb.messageService";
    }
}
/// Generated server implementations.
pub mod notice_service_server {
    #![allow(unused_variables, dead_code, missing_docs, clippy::let_unit_value)]
    use tonic::codegen::*;
    /// Generated trait containing gRPC methods that should be implemented for use with NoticeServiceServer.
    #[async_trait]
    pub trait NoticeService: Send + Sync + 'static {
        /// NoticeSend 通知发送
        async fn notice_send(
            &self,
            request: tonic::Request<super::NoticeSendReq>,
        ) -> std::result::Result<tonic::Response<super::NoticeSendResp>, tonic::Status>;
        /// NoticeBatchSend 通知批量发送
        async fn notice_batch_send(
            &self,
            request: tonic::Request<super::NoticeBatchSendReq>,
        ) -> std::result::Result<
            tonic::Response<super::NoticeBatchSendResp>,
            tonic::Status,
        >;
        /// ListNotice 获取通知列表
        async fn list_notice(
            &self,
            request: tonic::Request<super::ListNoticeReq>,
        ) -> std::result::Result<tonic::Response<super::ListNoticeResp>, tonic::Status>;
    }
    #[derive(Debug)]
    pub struct NoticeServiceServer<T: NoticeService> {
        inner: _Inner<T>,
        accept_compression_encodings: EnabledCompressionEncodings,
        send_compression_encodings: EnabledCompressionEncodings,
        max_decoding_message_size: Option<usize>,
        max_encoding_message_size: Option<usize>,
    }
    struct _Inner<T>(Arc<T>);
    impl<T: NoticeService> NoticeServiceServer<T> {
        pub fn new(inner: T) -> Self {
            Self::from_arc(Arc::new(inner))
        }
        pub fn from_arc(inner: Arc<T>) -> Self {
            let inner = _Inner(inner);
            Self {
                inner,
                accept_compression_encodings: Default::default(),
                send_compression_encodings: Default::default(),
                max_decoding_message_size: None,
                max_encoding_message_size: None,
            }
        }
        pub fn with_interceptor<F>(
            inner: T,
            interceptor: F,
        ) -> InterceptedService<Self, F>
        where
            F: tonic::service::Interceptor,
        {
            InterceptedService::new(Self::new(inner), interceptor)
        }
        /// Enable decompressing requests with the given encoding.
        #[must_use]
        pub fn accept_compressed(mut self, encoding: CompressionEncoding) -> Self {
            self.accept_compression_encodings.enable(encoding);
            self
        }
        /// Compress responses with the given encoding, if the client supports it.
        #[must_use]
        pub fn send_compressed(mut self, encoding: CompressionEncoding) -> Self {
            self.send_compression_encodings.enable(encoding);
            self
        }
        /// Limits the maximum size of a decoded message.
        ///
        /// Default: `4MB`
        #[must_use]
        pub fn max_decoding_message_size(mut self, limit: usize) -> Self {
            self.max_decoding_message_size = Some(limit);
            self
        }
        /// Limits the maximum size of an encoded message.
        ///
        /// Default: `usize::MAX`
        #[must_use]
        pub fn max_encoding_message_size(mut self, limit: usize) -> Self {
            self.max_encoding_message_size = Some(limit);
            self
        }
    }
    impl<T, B> tonic::codegen::Service<http::Request<B>> for NoticeServiceServer<T>
    where
        T: NoticeService,
        B: Body + Send + 'static,
        B::Error: Into<StdError> + Send + 'static,
    {
        type Response = http::Response<tonic::body::BoxBody>;
        type Error = std::convert::Infallible;
        type Future = BoxFuture<Self::Response, Self::Error>;
        fn poll_ready(
            &mut self,
            _cx: &mut Context<'_>,
        ) -> Poll<std::result::Result<(), Self::Error>> {
            Poll::Ready(Ok(()))
        }
        fn call(&mut self, req: http::Request<B>) -> Self::Future {
            let inner = self.inner.clone();
            match req.uri().path() {
                "/pb.noticeService/NoticeSend" => {
                    #[allow(non_camel_case_types)]
                    struct NoticeSendSvc<T: NoticeService>(pub Arc<T>);
                    impl<
                        T: NoticeService,
                    > tonic::server::UnaryService<super::NoticeSendReq>
                    for NoticeSendSvc<T> {
                        type Response = super::NoticeSendResp;
                        type Future = BoxFuture<
                            tonic::Response<Self::Response>,
                            tonic::Status,
                        >;
                        fn call(
                            &mut self,
                            request: tonic::Request<super::NoticeSendReq>,
                        ) -> Self::Future {
                            let inner = Arc::clone(&self.0);
                            let fut = async move { (*inner).notice_send(request).await };
                            Box::pin(fut)
                        }
                    }
                    let accept_compression_encodings = self.accept_compression_encodings;
                    let send_compression_encodings = self.send_compression_encodings;
                    let max_decoding_message_size = self.max_decoding_message_size;
                    let max_encoding_message_size = self.max_encoding_message_size;
                    let inner = self.inner.clone();
                    let fut = async move {
                        let inner = inner.0;
                        let method = NoticeSendSvc(inner);
                        let codec = tonic::codec::ProstCodec::default();
                        let mut grpc = tonic::server::Grpc::new(codec)
                            .apply_compression_config(
                                accept_compression_encodings,
                                send_compression_encodings,
                            )
                            .apply_max_message_size_config(
                                max_decoding_message_size,
                                max_encoding_message_size,
                            );
                        let res = grpc.unary(method, req).await;
                        Ok(res)
                    };
                    Box::pin(fut)
                }
                "/pb.noticeService/NoticeBatchSend" => {
                    #[allow(non_camel_case_types)]
                    struct NoticeBatchSendSvc<T: NoticeService>(pub Arc<T>);
                    impl<
                        T: NoticeService,
                    > tonic::server::UnaryService<super::NoticeBatchSendReq>
                    for NoticeBatchSendSvc<T> {
                        type Response = super::NoticeBatchSendResp;
                        type Future = BoxFuture<
                            tonic::Response<Self::Response>,
                            tonic::Status,
                        >;
                        fn call(
                            &mut self,
                            request: tonic::Request<super::NoticeBatchSendReq>,
                        ) -> Self::Future {
                            let inner = Arc::clone(&self.0);
                            let fut = async move {
                                (*inner).notice_batch_send(request).await
                            };
                            Box::pin(fut)
                        }
                    }
                    let accept_compression_encodings = self.accept_compression_encodings;
                    let send_compression_encodings = self.send_compression_encodings;
                    let max_decoding_message_size = self.max_decoding_message_size;
                    let max_encoding_message_size = self.max_encoding_message_size;
                    let inner = self.inner.clone();
                    let fut = async move {
                        let inner = inner.0;
                        let method = NoticeBatchSendSvc(inner);
                        let codec = tonic::codec::ProstCodec::default();
                        let mut grpc = tonic::server::Grpc::new(codec)
                            .apply_compression_config(
                                accept_compression_encodings,
                                send_compression_encodings,
                            )
                            .apply_max_message_size_config(
                                max_decoding_message_size,
                                max_encoding_message_size,
                            );
                        let res = grpc.unary(method, req).await;
                        Ok(res)
                    };
                    Box::pin(fut)
                }
                "/pb.noticeService/ListNotice" => {
                    #[allow(non_camel_case_types)]
                    struct ListNoticeSvc<T: NoticeService>(pub Arc<T>);
                    impl<
                        T: NoticeService,
                    > tonic::server::UnaryService<super::ListNoticeReq>
                    for ListNoticeSvc<T> {
                        type Response = super::ListNoticeResp;
                        type Future = BoxFuture<
                            tonic::Response<Self::Response>,
                            tonic::Status,
                        >;
                        fn call(
                            &mut self,
                            request: tonic::Request<super::ListNoticeReq>,
                        ) -> Self::Future {
                            let inner = Arc::clone(&self.0);
                            let fut = async move { (*inner).list_notice(request).await };
                            Box::pin(fut)
                        }
                    }
                    let accept_compression_encodings = self.accept_compression_encodings;
                    let send_compression_encodings = self.send_compression_encodings;
                    let max_decoding_message_size = self.max_decoding_message_size;
                    let max_encoding_message_size = self.max_encoding_message_size;
                    let inner = self.inner.clone();
                    let fut = async move {
                        let inner = inner.0;
                        let method = ListNoticeSvc(inner);
                        let codec = tonic::codec::ProstCodec::default();
                        let mut grpc = tonic::server::Grpc::new(codec)
                            .apply_compression_config(
                                accept_compression_encodings,
                                send_compression_encodings,
                            )
                            .apply_max_message_size_config(
                                max_decoding_message_size,
                                max_encoding_message_size,
                            );
                        let res = grpc.unary(method, req).await;
                        Ok(res)
                    };
                    Box::pin(fut)
                }
                _ => {
                    Box::pin(async move {
                        Ok(
                            http::Response::builder()
                                .status(200)
                                .header("grpc-status", "12")
                                .header("content-type", "application/grpc")
                                .body(empty_body())
                                .unwrap(),
                        )
                    })
                }
            }
        }
    }
    impl<T: NoticeService> Clone for NoticeServiceServer<T> {
        fn clone(&self) -> Self {
            let inner = self.inner.clone();
            Self {
                inner,
                accept_compression_encodings: self.accept_compression_encodings,
                send_compression_encodings: self.send_compression_encodings,
                max_decoding_message_size: self.max_decoding_message_size,
                max_encoding_message_size: self.max_encoding_message_size,
            }
        }
    }
    impl<T: NoticeService> Clone for _Inner<T> {
        fn clone(&self) -> Self {
            Self(Arc::clone(&self.0))
        }
    }
    impl<T: std::fmt::Debug> std::fmt::Debug for _Inner<T> {
        fn fmt(&self, f: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
            write!(f, "{:?}", self.0)
        }
    }
    impl<T: NoticeService> tonic::server::NamedService for NoticeServiceServer<T> {
        const NAME: &'static str = "pb.noticeService";
    }
}
/// SmsCodeSendReq 发送短信请求
#[derive(serde::Serialize, serde::Deserialize)]
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct SmsCodeSendReq {
    #[prost(message, optional, tag = "1")]
    pub header: ::core::option::Option<RequestHeader>,
    /// 手机号
    #[prost(string, tag = "2")]
    pub phone: ::prost::alloc::string::String,
    /// 手机国家区号
    #[prost(string, tag = "3")]
    pub phone_code: ::prost::alloc::string::String,
    /// 短信场景
    #[prost(string, tag = "4")]
    pub scene: ::prost::alloc::string::String,
    /// 过期时间
    #[prost(int64, optional, tag = "5")]
    pub expire_time: ::core::option::Option<i64>,
}
/// SmsCodeSendResp 发送短信响应
#[derive(serde::Serialize, serde::Deserialize)]
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct SmsCodeSendResp {
    #[prost(message, optional, tag = "1")]
    pub header: ::core::option::Option<ResponseHeader>,
}
/// SmsCodeVerifyReq 验证短信请求
#[derive(serde::Serialize, serde::Deserialize)]
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct SmsCodeVerifyReq {
    #[prost(message, optional, tag = "1")]
    pub header: ::core::option::Option<RequestHeader>,
    /// 手机号
    #[prost(string, tag = "2")]
    pub phone: ::prost::alloc::string::String,
    /// 手机国家区号
    #[prost(string, tag = "3")]
    pub phone_code: ::prost::alloc::string::String,
    /// 短信场景
    #[prost(string, tag = "4")]
    pub scene: ::prost::alloc::string::String,
    /// 验证码
    #[prost(string, tag = "5")]
    pub sms_code: ::prost::alloc::string::String,
    /// 是否立刻删除 删除后再次验证会失败
    #[prost(bool, tag = "6")]
    pub delete: bool,
}
/// SmsCodeVerifyResp 验证短信响应
#[derive(serde::Serialize, serde::Deserialize)]
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct SmsCodeVerifyResp {
    #[prost(message, optional, tag = "1")]
    pub header: ::core::option::Option<ResponseHeader>,
    #[prost(bool, tag = "2")]
    pub success: bool,
}
/// EmailCodeSendReq 发送邮件请求
#[derive(serde::Serialize, serde::Deserialize)]
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct EmailCodeSendReq {
    #[prost(message, optional, tag = "1")]
    pub header: ::core::option::Option<RequestHeader>,
    /// 邮件地址
    #[prost(string, tag = "2")]
    pub email: ::prost::alloc::string::String,
    /// 场景
    #[prost(string, tag = "3")]
    pub scene: ::prost::alloc::string::String,
    /// 过期时间
    #[prost(int64, optional, tag = "4")]
    pub expire_time: ::core::option::Option<i64>,
}
/// EmailCodeSendResp 发送邮件响应
#[derive(serde::Serialize, serde::Deserialize)]
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct EmailCodeSendResp {
    #[prost(message, optional, tag = "1")]
    pub header: ::core::option::Option<ResponseHeader>,
}
/// EmailCodeVerifyReq 验证邮件请求
#[derive(serde::Serialize, serde::Deserialize)]
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct EmailCodeVerifyReq {
    #[prost(message, optional, tag = "1")]
    pub header: ::core::option::Option<RequestHeader>,
    /// 邮件地址
    #[prost(string, tag = "2")]
    pub email: ::prost::alloc::string::String,
    /// 场景
    #[prost(string, tag = "3")]
    pub scene: ::prost::alloc::string::String,
    /// 验证码
    #[prost(string, tag = "4")]
    pub email_code: ::prost::alloc::string::String,
    /// 是否立刻删除 删除后再次验证会失败
    #[prost(bool, tag = "5")]
    pub delete: bool,
}
/// EmailCodeVerifyResp 验证邮件响应
#[derive(serde::Serialize, serde::Deserialize)]
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct EmailCodeVerifyResp {
    #[prost(message, optional, tag = "1")]
    pub header: ::core::option::Option<ResponseHeader>,
    #[prost(bool, tag = "2")]
    pub success: bool,
}
/// GetCaptchaReq 获取图形验证码请求
#[derive(serde::Serialize, serde::Deserialize)]
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct GetCaptchaReq {
    #[prost(message, optional, tag = "1")]
    pub header: ::core::option::Option<RequestHeader>,
    /// 过期时间
    #[prost(int64, optional, tag = "2")]
    pub expire_time: ::core::option::Option<i64>,
    /// 字符是否包含英文
    #[prost(bool, tag = "3")]
    pub include_english: bool,
    /// 字符是否包含数字
    #[prost(bool, tag = "4")]
    pub include_number: bool,
    /// 宽度
    #[prost(int32, tag = "5")]
    pub width: i32,
    /// 高度
    #[prost(int32, tag = "6")]
    pub height: i32,
    /// 字符数量
    #[prost(int32, tag = "7")]
    pub char_count: i32,
}
/// GetCaptchaResp 获取图形验证码响应
#[derive(serde::Serialize, serde::Deserialize)]
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct GetCaptchaResp {
    #[prost(message, optional, tag = "1")]
    pub header: ::core::option::Option<ResponseHeader>,
    /// 验证码id
    #[prost(string, tag = "2")]
    pub captcha_id: ::prost::alloc::string::String,
    /// 图形验证码
    #[prost(string, tag = "3")]
    pub captcha_code: ::prost::alloc::string::String,
}
/// CaptchaVerifyReq 验证图形验证码请求
#[derive(serde::Serialize, serde::Deserialize)]
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct CaptchaVerifyReq {
    #[prost(message, optional, tag = "1")]
    pub header: ::core::option::Option<RequestHeader>,
    /// 验证码id
    #[prost(string, tag = "2")]
    pub captcha_id: ::prost::alloc::string::String,
    /// 验证码
    #[prost(string, tag = "3")]
    pub captcha_code: ::prost::alloc::string::String,
    /// 是否立刻删除 删除后再次验证会失败
    #[prost(bool, tag = "4")]
    pub delete: bool,
}
/// CaptchaVerifyResp 验证图形验证码响应
#[derive(serde::Serialize, serde::Deserialize)]
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct CaptchaVerifyResp {
    #[prost(message, optional, tag = "1")]
    pub header: ::core::option::Option<ResponseHeader>,
    #[prost(bool, tag = "2")]
    pub success: bool,
}
/// Generated client implementations.
pub mod sms_service_client {
    #![allow(unused_variables, dead_code, missing_docs, clippy::let_unit_value)]
    use tonic::codegen::*;
    use tonic::codegen::http::Uri;
    #[derive(Debug, Clone)]
    pub struct SmsServiceClient<T> {
        inner: tonic::client::Grpc<T>,
    }
    impl SmsServiceClient<tonic::transport::Channel> {
        /// Attempt to create a new client by connecting to a given endpoint.
        pub async fn connect<D>(dst: D) -> Result<Self, tonic::transport::Error>
        where
            D: TryInto<tonic::transport::Endpoint>,
            D::Error: Into<StdError>,
        {
            let conn = tonic::transport::Endpoint::new(dst)?.connect().await?;
            Ok(Self::new(conn))
        }
    }
    impl<T> SmsServiceClient<T>
    where
        T: tonic::client::GrpcService<tonic::body::BoxBody>,
        T::Error: Into<StdError>,
        T::ResponseBody: Body<Data = Bytes> + Send + 'static,
        <T::ResponseBody as Body>::Error: Into<StdError> + Send,
    {
        pub fn new(inner: T) -> Self {
            let inner = tonic::client::Grpc::new(inner);
            Self { inner }
        }
        pub fn with_origin(inner: T, origin: Uri) -> Self {
            let inner = tonic::client::Grpc::with_origin(inner, origin);
            Self { inner }
        }
        pub fn with_interceptor<F>(
            inner: T,
            interceptor: F,
        ) -> SmsServiceClient<InterceptedService<T, F>>
        where
            F: tonic::service::Interceptor,
            T::ResponseBody: Default,
            T: tonic::codegen::Service<
                http::Request<tonic::body::BoxBody>,
                Response = http::Response<
                    <T as tonic::client::GrpcService<tonic::body::BoxBody>>::ResponseBody,
                >,
            >,
            <T as tonic::codegen::Service<
                http::Request<tonic::body::BoxBody>,
            >>::Error: Into<StdError> + Send + Sync,
        {
            SmsServiceClient::new(InterceptedService::new(inner, interceptor))
        }
        /// Compress requests with the given encoding.
        ///
        /// This requires the server to support it otherwise it might respond with an
        /// error.
        #[must_use]
        pub fn send_compressed(mut self, encoding: CompressionEncoding) -> Self {
            self.inner = self.inner.send_compressed(encoding);
            self
        }
        /// Enable decompressing responses.
        #[must_use]
        pub fn accept_compressed(mut self, encoding: CompressionEncoding) -> Self {
            self.inner = self.inner.accept_compressed(encoding);
            self
        }
        /// Limits the maximum size of a decoded message.
        ///
        /// Default: `4MB`
        #[must_use]
        pub fn max_decoding_message_size(mut self, limit: usize) -> Self {
            self.inner = self.inner.max_decoding_message_size(limit);
            self
        }
        /// Limits the maximum size of an encoded message.
        ///
        /// Default: `usize::MAX`
        #[must_use]
        pub fn max_encoding_message_size(mut self, limit: usize) -> Self {
            self.inner = self.inner.max_encoding_message_size(limit);
            self
        }
        /// SmsCodeSend 发送短信
        /// 二次开发人员可以自行实现
        pub async fn sms_code_send(
            &mut self,
            request: impl tonic::IntoRequest<super::SmsCodeSendReq>,
        ) -> std::result::Result<
            tonic::Response<super::SmsCodeSendResp>,
            tonic::Status,
        > {
            self.inner
                .ready()
                .await
                .map_err(|e| {
                    tonic::Status::new(
                        tonic::Code::Unknown,
                        format!("Service was not ready: {}", e.into()),
                    )
                })?;
            let codec = tonic::codec::ProstCodec::default();
            let path = http::uri::PathAndQuery::from_static(
                "/pb.smsService/SmsCodeSend",
            );
            let mut req = request.into_request();
            req.extensions_mut().insert(GrpcMethod::new("pb.smsService", "SmsCodeSend"));
            self.inner.unary(req, path, codec).await
        }
        /// SmsCodeVerify 验证短信
        /// 二次开发人员可以自行实现
        pub async fn sms_code_verify(
            &mut self,
            request: impl tonic::IntoRequest<super::SmsCodeVerifyReq>,
        ) -> std::result::Result<
            tonic::Response<super::SmsCodeVerifyResp>,
            tonic::Status,
        > {
            self.inner
                .ready()
                .await
                .map_err(|e| {
                    tonic::Status::new(
                        tonic::Code::Unknown,
                        format!("Service was not ready: {}", e.into()),
                    )
                })?;
            let codec = tonic::codec::ProstCodec::default();
            let path = http::uri::PathAndQuery::from_static(
                "/pb.smsService/SmsCodeVerify",
            );
            let mut req = request.into_request();
            req.extensions_mut()
                .insert(GrpcMethod::new("pb.smsService", "SmsCodeVerify"));
            self.inner.unary(req, path, codec).await
        }
    }
}
/// Generated client implementations.
pub mod email_service_client {
    #![allow(unused_variables, dead_code, missing_docs, clippy::let_unit_value)]
    use tonic::codegen::*;
    use tonic::codegen::http::Uri;
    #[derive(Debug, Clone)]
    pub struct EmailServiceClient<T> {
        inner: tonic::client::Grpc<T>,
    }
    impl EmailServiceClient<tonic::transport::Channel> {
        /// Attempt to create a new client by connecting to a given endpoint.
        pub async fn connect<D>(dst: D) -> Result<Self, tonic::transport::Error>
        where
            D: TryInto<tonic::transport::Endpoint>,
            D::Error: Into<StdError>,
        {
            let conn = tonic::transport::Endpoint::new(dst)?.connect().await?;
            Ok(Self::new(conn))
        }
    }
    impl<T> EmailServiceClient<T>
    where
        T: tonic::client::GrpcService<tonic::body::BoxBody>,
        T::Error: Into<StdError>,
        T::ResponseBody: Body<Data = Bytes> + Send + 'static,
        <T::ResponseBody as Body>::Error: Into<StdError> + Send,
    {
        pub fn new(inner: T) -> Self {
            let inner = tonic::client::Grpc::new(inner);
            Self { inner }
        }
        pub fn with_origin(inner: T, origin: Uri) -> Self {
            let inner = tonic::client::Grpc::with_origin(inner, origin);
            Self { inner }
        }
        pub fn with_interceptor<F>(
            inner: T,
            interceptor: F,
        ) -> EmailServiceClient<InterceptedService<T, F>>
        where
            F: tonic::service::Interceptor,
            T::ResponseBody: Default,
            T: tonic::codegen::Service<
                http::Request<tonic::body::BoxBody>,
                Response = http::Response<
                    <T as tonic::client::GrpcService<tonic::body::BoxBody>>::ResponseBody,
                >,
            >,
            <T as tonic::codegen::Service<
                http::Request<tonic::body::BoxBody>,
            >>::Error: Into<StdError> + Send + Sync,
        {
            EmailServiceClient::new(InterceptedService::new(inner, interceptor))
        }
        /// Compress requests with the given encoding.
        ///
        /// This requires the server to support it otherwise it might respond with an
        /// error.
        #[must_use]
        pub fn send_compressed(mut self, encoding: CompressionEncoding) -> Self {
            self.inner = self.inner.send_compressed(encoding);
            self
        }
        /// Enable decompressing responses.
        #[must_use]
        pub fn accept_compressed(mut self, encoding: CompressionEncoding) -> Self {
            self.inner = self.inner.accept_compressed(encoding);
            self
        }
        /// Limits the maximum size of a decoded message.
        ///
        /// Default: `4MB`
        #[must_use]
        pub fn max_decoding_message_size(mut self, limit: usize) -> Self {
            self.inner = self.inner.max_decoding_message_size(limit);
            self
        }
        /// Limits the maximum size of an encoded message.
        ///
        /// Default: `usize::MAX`
        #[must_use]
        pub fn max_encoding_message_size(mut self, limit: usize) -> Self {
            self.inner = self.inner.max_encoding_message_size(limit);
            self
        }
        /// EmailCodeSend 发送邮件
        /// 二次开发人员可以自行实现
        pub async fn email_code_send(
            &mut self,
            request: impl tonic::IntoRequest<super::EmailCodeSendReq>,
        ) -> std::result::Result<
            tonic::Response<super::EmailCodeSendResp>,
            tonic::Status,
        > {
            self.inner
                .ready()
                .await
                .map_err(|e| {
                    tonic::Status::new(
                        tonic::Code::Unknown,
                        format!("Service was not ready: {}", e.into()),
                    )
                })?;
            let codec = tonic::codec::ProstCodec::default();
            let path = http::uri::PathAndQuery::from_static(
                "/pb.emailService/EmailCodeSend",
            );
            let mut req = request.into_request();
            req.extensions_mut()
                .insert(GrpcMethod::new("pb.emailService", "EmailCodeSend"));
            self.inner.unary(req, path, codec).await
        }
        /// EmailCodeVerify 验证邮件
        /// 二次开发人员可以自行实现
        pub async fn email_code_verify(
            &mut self,
            request: impl tonic::IntoRequest<super::EmailCodeVerifyReq>,
        ) -> std::result::Result<
            tonic::Response<super::EmailCodeVerifyResp>,
            tonic::Status,
        > {
            self.inner
                .ready()
                .await
                .map_err(|e| {
                    tonic::Status::new(
                        tonic::Code::Unknown,
                        format!("Service was not ready: {}", e.into()),
                    )
                })?;
            let codec = tonic::codec::ProstCodec::default();
            let path = http::uri::PathAndQuery::from_static(
                "/pb.emailService/EmailCodeVerify",
            );
            let mut req = request.into_request();
            req.extensions_mut()
                .insert(GrpcMethod::new("pb.emailService", "EmailCodeVerify"));
            self.inner.unary(req, path, codec).await
        }
    }
}
/// Generated client implementations.
pub mod captcha_service_client {
    #![allow(unused_variables, dead_code, missing_docs, clippy::let_unit_value)]
    use tonic::codegen::*;
    use tonic::codegen::http::Uri;
    #[derive(Debug, Clone)]
    pub struct CaptchaServiceClient<T> {
        inner: tonic::client::Grpc<T>,
    }
    impl CaptchaServiceClient<tonic::transport::Channel> {
        /// Attempt to create a new client by connecting to a given endpoint.
        pub async fn connect<D>(dst: D) -> Result<Self, tonic::transport::Error>
        where
            D: TryInto<tonic::transport::Endpoint>,
            D::Error: Into<StdError>,
        {
            let conn = tonic::transport::Endpoint::new(dst)?.connect().await?;
            Ok(Self::new(conn))
        }
    }
    impl<T> CaptchaServiceClient<T>
    where
        T: tonic::client::GrpcService<tonic::body::BoxBody>,
        T::Error: Into<StdError>,
        T::ResponseBody: Body<Data = Bytes> + Send + 'static,
        <T::ResponseBody as Body>::Error: Into<StdError> + Send,
    {
        pub fn new(inner: T) -> Self {
            let inner = tonic::client::Grpc::new(inner);
            Self { inner }
        }
        pub fn with_origin(inner: T, origin: Uri) -> Self {
            let inner = tonic::client::Grpc::with_origin(inner, origin);
            Self { inner }
        }
        pub fn with_interceptor<F>(
            inner: T,
            interceptor: F,
        ) -> CaptchaServiceClient<InterceptedService<T, F>>
        where
            F: tonic::service::Interceptor,
            T::ResponseBody: Default,
            T: tonic::codegen::Service<
                http::Request<tonic::body::BoxBody>,
                Response = http::Response<
                    <T as tonic::client::GrpcService<tonic::body::BoxBody>>::ResponseBody,
                >,
            >,
            <T as tonic::codegen::Service<
                http::Request<tonic::body::BoxBody>,
            >>::Error: Into<StdError> + Send + Sync,
        {
            CaptchaServiceClient::new(InterceptedService::new(inner, interceptor))
        }
        /// Compress requests with the given encoding.
        ///
        /// This requires the server to support it otherwise it might respond with an
        /// error.
        #[must_use]
        pub fn send_compressed(mut self, encoding: CompressionEncoding) -> Self {
            self.inner = self.inner.send_compressed(encoding);
            self
        }
        /// Enable decompressing responses.
        #[must_use]
        pub fn accept_compressed(mut self, encoding: CompressionEncoding) -> Self {
            self.inner = self.inner.accept_compressed(encoding);
            self
        }
        /// Limits the maximum size of a decoded message.
        ///
        /// Default: `4MB`
        #[must_use]
        pub fn max_decoding_message_size(mut self, limit: usize) -> Self {
            self.inner = self.inner.max_decoding_message_size(limit);
            self
        }
        /// Limits the maximum size of an encoded message.
        ///
        /// Default: `usize::MAX`
        #[must_use]
        pub fn max_encoding_message_size(mut self, limit: usize) -> Self {
            self.inner = self.inner.max_encoding_message_size(limit);
            self
        }
        /// GetCaptcha 获取图形验证码
        /// 二次开发人员可以自行实现
        pub async fn get_captcha(
            &mut self,
            request: impl tonic::IntoRequest<super::GetCaptchaReq>,
        ) -> std::result::Result<tonic::Response<super::GetCaptchaResp>, tonic::Status> {
            self.inner
                .ready()
                .await
                .map_err(|e| {
                    tonic::Status::new(
                        tonic::Code::Unknown,
                        format!("Service was not ready: {}", e.into()),
                    )
                })?;
            let codec = tonic::codec::ProstCodec::default();
            let path = http::uri::PathAndQuery::from_static(
                "/pb.captchaService/GetCaptcha",
            );
            let mut req = request.into_request();
            req.extensions_mut()
                .insert(GrpcMethod::new("pb.captchaService", "GetCaptcha"));
            self.inner.unary(req, path, codec).await
        }
        /// CaptchaVerify 验证图形验证码
        /// 二次开发人员可以自行实现
        pub async fn captcha_verify(
            &mut self,
            request: impl tonic::IntoRequest<super::CaptchaVerifyReq>,
        ) -> std::result::Result<
            tonic::Response<super::CaptchaVerifyResp>,
            tonic::Status,
        > {
            self.inner
                .ready()
                .await
                .map_err(|e| {
                    tonic::Status::new(
                        tonic::Code::Unknown,
                        format!("Service was not ready: {}", e.into()),
                    )
                })?;
            let codec = tonic::codec::ProstCodec::default();
            let path = http::uri::PathAndQuery::from_static(
                "/pb.captchaService/CaptchaVerify",
            );
            let mut req = request.into_request();
            req.extensions_mut()
                .insert(GrpcMethod::new("pb.captchaService", "CaptchaVerify"));
            self.inner.unary(req, path, codec).await
        }
    }
}
/// Generated server implementations.
pub mod sms_service_server {
    #![allow(unused_variables, dead_code, missing_docs, clippy::let_unit_value)]
    use tonic::codegen::*;
    /// Generated trait containing gRPC methods that should be implemented for use with SmsServiceServer.
    #[async_trait]
    pub trait SmsService: Send + Sync + 'static {
        /// SmsCodeSend 发送短信
        /// 二次开发人员可以自行实现
        async fn sms_code_send(
            &self,
            request: tonic::Request<super::SmsCodeSendReq>,
        ) -> std::result::Result<tonic::Response<super::SmsCodeSendResp>, tonic::Status>;
        /// SmsCodeVerify 验证短信
        /// 二次开发人员可以自行实现
        async fn sms_code_verify(
            &self,
            request: tonic::Request<super::SmsCodeVerifyReq>,
        ) -> std::result::Result<
            tonic::Response<super::SmsCodeVerifyResp>,
            tonic::Status,
        >;
    }
    #[derive(Debug)]
    pub struct SmsServiceServer<T: SmsService> {
        inner: _Inner<T>,
        accept_compression_encodings: EnabledCompressionEncodings,
        send_compression_encodings: EnabledCompressionEncodings,
        max_decoding_message_size: Option<usize>,
        max_encoding_message_size: Option<usize>,
    }
    struct _Inner<T>(Arc<T>);
    impl<T: SmsService> SmsServiceServer<T> {
        pub fn new(inner: T) -> Self {
            Self::from_arc(Arc::new(inner))
        }
        pub fn from_arc(inner: Arc<T>) -> Self {
            let inner = _Inner(inner);
            Self {
                inner,
                accept_compression_encodings: Default::default(),
                send_compression_encodings: Default::default(),
                max_decoding_message_size: None,
                max_encoding_message_size: None,
            }
        }
        pub fn with_interceptor<F>(
            inner: T,
            interceptor: F,
        ) -> InterceptedService<Self, F>
        where
            F: tonic::service::Interceptor,
        {
            InterceptedService::new(Self::new(inner), interceptor)
        }
        /// Enable decompressing requests with the given encoding.
        #[must_use]
        pub fn accept_compressed(mut self, encoding: CompressionEncoding) -> Self {
            self.accept_compression_encodings.enable(encoding);
            self
        }
        /// Compress responses with the given encoding, if the client supports it.
        #[must_use]
        pub fn send_compressed(mut self, encoding: CompressionEncoding) -> Self {
            self.send_compression_encodings.enable(encoding);
            self
        }
        /// Limits the maximum size of a decoded message.
        ///
        /// Default: `4MB`
        #[must_use]
        pub fn max_decoding_message_size(mut self, limit: usize) -> Self {
            self.max_decoding_message_size = Some(limit);
            self
        }
        /// Limits the maximum size of an encoded message.
        ///
        /// Default: `usize::MAX`
        #[must_use]
        pub fn max_encoding_message_size(mut self, limit: usize) -> Self {
            self.max_encoding_message_size = Some(limit);
            self
        }
    }
    impl<T, B> tonic::codegen::Service<http::Request<B>> for SmsServiceServer<T>
    where
        T: SmsService,
        B: Body + Send + 'static,
        B::Error: Into<StdError> + Send + 'static,
    {
        type Response = http::Response<tonic::body::BoxBody>;
        type Error = std::convert::Infallible;
        type Future = BoxFuture<Self::Response, Self::Error>;
        fn poll_ready(
            &mut self,
            _cx: &mut Context<'_>,
        ) -> Poll<std::result::Result<(), Self::Error>> {
            Poll::Ready(Ok(()))
        }
        fn call(&mut self, req: http::Request<B>) -> Self::Future {
            let inner = self.inner.clone();
            match req.uri().path() {
                "/pb.smsService/SmsCodeSend" => {
                    #[allow(non_camel_case_types)]
                    struct SmsCodeSendSvc<T: SmsService>(pub Arc<T>);
                    impl<
                        T: SmsService,
                    > tonic::server::UnaryService<super::SmsCodeSendReq>
                    for SmsCodeSendSvc<T> {
                        type Response = super::SmsCodeSendResp;
                        type Future = BoxFuture<
                            tonic::Response<Self::Response>,
                            tonic::Status,
                        >;
                        fn call(
                            &mut self,
                            request: tonic::Request<super::SmsCodeSendReq>,
                        ) -> Self::Future {
                            let inner = Arc::clone(&self.0);
                            let fut = async move {
                                (*inner).sms_code_send(request).await
                            };
                            Box::pin(fut)
                        }
                    }
                    let accept_compression_encodings = self.accept_compression_encodings;
                    let send_compression_encodings = self.send_compression_encodings;
                    let max_decoding_message_size = self.max_decoding_message_size;
                    let max_encoding_message_size = self.max_encoding_message_size;
                    let inner = self.inner.clone();
                    let fut = async move {
                        let inner = inner.0;
                        let method = SmsCodeSendSvc(inner);
                        let codec = tonic::codec::ProstCodec::default();
                        let mut grpc = tonic::server::Grpc::new(codec)
                            .apply_compression_config(
                                accept_compression_encodings,
                                send_compression_encodings,
                            )
                            .apply_max_message_size_config(
                                max_decoding_message_size,
                                max_encoding_message_size,
                            );
                        let res = grpc.unary(method, req).await;
                        Ok(res)
                    };
                    Box::pin(fut)
                }
                "/pb.smsService/SmsCodeVerify" => {
                    #[allow(non_camel_case_types)]
                    struct SmsCodeVerifySvc<T: SmsService>(pub Arc<T>);
                    impl<
                        T: SmsService,
                    > tonic::server::UnaryService<super::SmsCodeVerifyReq>
                    for SmsCodeVerifySvc<T> {
                        type Response = super::SmsCodeVerifyResp;
                        type Future = BoxFuture<
                            tonic::Response<Self::Response>,
                            tonic::Status,
                        >;
                        fn call(
                            &mut self,
                            request: tonic::Request<super::SmsCodeVerifyReq>,
                        ) -> Self::Future {
                            let inner = Arc::clone(&self.0);
                            let fut = async move {
                                (*inner).sms_code_verify(request).await
                            };
                            Box::pin(fut)
                        }
                    }
                    let accept_compression_encodings = self.accept_compression_encodings;
                    let send_compression_encodings = self.send_compression_encodings;
                    let max_decoding_message_size = self.max_decoding_message_size;
                    let max_encoding_message_size = self.max_encoding_message_size;
                    let inner = self.inner.clone();
                    let fut = async move {
                        let inner = inner.0;
                        let method = SmsCodeVerifySvc(inner);
                        let codec = tonic::codec::ProstCodec::default();
                        let mut grpc = tonic::server::Grpc::new(codec)
                            .apply_compression_config(
                                accept_compression_encodings,
                                send_compression_encodings,
                            )
                            .apply_max_message_size_config(
                                max_decoding_message_size,
                                max_encoding_message_size,
                            );
                        let res = grpc.unary(method, req).await;
                        Ok(res)
                    };
                    Box::pin(fut)
                }
                _ => {
                    Box::pin(async move {
                        Ok(
                            http::Response::builder()
                                .status(200)
                                .header("grpc-status", "12")
                                .header("content-type", "application/grpc")
                                .body(empty_body())
                                .unwrap(),
                        )
                    })
                }
            }
        }
    }
    impl<T: SmsService> Clone for SmsServiceServer<T> {
        fn clone(&self) -> Self {
            let inner = self.inner.clone();
            Self {
                inner,
                accept_compression_encodings: self.accept_compression_encodings,
                send_compression_encodings: self.send_compression_encodings,
                max_decoding_message_size: self.max_decoding_message_size,
                max_encoding_message_size: self.max_encoding_message_size,
            }
        }
    }
    impl<T: SmsService> Clone for _Inner<T> {
        fn clone(&self) -> Self {
            Self(Arc::clone(&self.0))
        }
    }
    impl<T: std::fmt::Debug> std::fmt::Debug for _Inner<T> {
        fn fmt(&self, f: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
            write!(f, "{:?}", self.0)
        }
    }
    impl<T: SmsService> tonic::server::NamedService for SmsServiceServer<T> {
        const NAME: &'static str = "pb.smsService";
    }
}
/// Generated server implementations.
pub mod email_service_server {
    #![allow(unused_variables, dead_code, missing_docs, clippy::let_unit_value)]
    use tonic::codegen::*;
    /// Generated trait containing gRPC methods that should be implemented for use with EmailServiceServer.
    #[async_trait]
    pub trait EmailService: Send + Sync + 'static {
        /// EmailCodeSend 发送邮件
        /// 二次开发人员可以自行实现
        async fn email_code_send(
            &self,
            request: tonic::Request<super::EmailCodeSendReq>,
        ) -> std::result::Result<
            tonic::Response<super::EmailCodeSendResp>,
            tonic::Status,
        >;
        /// EmailCodeVerify 验证邮件
        /// 二次开发人员可以自行实现
        async fn email_code_verify(
            &self,
            request: tonic::Request<super::EmailCodeVerifyReq>,
        ) -> std::result::Result<
            tonic::Response<super::EmailCodeVerifyResp>,
            tonic::Status,
        >;
    }
    #[derive(Debug)]
    pub struct EmailServiceServer<T: EmailService> {
        inner: _Inner<T>,
        accept_compression_encodings: EnabledCompressionEncodings,
        send_compression_encodings: EnabledCompressionEncodings,
        max_decoding_message_size: Option<usize>,
        max_encoding_message_size: Option<usize>,
    }
    struct _Inner<T>(Arc<T>);
    impl<T: EmailService> EmailServiceServer<T> {
        pub fn new(inner: T) -> Self {
            Self::from_arc(Arc::new(inner))
        }
        pub fn from_arc(inner: Arc<T>) -> Self {
            let inner = _Inner(inner);
            Self {
                inner,
                accept_compression_encodings: Default::default(),
                send_compression_encodings: Default::default(),
                max_decoding_message_size: None,
                max_encoding_message_size: None,
            }
        }
        pub fn with_interceptor<F>(
            inner: T,
            interceptor: F,
        ) -> InterceptedService<Self, F>
        where
            F: tonic::service::Interceptor,
        {
            InterceptedService::new(Self::new(inner), interceptor)
        }
        /// Enable decompressing requests with the given encoding.
        #[must_use]
        pub fn accept_compressed(mut self, encoding: CompressionEncoding) -> Self {
            self.accept_compression_encodings.enable(encoding);
            self
        }
        /// Compress responses with the given encoding, if the client supports it.
        #[must_use]
        pub fn send_compressed(mut self, encoding: CompressionEncoding) -> Self {
            self.send_compression_encodings.enable(encoding);
            self
        }
        /// Limits the maximum size of a decoded message.
        ///
        /// Default: `4MB`
        #[must_use]
        pub fn max_decoding_message_size(mut self, limit: usize) -> Self {
            self.max_decoding_message_size = Some(limit);
            self
        }
        /// Limits the maximum size of an encoded message.
        ///
        /// Default: `usize::MAX`
        #[must_use]
        pub fn max_encoding_message_size(mut self, limit: usize) -> Self {
            self.max_encoding_message_size = Some(limit);
            self
        }
    }
    impl<T, B> tonic::codegen::Service<http::Request<B>> for EmailServiceServer<T>
    where
        T: EmailService,
        B: Body + Send + 'static,
        B::Error: Into<StdError> + Send + 'static,
    {
        type Response = http::Response<tonic::body::BoxBody>;
        type Error = std::convert::Infallible;
        type Future = BoxFuture<Self::Response, Self::Error>;
        fn poll_ready(
            &mut self,
            _cx: &mut Context<'_>,
        ) -> Poll<std::result::Result<(), Self::Error>> {
            Poll::Ready(Ok(()))
        }
        fn call(&mut self, req: http::Request<B>) -> Self::Future {
            let inner = self.inner.clone();
            match req.uri().path() {
                "/pb.emailService/EmailCodeSend" => {
                    #[allow(non_camel_case_types)]
                    struct EmailCodeSendSvc<T: EmailService>(pub Arc<T>);
                    impl<
                        T: EmailService,
                    > tonic::server::UnaryService<super::EmailCodeSendReq>
                    for EmailCodeSendSvc<T> {
                        type Response = super::EmailCodeSendResp;
                        type Future = BoxFuture<
                            tonic::Response<Self::Response>,
                            tonic::Status,
                        >;
                        fn call(
                            &mut self,
                            request: tonic::Request<super::EmailCodeSendReq>,
                        ) -> Self::Future {
                            let inner = Arc::clone(&self.0);
                            let fut = async move {
                                (*inner).email_code_send(request).await
                            };
                            Box::pin(fut)
                        }
                    }
                    let accept_compression_encodings = self.accept_compression_encodings;
                    let send_compression_encodings = self.send_compression_encodings;
                    let max_decoding_message_size = self.max_decoding_message_size;
                    let max_encoding_message_size = self.max_encoding_message_size;
                    let inner = self.inner.clone();
                    let fut = async move {
                        let inner = inner.0;
                        let method = EmailCodeSendSvc(inner);
                        let codec = tonic::codec::ProstCodec::default();
                        let mut grpc = tonic::server::Grpc::new(codec)
                            .apply_compression_config(
                                accept_compression_encodings,
                                send_compression_encodings,
                            )
                            .apply_max_message_size_config(
                                max_decoding_message_size,
                                max_encoding_message_size,
                            );
                        let res = grpc.unary(method, req).await;
                        Ok(res)
                    };
                    Box::pin(fut)
                }
                "/pb.emailService/EmailCodeVerify" => {
                    #[allow(non_camel_case_types)]
                    struct EmailCodeVerifySvc<T: EmailService>(pub Arc<T>);
                    impl<
                        T: EmailService,
                    > tonic::server::UnaryService<super::EmailCodeVerifyReq>
                    for EmailCodeVerifySvc<T> {
                        type Response = super::EmailCodeVerifyResp;
                        type Future = BoxFuture<
                            tonic::Response<Self::Response>,
                            tonic::Status,
                        >;
                        fn call(
                            &mut self,
                            request: tonic::Request<super::EmailCodeVerifyReq>,
                        ) -> Self::Future {
                            let inner = Arc::clone(&self.0);
                            let fut = async move {
                                (*inner).email_code_verify(request).await
                            };
                            Box::pin(fut)
                        }
                    }
                    let accept_compression_encodings = self.accept_compression_encodings;
                    let send_compression_encodings = self.send_compression_encodings;
                    let max_decoding_message_size = self.max_decoding_message_size;
                    let max_encoding_message_size = self.max_encoding_message_size;
                    let inner = self.inner.clone();
                    let fut = async move {
                        let inner = inner.0;
                        let method = EmailCodeVerifySvc(inner);
                        let codec = tonic::codec::ProstCodec::default();
                        let mut grpc = tonic::server::Grpc::new(codec)
                            .apply_compression_config(
                                accept_compression_encodings,
                                send_compression_encodings,
                            )
                            .apply_max_message_size_config(
                                max_decoding_message_size,
                                max_encoding_message_size,
                            );
                        let res = grpc.unary(method, req).await;
                        Ok(res)
                    };
                    Box::pin(fut)
                }
                _ => {
                    Box::pin(async move {
                        Ok(
                            http::Response::builder()
                                .status(200)
                                .header("grpc-status", "12")
                                .header("content-type", "application/grpc")
                                .body(empty_body())
                                .unwrap(),
                        )
                    })
                }
            }
        }
    }
    impl<T: EmailService> Clone for EmailServiceServer<T> {
        fn clone(&self) -> Self {
            let inner = self.inner.clone();
            Self {
                inner,
                accept_compression_encodings: self.accept_compression_encodings,
                send_compression_encodings: self.send_compression_encodings,
                max_decoding_message_size: self.max_decoding_message_size,
                max_encoding_message_size: self.max_encoding_message_size,
            }
        }
    }
    impl<T: EmailService> Clone for _Inner<T> {
        fn clone(&self) -> Self {
            Self(Arc::clone(&self.0))
        }
    }
    impl<T: std::fmt::Debug> std::fmt::Debug for _Inner<T> {
        fn fmt(&self, f: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
            write!(f, "{:?}", self.0)
        }
    }
    impl<T: EmailService> tonic::server::NamedService for EmailServiceServer<T> {
        const NAME: &'static str = "pb.emailService";
    }
}
/// Generated server implementations.
pub mod captcha_service_server {
    #![allow(unused_variables, dead_code, missing_docs, clippy::let_unit_value)]
    use tonic::codegen::*;
    /// Generated trait containing gRPC methods that should be implemented for use with CaptchaServiceServer.
    #[async_trait]
    pub trait CaptchaService: Send + Sync + 'static {
        /// GetCaptcha 获取图形验证码
        /// 二次开发人员可以自行实现
        async fn get_captcha(
            &self,
            request: tonic::Request<super::GetCaptchaReq>,
        ) -> std::result::Result<tonic::Response<super::GetCaptchaResp>, tonic::Status>;
        /// CaptchaVerify 验证图形验证码
        /// 二次开发人员可以自行实现
        async fn captcha_verify(
            &self,
            request: tonic::Request<super::CaptchaVerifyReq>,
        ) -> std::result::Result<
            tonic::Response<super::CaptchaVerifyResp>,
            tonic::Status,
        >;
    }
    #[derive(Debug)]
    pub struct CaptchaServiceServer<T: CaptchaService> {
        inner: _Inner<T>,
        accept_compression_encodings: EnabledCompressionEncodings,
        send_compression_encodings: EnabledCompressionEncodings,
        max_decoding_message_size: Option<usize>,
        max_encoding_message_size: Option<usize>,
    }
    struct _Inner<T>(Arc<T>);
    impl<T: CaptchaService> CaptchaServiceServer<T> {
        pub fn new(inner: T) -> Self {
            Self::from_arc(Arc::new(inner))
        }
        pub fn from_arc(inner: Arc<T>) -> Self {
            let inner = _Inner(inner);
            Self {
                inner,
                accept_compression_encodings: Default::default(),
                send_compression_encodings: Default::default(),
                max_decoding_message_size: None,
                max_encoding_message_size: None,
            }
        }
        pub fn with_interceptor<F>(
            inner: T,
            interceptor: F,
        ) -> InterceptedService<Self, F>
        where
            F: tonic::service::Interceptor,
        {
            InterceptedService::new(Self::new(inner), interceptor)
        }
        /// Enable decompressing requests with the given encoding.
        #[must_use]
        pub fn accept_compressed(mut self, encoding: CompressionEncoding) -> Self {
            self.accept_compression_encodings.enable(encoding);
            self
        }
        /// Compress responses with the given encoding, if the client supports it.
        #[must_use]
        pub fn send_compressed(mut self, encoding: CompressionEncoding) -> Self {
            self.send_compression_encodings.enable(encoding);
            self
        }
        /// Limits the maximum size of a decoded message.
        ///
        /// Default: `4MB`
        #[must_use]
        pub fn max_decoding_message_size(mut self, limit: usize) -> Self {
            self.max_decoding_message_size = Some(limit);
            self
        }
        /// Limits the maximum size of an encoded message.
        ///
        /// Default: `usize::MAX`
        #[must_use]
        pub fn max_encoding_message_size(mut self, limit: usize) -> Self {
            self.max_encoding_message_size = Some(limit);
            self
        }
    }
    impl<T, B> tonic::codegen::Service<http::Request<B>> for CaptchaServiceServer<T>
    where
        T: CaptchaService,
        B: Body + Send + 'static,
        B::Error: Into<StdError> + Send + 'static,
    {
        type Response = http::Response<tonic::body::BoxBody>;
        type Error = std::convert::Infallible;
        type Future = BoxFuture<Self::Response, Self::Error>;
        fn poll_ready(
            &mut self,
            _cx: &mut Context<'_>,
        ) -> Poll<std::result::Result<(), Self::Error>> {
            Poll::Ready(Ok(()))
        }
        fn call(&mut self, req: http::Request<B>) -> Self::Future {
            let inner = self.inner.clone();
            match req.uri().path() {
                "/pb.captchaService/GetCaptcha" => {
                    #[allow(non_camel_case_types)]
                    struct GetCaptchaSvc<T: CaptchaService>(pub Arc<T>);
                    impl<
                        T: CaptchaService,
                    > tonic::server::UnaryService<super::GetCaptchaReq>
                    for GetCaptchaSvc<T> {
                        type Response = super::GetCaptchaResp;
                        type Future = BoxFuture<
                            tonic::Response<Self::Response>,
                            tonic::Status,
                        >;
                        fn call(
                            &mut self,
                            request: tonic::Request<super::GetCaptchaReq>,
                        ) -> Self::Future {
                            let inner = Arc::clone(&self.0);
                            let fut = async move { (*inner).get_captcha(request).await };
                            Box::pin(fut)
                        }
                    }
                    let accept_compression_encodings = self.accept_compression_encodings;
                    let send_compression_encodings = self.send_compression_encodings;
                    let max_decoding_message_size = self.max_decoding_message_size;
                    let max_encoding_message_size = self.max_encoding_message_size;
                    let inner = self.inner.clone();
                    let fut = async move {
                        let inner = inner.0;
                        let method = GetCaptchaSvc(inner);
                        let codec = tonic::codec::ProstCodec::default();
                        let mut grpc = tonic::server::Grpc::new(codec)
                            .apply_compression_config(
                                accept_compression_encodings,
                                send_compression_encodings,
                            )
                            .apply_max_message_size_config(
                                max_decoding_message_size,
                                max_encoding_message_size,
                            );
                        let res = grpc.unary(method, req).await;
                        Ok(res)
                    };
                    Box::pin(fut)
                }
                "/pb.captchaService/CaptchaVerify" => {
                    #[allow(non_camel_case_types)]
                    struct CaptchaVerifySvc<T: CaptchaService>(pub Arc<T>);
                    impl<
                        T: CaptchaService,
                    > tonic::server::UnaryService<super::CaptchaVerifyReq>
                    for CaptchaVerifySvc<T> {
                        type Response = super::CaptchaVerifyResp;
                        type Future = BoxFuture<
                            tonic::Response<Self::Response>,
                            tonic::Status,
                        >;
                        fn call(
                            &mut self,
                            request: tonic::Request<super::CaptchaVerifyReq>,
                        ) -> Self::Future {
                            let inner = Arc::clone(&self.0);
                            let fut = async move {
                                (*inner).captcha_verify(request).await
                            };
                            Box::pin(fut)
                        }
                    }
                    let accept_compression_encodings = self.accept_compression_encodings;
                    let send_compression_encodings = self.send_compression_encodings;
                    let max_decoding_message_size = self.max_decoding_message_size;
                    let max_encoding_message_size = self.max_encoding_message_size;
                    let inner = self.inner.clone();
                    let fut = async move {
                        let inner = inner.0;
                        let method = CaptchaVerifySvc(inner);
                        let codec = tonic::codec::ProstCodec::default();
                        let mut grpc = tonic::server::Grpc::new(codec)
                            .apply_compression_config(
                                accept_compression_encodings,
                                send_compression_encodings,
                            )
                            .apply_max_message_size_config(
                                max_decoding_message_size,
                                max_encoding_message_size,
                            );
                        let res = grpc.unary(method, req).await;
                        Ok(res)
                    };
                    Box::pin(fut)
                }
                _ => {
                    Box::pin(async move {
                        Ok(
                            http::Response::builder()
                                .status(200)
                                .header("grpc-status", "12")
                                .header("content-type", "application/grpc")
                                .body(empty_body())
                                .unwrap(),
                        )
                    })
                }
            }
        }
    }
    impl<T: CaptchaService> Clone for CaptchaServiceServer<T> {
        fn clone(&self) -> Self {
            let inner = self.inner.clone();
            Self {
                inner,
                accept_compression_encodings: self.accept_compression_encodings,
                send_compression_encodings: self.send_compression_encodings,
                max_decoding_message_size: self.max_decoding_message_size,
                max_encoding_message_size: self.max_encoding_message_size,
            }
        }
    }
    impl<T: CaptchaService> Clone for _Inner<T> {
        fn clone(&self) -> Self {
            Self(Arc::clone(&self.0))
        }
    }
    impl<T: std::fmt::Debug> std::fmt::Debug for _Inner<T> {
        fn fmt(&self, f: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
            write!(f, "{:?}", self.0)
        }
    }
    impl<T: CaptchaService> tonic::server::NamedService for CaptchaServiceServer<T> {
        const NAME: &'static str = "pb.captchaService";
    }
}
/// UserRegisterReq 用户注册请求
#[derive(serde::Serialize, serde::Deserialize)]
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct UserRegisterReq {
    #[prost(message, optional, tag = "1")]
    pub header: ::core::option::Option<RequestHeader>,
    /// 用户id 唯一
    #[prost(string, tag = "2")]
    pub user_id: ::prost::alloc::string::String,
    /// 注册时间 13位时间戳 如果不传 默认为当前时间
    #[prost(int64, optional, tag = "3")]
    pub register_time: ::core::option::Option<i64>,
    /// 昵称
    #[prost(string, optional, tag = "4")]
    pub nickname: ::core::option::Option<::prost::alloc::string::String>,
    /// 头像url
    #[prost(string, optional, tag = "5")]
    pub avatar: ::core::option::Option<::prost::alloc::string::String>,
    /// 账号信息 你可以存放password、email、phone等等
    #[prost(map = "string, string", tag = "6")]
    pub account_map: ::std::collections::HashMap<
        ::prost::alloc::string::String,
        ::prost::alloc::string::String,
    >,
    /// 个人信息 你可以存放性别、年龄、生日等等
    #[prost(map = "string, string", tag = "7")]
    pub profile_map: ::std::collections::HashMap<
        ::prost::alloc::string::String,
        ::prost::alloc::string::String,
    >,
    /// 扩展信息 你可以存放等级、积分、金币等等
    #[prost(map = "string, string", tag = "8")]
    pub extra_map: ::std::collections::HashMap<
        ::prost::alloc::string::String,
        ::prost::alloc::string::String,
    >,
    /// 验证信息 你可以存放smsCode、emailCode等等
    #[prost(map = "string, string", tag = "9")]
    pub verify_map: ::std::collections::HashMap<
        ::prost::alloc::string::String,
        ::prost::alloc::string::String,
    >,
}
/// UserRegisterResp 用户注册响应
#[derive(serde::Serialize, serde::Deserialize)]
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct UserRegisterResp {
    #[prost(message, optional, tag = "1")]
    pub header: ::core::option::Option<ResponseHeader>,
}
/// UserDestroyReq 用户注销请求
#[derive(serde::Serialize, serde::Deserialize)]
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct UserDestroyReq {
    #[prost(message, optional, tag = "1")]
    pub header: ::core::option::Option<RequestHeader>,
    /// // 用户id 唯一
    #[prost(string, tag = "2")]
    pub user_id: ::prost::alloc::string::String,
}
/// UserDestroyResp 用户注销响应
#[derive(serde::Serialize, serde::Deserialize)]
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct UserDestroyResp {
    #[prost(message, optional, tag = "1")]
    pub header: ::core::option::Option<ResponseHeader>,
}
/// UserAccessTokenReq 用户登录请求
#[derive(serde::Serialize, serde::Deserialize)]
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct UserAccessTokenReq {
    #[prost(message, optional, tag = "1")]
    pub header: ::core::option::Option<RequestHeader>,
    /// 账号信息 你可以存放password、email、phone等等
    #[prost(map = "string, string", tag = "2")]
    pub account_map: ::std::collections::HashMap<
        ::prost::alloc::string::String,
        ::prost::alloc::string::String,
    >,
    /// 验证信息 你可以存放smsCode、emailCode等等
    #[prost(map = "string, string", tag = "3")]
    pub verify_map: ::std::collections::HashMap<
        ::prost::alloc::string::String,
        ::prost::alloc::string::String,
    >,
    /// 过期时间 13位时间戳
    #[prost(int64, optional, tag = "4")]
    pub expire_time: ::core::option::Option<i64>,
}
/// UserAccessTokenResp 用户登录响应
#[derive(serde::Serialize, serde::Deserialize)]
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct UserAccessTokenResp {
    #[prost(message, optional, tag = "1")]
    pub header: ::core::option::Option<ResponseHeader>,
    /// 用户id 唯一
    #[prost(string, tag = "2")]
    pub user_id: ::prost::alloc::string::String,
    /// 用户token
    #[prost(string, tag = "3")]
    pub access_token: ::prost::alloc::string::String,
}
/// RefreshUserAccessTokenReq 刷新用户token请求
#[derive(serde::Serialize, serde::Deserialize)]
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct RefreshUserAccessTokenReq {
    #[prost(message, optional, tag = "1")]
    pub header: ::core::option::Option<RequestHeader>,
    /// 用户id 唯一
    #[prost(string, tag = "2")]
    pub user_id: ::prost::alloc::string::String,
}
/// RefreshUserAccessTokenResp 刷新用户token响应
#[derive(serde::Serialize, serde::Deserialize)]
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct RefreshUserAccessTokenResp {
    #[prost(message, optional, tag = "1")]
    pub header: ::core::option::Option<ResponseHeader>,
}
/// RevokeUserAccessTokenReq 注销用户token
#[derive(serde::Serialize, serde::Deserialize)]
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct RevokeUserAccessTokenReq {
    #[prost(message, optional, tag = "1")]
    pub header: ::core::option::Option<RequestHeader>,
}
/// RevokeUserAccessTokenResp 注销用户token
#[derive(serde::Serialize, serde::Deserialize)]
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct RevokeUserAccessTokenResp {
    #[prost(message, optional, tag = "1")]
    pub header: ::core::option::Option<ResponseHeader>,
}
/// UpdateUserAccountMapReq 更新用户账号信息请求
#[derive(serde::Serialize, serde::Deserialize)]
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct UpdateUserAccountMapReq {
    #[prost(message, optional, tag = "1")]
    pub header: ::core::option::Option<RequestHeader>,
    /// 账号信息 你可以存放password、email、phone等等
    #[prost(map = "string, string", tag = "2")]
    pub account_map: ::std::collections::HashMap<
        ::prost::alloc::string::String,
        ::prost::alloc::string::String,
    >,
    /// 验证信息 你可以存放oldPassword、smsCode、emailCode等等
    #[prost(map = "string, string", tag = "3")]
    pub verify_map: ::std::collections::HashMap<
        ::prost::alloc::string::String,
        ::prost::alloc::string::String,
    >,
}
/// UpdateUserAccountMapResp 更新用户账号信息响应
#[derive(serde::Serialize, serde::Deserialize)]
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct UpdateUserAccountMapResp {
    #[prost(message, optional, tag = "1")]
    pub header: ::core::option::Option<ResponseHeader>,
}
/// UpdateUserProfileMapReq 更新用户个人信息请求
#[derive(serde::Serialize, serde::Deserialize)]
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct UpdateUserProfileMapReq {
    #[prost(message, optional, tag = "1")]
    pub header: ::core::option::Option<RequestHeader>,
    /// 个人信息 你可以存放性别、年龄、生日等等
    #[prost(map = "string, string", tag = "2")]
    pub profile_map: ::std::collections::HashMap<
        ::prost::alloc::string::String,
        ::prost::alloc::string::String,
    >,
}
/// UpdateUserProfileMapResp 更新用户个人信息响应
#[derive(serde::Serialize, serde::Deserialize)]
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct UpdateUserProfileMapResp {
    #[prost(message, optional, tag = "1")]
    pub header: ::core::option::Option<ResponseHeader>,
}
/// UpdateUserExtraMapReq 更新用户扩展信息请求
#[derive(serde::Serialize, serde::Deserialize)]
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct UpdateUserExtraMapReq {
    #[prost(message, optional, tag = "1")]
    pub header: ::core::option::Option<RequestHeader>,
    /// 扩展信息 你可以存放等级、积分、金币等等
    #[prost(map = "string, string", tag = "2")]
    pub extra_map: ::std::collections::HashMap<
        ::prost::alloc::string::String,
        ::prost::alloc::string::String,
    >,
}
/// UpdateUserExtraMapResp 更新用户扩展信息响应
#[derive(serde::Serialize, serde::Deserialize)]
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct UpdateUserExtraMapResp {
    #[prost(message, optional, tag = "1")]
    pub header: ::core::option::Option<ResponseHeader>,
}
/// UpdateUserCountMapReq 更新用户计数信息请求
#[derive(serde::Serialize, serde::Deserialize)]
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct UpdateUserCountMapReq {
    #[prost(message, optional, tag = "1")]
    pub header: ::core::option::Option<RequestHeader>,
    #[prost(enumeration = "update_user_count_map_req::CountType", tag = "2")]
    pub count_type: i32,
    #[prost(enumeration = "update_user_count_map_req::Algorithm", tag = "3")]
    pub algorithm: i32,
    #[prost(int64, tag = "4")]
    pub count: i64,
    /// 是否统计 统计后同步到数据库
    #[prost(bool, tag = "5")]
    pub statistics: bool,
}
/// Nested message and enum types in `UpdateUserCountMapReq`.
pub mod update_user_count_map_req {
    #[derive(serde::Serialize, serde::Deserialize)]
    #[derive(
        Clone,
        Copy,
        Debug,
        PartialEq,
        Eq,
        Hash,
        PartialOrd,
        Ord,
        ::prost::Enumeration
    )]
    #[repr(i32)]
    pub enum CountType {
        /// 好友数量
        FriendCount = 0,
        /// 加入群数量
        JoinGroupCount = 1,
        /// 创建群数量
        CreateGroupCount = 2,
    }
    impl CountType {
        /// String value of the enum field names used in the ProtoBuf definition.
        ///
        /// The values are not transformed in any way and thus are considered stable
        /// (if the ProtoBuf definition does not change) and safe for programmatic use.
        pub fn as_str_name(&self) -> &'static str {
            match self {
                CountType::FriendCount => "friendCount",
                CountType::JoinGroupCount => "joinGroupCount",
                CountType::CreateGroupCount => "createGroupCount",
            }
        }
        /// Creates an enum from field names used in the ProtoBuf definition.
        pub fn from_str_name(value: &str) -> ::core::option::Option<Self> {
            match value {
                "friendCount" => Some(Self::FriendCount),
                "joinGroupCount" => Some(Self::JoinGroupCount),
                "createGroupCount" => Some(Self::CreateGroupCount),
                _ => None,
            }
        }
    }
    #[derive(serde::Serialize, serde::Deserialize)]
    #[derive(
        Clone,
        Copy,
        Debug,
        PartialEq,
        Eq,
        Hash,
        PartialOrd,
        Ord,
        ::prost::Enumeration
    )]
    #[repr(i32)]
    pub enum Algorithm {
        /// 加
        Add = 0,
        /// 减
        Sub = 1,
        /// 固定
        Fixed = 2,
    }
    impl Algorithm {
        /// String value of the enum field names used in the ProtoBuf definition.
        ///
        /// The values are not transformed in any way and thus are considered stable
        /// (if the ProtoBuf definition does not change) and safe for programmatic use.
        pub fn as_str_name(&self) -> &'static str {
            match self {
                Algorithm::Add => "add",
                Algorithm::Sub => "sub",
                Algorithm::Fixed => "fixed",
            }
        }
        /// Creates an enum from field names used in the ProtoBuf definition.
        pub fn from_str_name(value: &str) -> ::core::option::Option<Self> {
            match value {
                "add" => Some(Self::Add),
                "sub" => Some(Self::Sub),
                "fixed" => Some(Self::Fixed),
                _ => None,
            }
        }
    }
}
/// UpdateUserCountMapResp 更新用户计数信息响应
#[derive(serde::Serialize, serde::Deserialize)]
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct UpdateUserCountMapResp {
    #[prost(message, optional, tag = "1")]
    pub header: ::core::option::Option<ResponseHeader>,
}
/// GetSelfUserInfoReq 获取自己的用户信息请求
#[derive(serde::Serialize, serde::Deserialize)]
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct GetSelfUserInfoReq {
    #[prost(message, optional, tag = "1")]
    pub header: ::core::option::Option<RequestHeader>,
}
/// GetSelfUserInfoResp 获取自己的用户信息响应
#[derive(serde::Serialize, serde::Deserialize)]
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct GetSelfUserInfoResp {
    #[prost(message, optional, tag = "1")]
    pub header: ::core::option::Option<ResponseHeader>,
    /// 用户id 唯一
    #[prost(string, tag = "2")]
    pub user_id: ::prost::alloc::string::String,
    /// 注册时间 13位时间戳 如果不传 默认为当前时间
    #[prost(int64, optional, tag = "3")]
    pub register_time: ::core::option::Option<i64>,
    /// 昵称
    #[prost(string, optional, tag = "4")]
    pub nickname: ::core::option::Option<::prost::alloc::string::String>,
    /// 头像url
    #[prost(string, optional, tag = "5")]
    pub avatar: ::core::option::Option<::prost::alloc::string::String>,
    /// 账号信息 你可以存放password、email、phone等等
    #[prost(map = "string, string", tag = "6")]
    pub account_map: ::std::collections::HashMap<
        ::prost::alloc::string::String,
        ::prost::alloc::string::String,
    >,
    /// 个人信息 你可以存放性别、年龄、生日等等
    #[prost(map = "string, string", tag = "7")]
    pub profile_map: ::std::collections::HashMap<
        ::prost::alloc::string::String,
        ::prost::alloc::string::String,
    >,
    /// 扩展信息 你可以存放等级、积分、金币等等
    #[prost(map = "string, string", tag = "8")]
    pub extra_map: ::std::collections::HashMap<
        ::prost::alloc::string::String,
        ::prost::alloc::string::String,
    >,
}
/// GetUserInfoReq 获取用户信息请求
#[derive(serde::Serialize, serde::Deserialize)]
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct GetUserInfoReq {
    #[prost(message, optional, tag = "1")]
    pub header: ::core::option::Option<RequestHeader>,
    /// 用户id 唯一
    #[prost(string, tag = "2")]
    pub user_id: ::prost::alloc::string::String,
}
/// GetUserInfoResp 获取用户信息响应
#[derive(serde::Serialize, serde::Deserialize)]
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct GetUserInfoResp {
    #[prost(message, optional, tag = "1")]
    pub header: ::core::option::Option<ResponseHeader>,
    /// 用户id 唯一
    #[prost(string, tag = "2")]
    pub user_id: ::prost::alloc::string::String,
    /// 注册时间 13位时间戳 如果不传 默认为当前时间
    #[prost(int64, optional, tag = "3")]
    pub register_time: ::core::option::Option<i64>,
    /// 昵称
    #[prost(string, optional, tag = "4")]
    pub nickname: ::core::option::Option<::prost::alloc::string::String>,
    /// 头像url
    #[prost(string, optional, tag = "5")]
    pub avatar: ::core::option::Option<::prost::alloc::string::String>,
    /// 个人信息 你可以存放性别、年龄、生日等等
    #[prost(map = "string, string", tag = "6")]
    pub profile_map: ::std::collections::HashMap<
        ::prost::alloc::string::String,
        ::prost::alloc::string::String,
    >,
}
/// ResetUserAccountMapReq 重置用户账号信息请求
#[derive(serde::Serialize, serde::Deserialize)]
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct ResetUserAccountMapReq {
    #[prost(message, optional, tag = "1")]
    pub header: ::core::option::Option<RequestHeader>,
    /// 账号信息 你可以存放password、email、phone等等
    #[prost(map = "string, string", tag = "2")]
    pub account_map: ::std::collections::HashMap<
        ::prost::alloc::string::String,
        ::prost::alloc::string::String,
    >,
    /// 验证信息 你可以存放smsCode、emailCode等等
    #[prost(map = "string, string", tag = "3")]
    pub verify_map: ::std::collections::HashMap<
        ::prost::alloc::string::String,
        ::prost::alloc::string::String,
    >,
}
/// ResetUserAccountMapResp 重置用户账号信息响应
#[derive(serde::Serialize, serde::Deserialize)]
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct ResetUserAccountMapResp {
    #[prost(message, optional, tag = "1")]
    pub header: ::core::option::Option<ResponseHeader>,
}
/// UserAfterOnlineReq 用户上线回调请求
#[derive(serde::Serialize, serde::Deserialize)]
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct UserAfterOnlineReq {
    #[prost(message, optional, tag = "1")]
    pub header: ::core::option::Option<RequestHeader>,
}
/// UserAfterOnlineResp 用户上线回调响应
#[derive(serde::Serialize, serde::Deserialize)]
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct UserAfterOnlineResp {
    #[prost(message, optional, tag = "1")]
    pub header: ::core::option::Option<ResponseHeader>,
}
/// UserAfterOfflineReq 用户下线回调请求
#[derive(serde::Serialize, serde::Deserialize)]
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct UserAfterOfflineReq {
    #[prost(message, optional, tag = "1")]
    pub header: ::core::option::Option<RequestHeader>,
}
/// UserAfterOfflineResp 用户下线回调响应
#[derive(serde::Serialize, serde::Deserialize)]
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct UserAfterOfflineResp {
    #[prost(message, optional, tag = "1")]
    pub header: ::core::option::Option<ResponseHeader>,
}
/// UserBeforeConnectReq 服务端连接前的回调
#[derive(serde::Serialize, serde::Deserialize)]
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct UserBeforeConnectReq {
    #[prost(message, optional, tag = "1")]
    pub header: ::core::option::Option<RequestHeader>,
}
/// UserBeforeConnectResp 服务端连接前的回调
#[derive(serde::Serialize, serde::Deserialize)]
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct UserBeforeConnectResp {
    #[prost(message, optional, tag = "1")]
    pub header: ::core::option::Option<ResponseHeader>,
    /// 是否允许建立连接
    #[prost(bool, tag = "2")]
    pub success: bool,
    /// 如果不允许建立连接，返回的错误码
    #[prost(enumeration = "WebsocketCustomCloseCode", tag = "3")]
    pub close_code: i32,
    /// 如果不允许建立连接，返回的错误信息
    #[prost(string, tag = "4")]
    pub close_reason: ::prost::alloc::string::String,
    /// 成功的话返回用户id
    #[prost(string, tag = "5")]
    pub user_id: ::prost::alloc::string::String,
}
/// UserBeforeRequestReq 用户请求前的回调请求
#[derive(serde::Serialize, serde::Deserialize)]
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct UserBeforeRequestReq {
    #[prost(message, optional, tag = "1")]
    pub header: ::core::option::Option<RequestHeader>,
    /// 请求路径
    #[prost(string, tag = "2")]
    pub path: ::prost::alloc::string::String,
}
/// UserBeforeRequestResp 用户请求前的回调响应
#[derive(serde::Serialize, serde::Deserialize)]
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct UserBeforeRequestResp {
    #[prost(message, optional, tag = "1")]
    pub header: ::core::option::Option<ResponseHeader>,
    /// 用户id
    #[prost(string, tag = "2")]
    pub user_id: ::prost::alloc::string::String,
}
/// UserAfterKeepAliveReq 用户保活回调请求
#[derive(serde::Serialize, serde::Deserialize)]
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct UserAfterKeepAliveReq {
    #[prost(message, optional, tag = "1")]
    pub header: ::core::option::Option<RequestHeader>,
}
/// UserAfterKeepAliveResp 用户保活回调响应
#[derive(serde::Serialize, serde::Deserialize)]
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct UserAfterKeepAliveResp {
    #[prost(message, optional, tag = "1")]
    pub header: ::core::option::Option<ResponseHeader>,
}
/// CreateRobotReq 创建机器人请求
#[derive(serde::Serialize, serde::Deserialize)]
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct CreateRobotReq {
    #[prost(message, optional, tag = "1")]
    pub header: ::core::option::Option<RequestHeader>,
    /// 机器人id 唯一
    #[prost(string, tag = "2")]
    pub robot_id: ::prost::alloc::string::String,
    /// 昵称
    #[prost(string, optional, tag = "3")]
    pub nickname: ::core::option::Option<::prost::alloc::string::String>,
    /// 头像url
    #[prost(string, optional, tag = "4")]
    pub avatar: ::core::option::Option<::prost::alloc::string::String>,
}
/// CreateRobotResp 创建机器人响应
#[derive(serde::Serialize, serde::Deserialize)]
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct CreateRobotResp {
    #[prost(message, optional, tag = "1")]
    pub header: ::core::option::Option<ResponseHeader>,
    /// 机器人token
    #[prost(string, tag = "2")]
    pub access_token: ::prost::alloc::string::String,
}
/// GetUserModelReq 获取用户模型请求
#[derive(serde::Serialize, serde::Deserialize)]
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct GetUserModelByIdReq {
    #[prost(message, optional, tag = "1")]
    pub header: ::core::option::Option<RequestHeader>,
    /// 用户id 唯一
    #[prost(string, tag = "2")]
    pub user_id: ::prost::alloc::string::String,
    #[prost(message, optional, tag = "3")]
    pub opt: ::core::option::Option<get_user_model_by_id_req::Opt>,
}
/// Nested message and enum types in `GetUserModelByIdReq`.
pub mod get_user_model_by_id_req {
    #[derive(serde::Serialize, serde::Deserialize)]
    #[allow(clippy::derive_partial_eq_without_eq)]
    #[derive(Clone, PartialEq, ::prost::Message)]
    pub struct Opt {
        /// 是否携带用户设置列表
        #[prost(bool, tag = "1")]
        pub with_user_settings: bool,
        /// 用户设置key列表 如果withUserSettings为false 则该字段无效
        #[prost(string, repeated, tag = "2")]
        pub user_setting_keys: ::prost::alloc::vec::Vec<::prost::alloc::string::String>,
    }
}
/// GetUserModelByIdResp 获取用户模型响应
#[derive(serde::Serialize, serde::Deserialize)]
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct GetUserModelByIdResp {
    #[prost(message, optional, tag = "1")]
    pub header: ::core::option::Option<ResponseHeader>,
    /// 用户模型json
    #[prost(bytes = "vec", tag = "2")]
    pub user_model_json: ::prost::alloc::vec::Vec<u8>,
    /// 用户设置json 他是map\[string\]usermodel.UserSetting的json
    #[prost(bytes = "vec", tag = "3")]
    pub user_settings_json: ::prost::alloc::vec::Vec<u8>,
}
/// GetUserModelByIdsReq 批量获取用户模型请求
#[derive(serde::Serialize, serde::Deserialize)]
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct GetUserModelByIdsReq {
    #[prost(message, optional, tag = "1")]
    pub header: ::core::option::Option<RequestHeader>,
    /// 用户id列表
    #[prost(string, repeated, tag = "2")]
    pub user_ids: ::prost::alloc::vec::Vec<::prost::alloc::string::String>,
    #[prost(message, optional, tag = "3")]
    pub opt: ::core::option::Option<get_user_model_by_ids_req::Opt>,
}
/// Nested message and enum types in `GetUserModelByIdsReq`.
pub mod get_user_model_by_ids_req {
    #[derive(serde::Serialize, serde::Deserialize)]
    #[allow(clippy::derive_partial_eq_without_eq)]
    #[derive(Clone, PartialEq, ::prost::Message)]
    pub struct Opt {
        /// 是否携带用户设置列表
        #[prost(bool, tag = "1")]
        pub with_user_settings: bool,
        /// 用户设置key列表 如果withUserSettings为false 则该字段无效
        #[prost(string, repeated, tag = "2")]
        pub user_setting_keys: ::prost::alloc::vec::Vec<::prost::alloc::string::String>,
    }
}
/// GetUserModelByIdsResp 批量获取用户模型响应
#[derive(serde::Serialize, serde::Deserialize)]
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct GetUserModelByIdsResp {
    #[prost(message, optional, tag = "1")]
    pub header: ::core::option::Option<ResponseHeader>,
    /// 用户模型json列表
    #[prost(map = "string, bytes", tag = "2")]
    pub user_model_jsons: ::std::collections::HashMap<
        ::prost::alloc::string::String,
        ::prost::alloc::vec::Vec<u8>,
    >,
    /// 用户设置json列表 value是map\[string\]usermodel.UserSetting的json
    #[prost(map = "string, bytes", tag = "3")]
    pub user_settings_jsons: ::std::collections::HashMap<
        ::prost::alloc::string::String,
        ::prost::alloc::vec::Vec<u8>,
    >,
}
/// Generated client implementations.
pub mod account_service_client {
    #![allow(unused_variables, dead_code, missing_docs, clippy::let_unit_value)]
    use tonic::codegen::*;
    use tonic::codegen::http::Uri;
    #[derive(Debug, Clone)]
    pub struct AccountServiceClient<T> {
        inner: tonic::client::Grpc<T>,
    }
    impl AccountServiceClient<tonic::transport::Channel> {
        /// Attempt to create a new client by connecting to a given endpoint.
        pub async fn connect<D>(dst: D) -> Result<Self, tonic::transport::Error>
        where
            D: TryInto<tonic::transport::Endpoint>,
            D::Error: Into<StdError>,
        {
            let conn = tonic::transport::Endpoint::new(dst)?.connect().await?;
            Ok(Self::new(conn))
        }
    }
    impl<T> AccountServiceClient<T>
    where
        T: tonic::client::GrpcService<tonic::body::BoxBody>,
        T::Error: Into<StdError>,
        T::ResponseBody: Body<Data = Bytes> + Send + 'static,
        <T::ResponseBody as Body>::Error: Into<StdError> + Send,
    {
        pub fn new(inner: T) -> Self {
            let inner = tonic::client::Grpc::new(inner);
            Self { inner }
        }
        pub fn with_origin(inner: T, origin: Uri) -> Self {
            let inner = tonic::client::Grpc::with_origin(inner, origin);
            Self { inner }
        }
        pub fn with_interceptor<F>(
            inner: T,
            interceptor: F,
        ) -> AccountServiceClient<InterceptedService<T, F>>
        where
            F: tonic::service::Interceptor,
            T::ResponseBody: Default,
            T: tonic::codegen::Service<
                http::Request<tonic::body::BoxBody>,
                Response = http::Response<
                    <T as tonic::client::GrpcService<tonic::body::BoxBody>>::ResponseBody,
                >,
            >,
            <T as tonic::codegen::Service<
                http::Request<tonic::body::BoxBody>,
            >>::Error: Into<StdError> + Send + Sync,
        {
            AccountServiceClient::new(InterceptedService::new(inner, interceptor))
        }
        /// Compress requests with the given encoding.
        ///
        /// This requires the server to support it otherwise it might respond with an
        /// error.
        #[must_use]
        pub fn send_compressed(mut self, encoding: CompressionEncoding) -> Self {
            self.inner = self.inner.send_compressed(encoding);
            self
        }
        /// Enable decompressing responses.
        #[must_use]
        pub fn accept_compressed(mut self, encoding: CompressionEncoding) -> Self {
            self.inner = self.inner.accept_compressed(encoding);
            self
        }
        /// Limits the maximum size of a decoded message.
        ///
        /// Default: `4MB`
        #[must_use]
        pub fn max_decoding_message_size(mut self, limit: usize) -> Self {
            self.inner = self.inner.max_decoding_message_size(limit);
            self
        }
        /// Limits the maximum size of an encoded message.
        ///
        /// Default: `usize::MAX`
        #[must_use]
        pub fn max_encoding_message_size(mut self, limit: usize) -> Self {
            self.inner = self.inner.max_encoding_message_size(limit);
            self
        }
        /// UserRegister 用户注册
        /// 二次开发人员可以传递自定义参数 如果不满足你的需求 你可以修改该proto文件
        pub async fn user_register(
            &mut self,
            request: impl tonic::IntoRequest<super::UserRegisterReq>,
        ) -> std::result::Result<
            tonic::Response<super::UserRegisterResp>,
            tonic::Status,
        > {
            self.inner
                .ready()
                .await
                .map_err(|e| {
                    tonic::Status::new(
                        tonic::Code::Unknown,
                        format!("Service was not ready: {}", e.into()),
                    )
                })?;
            let codec = tonic::codec::ProstCodec::default();
            let path = http::uri::PathAndQuery::from_static(
                "/pb.accountService/UserRegister",
            );
            let mut req = request.into_request();
            req.extensions_mut()
                .insert(GrpcMethod::new("pb.accountService", "UserRegister"));
            self.inner.unary(req, path, codec).await
        }
        /// UserDestroy 用户注销
        /// 注销逻辑可以从这里修改
        pub async fn user_destroy(
            &mut self,
            request: impl tonic::IntoRequest<super::UserDestroyReq>,
        ) -> std::result::Result<
            tonic::Response<super::UserDestroyResp>,
            tonic::Status,
        > {
            self.inner
                .ready()
                .await
                .map_err(|e| {
                    tonic::Status::new(
                        tonic::Code::Unknown,
                        format!("Service was not ready: {}", e.into()),
                    )
                })?;
            let codec = tonic::codec::ProstCodec::default();
            let path = http::uri::PathAndQuery::from_static(
                "/pb.accountService/UserDestroy",
            );
            let mut req = request.into_request();
            req.extensions_mut()
                .insert(GrpcMethod::new("pb.accountService", "UserDestroy"));
            self.inner.unary(req, path, codec).await
        }
        /// UserAccessToken 用户登录
        /// 登录逻辑可以从这里修改 默认是密码/手机号登录
        pub async fn user_access_token(
            &mut self,
            request: impl tonic::IntoRequest<super::UserAccessTokenReq>,
        ) -> std::result::Result<
            tonic::Response<super::UserAccessTokenResp>,
            tonic::Status,
        > {
            self.inner
                .ready()
                .await
                .map_err(|e| {
                    tonic::Status::new(
                        tonic::Code::Unknown,
                        format!("Service was not ready: {}", e.into()),
                    )
                })?;
            let codec = tonic::codec::ProstCodec::default();
            let path = http::uri::PathAndQuery::from_static(
                "/pb.accountService/UserAccessToken",
            );
            let mut req = request.into_request();
            req.extensions_mut()
                .insert(GrpcMethod::new("pb.accountService", "UserAccessToken"));
            self.inner.unary(req, path, codec).await
        }
        /// RefreshUserAccessToken 刷新用户token
        /// 刷新逻辑可以从这里修改
        pub async fn refresh_user_access_token(
            &mut self,
            request: impl tonic::IntoRequest<super::RefreshUserAccessTokenReq>,
        ) -> std::result::Result<
            tonic::Response<super::RefreshUserAccessTokenResp>,
            tonic::Status,
        > {
            self.inner
                .ready()
                .await
                .map_err(|e| {
                    tonic::Status::new(
                        tonic::Code::Unknown,
                        format!("Service was not ready: {}", e.into()),
                    )
                })?;
            let codec = tonic::codec::ProstCodec::default();
            let path = http::uri::PathAndQuery::from_static(
                "/pb.accountService/RefreshUserAccessToken",
            );
            let mut req = request.into_request();
            req.extensions_mut()
                .insert(GrpcMethod::new("pb.accountService", "RefreshUserAccessToken"));
            self.inner.unary(req, path, codec).await
        }
        /// RevokeUserAccessToken 注销用户token
        /// 注销逻辑可以从这里修改
        pub async fn revoke_user_access_token(
            &mut self,
            request: impl tonic::IntoRequest<super::RevokeUserAccessTokenReq>,
        ) -> std::result::Result<
            tonic::Response<super::RevokeUserAccessTokenResp>,
            tonic::Status,
        > {
            self.inner
                .ready()
                .await
                .map_err(|e| {
                    tonic::Status::new(
                        tonic::Code::Unknown,
                        format!("Service was not ready: {}", e.into()),
                    )
                })?;
            let codec = tonic::codec::ProstCodec::default();
            let path = http::uri::PathAndQuery::from_static(
                "/pb.accountService/RevokeUserAccessToken",
            );
            let mut req = request.into_request();
            req.extensions_mut()
                .insert(GrpcMethod::new("pb.accountService", "RevokeUserAccessToken"));
            self.inner.unary(req, path, codec).await
        }
        /// UpdateUserAccountMap 更新用户账号信息
        /// 更新账号信息逻辑可以从这里修改 默认：如果是修改密码，需要旧密码或手机验证码。如果修改绑定手机号，需要验证新手机号的验证码
        pub async fn update_user_account_map(
            &mut self,
            request: impl tonic::IntoRequest<super::UpdateUserAccountMapReq>,
        ) -> std::result::Result<
            tonic::Response<super::UpdateUserAccountMapResp>,
            tonic::Status,
        > {
            self.inner
                .ready()
                .await
                .map_err(|e| {
                    tonic::Status::new(
                        tonic::Code::Unknown,
                        format!("Service was not ready: {}", e.into()),
                    )
                })?;
            let codec = tonic::codec::ProstCodec::default();
            let path = http::uri::PathAndQuery::from_static(
                "/pb.accountService/UpdateUserAccountMap",
            );
            let mut req = request.into_request();
            req.extensions_mut()
                .insert(GrpcMethod::new("pb.accountService", "UpdateUserAccountMap"));
            self.inner.unary(req, path, codec).await
        }
        /// ResetUserAccountMap 重置用户账号信息
        /// 重置账号信息逻辑可以从这里修改
        pub async fn reset_user_account_map(
            &mut self,
            request: impl tonic::IntoRequest<super::ResetUserAccountMapReq>,
        ) -> std::result::Result<
            tonic::Response<super::ResetUserAccountMapResp>,
            tonic::Status,
        > {
            self.inner
                .ready()
                .await
                .map_err(|e| {
                    tonic::Status::new(
                        tonic::Code::Unknown,
                        format!("Service was not ready: {}", e.into()),
                    )
                })?;
            let codec = tonic::codec::ProstCodec::default();
            let path = http::uri::PathAndQuery::from_static(
                "/pb.accountService/ResetUserAccountMap",
            );
            let mut req = request.into_request();
            req.extensions_mut()
                .insert(GrpcMethod::new("pb.accountService", "ResetUserAccountMap"));
            self.inner.unary(req, path, codec).await
        }
        /// CreateRobot 创建机器人
        /// 创建机器人逻辑可以从这里修改
        pub async fn create_robot(
            &mut self,
            request: impl tonic::IntoRequest<super::CreateRobotReq>,
        ) -> std::result::Result<
            tonic::Response<super::CreateRobotResp>,
            tonic::Status,
        > {
            self.inner
                .ready()
                .await
                .map_err(|e| {
                    tonic::Status::new(
                        tonic::Code::Unknown,
                        format!("Service was not ready: {}", e.into()),
                    )
                })?;
            let codec = tonic::codec::ProstCodec::default();
            let path = http::uri::PathAndQuery::from_static(
                "/pb.accountService/CreateRobot",
            );
            let mut req = request.into_request();
            req.extensions_mut()
                .insert(GrpcMethod::new("pb.accountService", "CreateRobot"));
            self.inner.unary(req, path, codec).await
        }
    }
}
/// Generated client implementations.
pub mod info_service_client {
    #![allow(unused_variables, dead_code, missing_docs, clippy::let_unit_value)]
    use tonic::codegen::*;
    use tonic::codegen::http::Uri;
    #[derive(Debug, Clone)]
    pub struct InfoServiceClient<T> {
        inner: tonic::client::Grpc<T>,
    }
    impl InfoServiceClient<tonic::transport::Channel> {
        /// Attempt to create a new client by connecting to a given endpoint.
        pub async fn connect<D>(dst: D) -> Result<Self, tonic::transport::Error>
        where
            D: TryInto<tonic::transport::Endpoint>,
            D::Error: Into<StdError>,
        {
            let conn = tonic::transport::Endpoint::new(dst)?.connect().await?;
            Ok(Self::new(conn))
        }
    }
    impl<T> InfoServiceClient<T>
    where
        T: tonic::client::GrpcService<tonic::body::BoxBody>,
        T::Error: Into<StdError>,
        T::ResponseBody: Body<Data = Bytes> + Send + 'static,
        <T::ResponseBody as Body>::Error: Into<StdError> + Send,
    {
        pub fn new(inner: T) -> Self {
            let inner = tonic::client::Grpc::new(inner);
            Self { inner }
        }
        pub fn with_origin(inner: T, origin: Uri) -> Self {
            let inner = tonic::client::Grpc::with_origin(inner, origin);
            Self { inner }
        }
        pub fn with_interceptor<F>(
            inner: T,
            interceptor: F,
        ) -> InfoServiceClient<InterceptedService<T, F>>
        where
            F: tonic::service::Interceptor,
            T::ResponseBody: Default,
            T: tonic::codegen::Service<
                http::Request<tonic::body::BoxBody>,
                Response = http::Response<
                    <T as tonic::client::GrpcService<tonic::body::BoxBody>>::ResponseBody,
                >,
            >,
            <T as tonic::codegen::Service<
                http::Request<tonic::body::BoxBody>,
            >>::Error: Into<StdError> + Send + Sync,
        {
            InfoServiceClient::new(InterceptedService::new(inner, interceptor))
        }
        /// Compress requests with the given encoding.
        ///
        /// This requires the server to support it otherwise it might respond with an
        /// error.
        #[must_use]
        pub fn send_compressed(mut self, encoding: CompressionEncoding) -> Self {
            self.inner = self.inner.send_compressed(encoding);
            self
        }
        /// Enable decompressing responses.
        #[must_use]
        pub fn accept_compressed(mut self, encoding: CompressionEncoding) -> Self {
            self.inner = self.inner.accept_compressed(encoding);
            self
        }
        /// Limits the maximum size of a decoded message.
        ///
        /// Default: `4MB`
        #[must_use]
        pub fn max_decoding_message_size(mut self, limit: usize) -> Self {
            self.inner = self.inner.max_decoding_message_size(limit);
            self
        }
        /// Limits the maximum size of an encoded message.
        ///
        /// Default: `usize::MAX`
        #[must_use]
        pub fn max_encoding_message_size(mut self, limit: usize) -> Self {
            self.inner = self.inner.max_encoding_message_size(limit);
            self
        }
        /// UpdateUserProfileMap 更新用户个人信息
        /// 更新个人信息逻辑可以从这里修改
        pub async fn update_user_profile_map(
            &mut self,
            request: impl tonic::IntoRequest<super::UpdateUserProfileMapReq>,
        ) -> std::result::Result<
            tonic::Response<super::UpdateUserProfileMapResp>,
            tonic::Status,
        > {
            self.inner
                .ready()
                .await
                .map_err(|e| {
                    tonic::Status::new(
                        tonic::Code::Unknown,
                        format!("Service was not ready: {}", e.into()),
                    )
                })?;
            let codec = tonic::codec::ProstCodec::default();
            let path = http::uri::PathAndQuery::from_static(
                "/pb.infoService/UpdateUserProfileMap",
            );
            let mut req = request.into_request();
            req.extensions_mut()
                .insert(GrpcMethod::new("pb.infoService", "UpdateUserProfileMap"));
            self.inner.unary(req, path, codec).await
        }
        /// UpdateUserExtraMap 更新用户扩展信息
        /// 更新扩展信息逻辑可以从这里修改
        pub async fn update_user_extra_map(
            &mut self,
            request: impl tonic::IntoRequest<super::UpdateUserExtraMapReq>,
        ) -> std::result::Result<
            tonic::Response<super::UpdateUserExtraMapResp>,
            tonic::Status,
        > {
            self.inner
                .ready()
                .await
                .map_err(|e| {
                    tonic::Status::new(
                        tonic::Code::Unknown,
                        format!("Service was not ready: {}", e.into()),
                    )
                })?;
            let codec = tonic::codec::ProstCodec::default();
            let path = http::uri::PathAndQuery::from_static(
                "/pb.infoService/UpdateUserExtraMap",
            );
            let mut req = request.into_request();
            req.extensions_mut()
                .insert(GrpcMethod::new("pb.infoService", "UpdateUserExtraMap"));
            self.inner.unary(req, path, codec).await
        }
        /// UpdateUserCountMap 更新用户计数信息
        /// 更新计数信息逻辑可以从这里修改
        pub async fn update_user_count_map(
            &mut self,
            request: impl tonic::IntoRequest<super::UpdateUserCountMapReq>,
        ) -> std::result::Result<
            tonic::Response<super::UpdateUserCountMapResp>,
            tonic::Status,
        > {
            self.inner
                .ready()
                .await
                .map_err(|e| {
                    tonic::Status::new(
                        tonic::Code::Unknown,
                        format!("Service was not ready: {}", e.into()),
                    )
                })?;
            let codec = tonic::codec::ProstCodec::default();
            let path = http::uri::PathAndQuery::from_static(
                "/pb.infoService/UpdateUserCountMap",
            );
            let mut req = request.into_request();
            req.extensions_mut()
                .insert(GrpcMethod::new("pb.infoService", "UpdateUserCountMap"));
            self.inner.unary(req, path, codec).await
        }
        /// GetSelfUserInfo 获取自己的用户信息
        /// 获取自己的用户信息逻辑可以从这里修改
        pub async fn get_self_user_info(
            &mut self,
            request: impl tonic::IntoRequest<super::GetSelfUserInfoReq>,
        ) -> std::result::Result<
            tonic::Response<super::GetSelfUserInfoResp>,
            tonic::Status,
        > {
            self.inner
                .ready()
                .await
                .map_err(|e| {
                    tonic::Status::new(
                        tonic::Code::Unknown,
                        format!("Service was not ready: {}", e.into()),
                    )
                })?;
            let codec = tonic::codec::ProstCodec::default();
            let path = http::uri::PathAndQuery::from_static(
                "/pb.infoService/GetSelfUserInfo",
            );
            let mut req = request.into_request();
            req.extensions_mut()
                .insert(GrpcMethod::new("pb.infoService", "GetSelfUserInfo"));
            self.inner.unary(req, path, codec).await
        }
        /// GetUserInfo 获取用户信息
        /// 获取用户信息逻辑可以从这里修改
        pub async fn get_user_info(
            &mut self,
            request: impl tonic::IntoRequest<super::GetUserInfoReq>,
        ) -> std::result::Result<
            tonic::Response<super::GetUserInfoResp>,
            tonic::Status,
        > {
            self.inner
                .ready()
                .await
                .map_err(|e| {
                    tonic::Status::new(
                        tonic::Code::Unknown,
                        format!("Service was not ready: {}", e.into()),
                    )
                })?;
            let codec = tonic::codec::ProstCodec::default();
            let path = http::uri::PathAndQuery::from_static(
                "/pb.infoService/GetUserInfo",
            );
            let mut req = request.into_request();
            req.extensions_mut()
                .insert(GrpcMethod::new("pb.infoService", "GetUserInfo"));
            self.inner.unary(req, path, codec).await
        }
        /// GetUserModelById 获取用户模型
        /// 获取用户模型逻辑可以从这里修改
        pub async fn get_user_model_by_id(
            &mut self,
            request: impl tonic::IntoRequest<super::GetUserModelByIdReq>,
        ) -> std::result::Result<
            tonic::Response<super::GetUserModelByIdResp>,
            tonic::Status,
        > {
            self.inner
                .ready()
                .await
                .map_err(|e| {
                    tonic::Status::new(
                        tonic::Code::Unknown,
                        format!("Service was not ready: {}", e.into()),
                    )
                })?;
            let codec = tonic::codec::ProstCodec::default();
            let path = http::uri::PathAndQuery::from_static(
                "/pb.infoService/GetUserModelById",
            );
            let mut req = request.into_request();
            req.extensions_mut()
                .insert(GrpcMethod::new("pb.infoService", "GetUserModelById"));
            self.inner.unary(req, path, codec).await
        }
        /// GetUserModelByIds 批量获取用户模型
        /// 批量获取用户模型逻辑可以从这里修改
        pub async fn get_user_model_by_ids(
            &mut self,
            request: impl tonic::IntoRequest<super::GetUserModelByIdsReq>,
        ) -> std::result::Result<
            tonic::Response<super::GetUserModelByIdsResp>,
            tonic::Status,
        > {
            self.inner
                .ready()
                .await
                .map_err(|e| {
                    tonic::Status::new(
                        tonic::Code::Unknown,
                        format!("Service was not ready: {}", e.into()),
                    )
                })?;
            let codec = tonic::codec::ProstCodec::default();
            let path = http::uri::PathAndQuery::from_static(
                "/pb.infoService/GetUserModelByIds",
            );
            let mut req = request.into_request();
            req.extensions_mut()
                .insert(GrpcMethod::new("pb.infoService", "GetUserModelByIds"));
            self.inner.unary(req, path, codec).await
        }
    }
}
/// Generated client implementations.
pub mod callback_service_client {
    #![allow(unused_variables, dead_code, missing_docs, clippy::let_unit_value)]
    use tonic::codegen::*;
    use tonic::codegen::http::Uri;
    #[derive(Debug, Clone)]
    pub struct CallbackServiceClient<T> {
        inner: tonic::client::Grpc<T>,
    }
    impl CallbackServiceClient<tonic::transport::Channel> {
        /// Attempt to create a new client by connecting to a given endpoint.
        pub async fn connect<D>(dst: D) -> Result<Self, tonic::transport::Error>
        where
            D: TryInto<tonic::transport::Endpoint>,
            D::Error: Into<StdError>,
        {
            let conn = tonic::transport::Endpoint::new(dst)?.connect().await?;
            Ok(Self::new(conn))
        }
    }
    impl<T> CallbackServiceClient<T>
    where
        T: tonic::client::GrpcService<tonic::body::BoxBody>,
        T::Error: Into<StdError>,
        T::ResponseBody: Body<Data = Bytes> + Send + 'static,
        <T::ResponseBody as Body>::Error: Into<StdError> + Send,
    {
        pub fn new(inner: T) -> Self {
            let inner = tonic::client::Grpc::new(inner);
            Self { inner }
        }
        pub fn with_origin(inner: T, origin: Uri) -> Self {
            let inner = tonic::client::Grpc::with_origin(inner, origin);
            Self { inner }
        }
        pub fn with_interceptor<F>(
            inner: T,
            interceptor: F,
        ) -> CallbackServiceClient<InterceptedService<T, F>>
        where
            F: tonic::service::Interceptor,
            T::ResponseBody: Default,
            T: tonic::codegen::Service<
                http::Request<tonic::body::BoxBody>,
                Response = http::Response<
                    <T as tonic::client::GrpcService<tonic::body::BoxBody>>::ResponseBody,
                >,
            >,
            <T as tonic::codegen::Service<
                http::Request<tonic::body::BoxBody>,
            >>::Error: Into<StdError> + Send + Sync,
        {
            CallbackServiceClient::new(InterceptedService::new(inner, interceptor))
        }
        /// Compress requests with the given encoding.
        ///
        /// This requires the server to support it otherwise it might respond with an
        /// error.
        #[must_use]
        pub fn send_compressed(mut self, encoding: CompressionEncoding) -> Self {
            self.inner = self.inner.send_compressed(encoding);
            self
        }
        /// Enable decompressing responses.
        #[must_use]
        pub fn accept_compressed(mut self, encoding: CompressionEncoding) -> Self {
            self.inner = self.inner.accept_compressed(encoding);
            self
        }
        /// Limits the maximum size of a decoded message.
        ///
        /// Default: `4MB`
        #[must_use]
        pub fn max_decoding_message_size(mut self, limit: usize) -> Self {
            self.inner = self.inner.max_decoding_message_size(limit);
            self
        }
        /// Limits the maximum size of an encoded message.
        ///
        /// Default: `usize::MAX`
        #[must_use]
        pub fn max_encoding_message_size(mut self, limit: usize) -> Self {
            self.inner = self.inner.max_encoding_message_size(limit);
            self
        }
        /// UserAfterOnline 用户上线回调
        /// 用户上线回调逻辑可以从这里修改
        pub async fn user_after_online(
            &mut self,
            request: impl tonic::IntoRequest<super::UserAfterOnlineReq>,
        ) -> std::result::Result<
            tonic::Response<super::UserAfterOnlineResp>,
            tonic::Status,
        > {
            self.inner
                .ready()
                .await
                .map_err(|e| {
                    tonic::Status::new(
                        tonic::Code::Unknown,
                        format!("Service was not ready: {}", e.into()),
                    )
                })?;
            let codec = tonic::codec::ProstCodec::default();
            let path = http::uri::PathAndQuery::from_static(
                "/pb.callbackService/UserAfterOnline",
            );
            let mut req = request.into_request();
            req.extensions_mut()
                .insert(GrpcMethod::new("pb.callbackService", "UserAfterOnline"));
            self.inner.unary(req, path, codec).await
        }
        /// UserAfterOffline 用户下线回调
        /// 用户下线回调逻辑可以从这里修改
        pub async fn user_after_offline(
            &mut self,
            request: impl tonic::IntoRequest<super::UserAfterOfflineReq>,
        ) -> std::result::Result<
            tonic::Response<super::UserAfterOfflineResp>,
            tonic::Status,
        > {
            self.inner
                .ready()
                .await
                .map_err(|e| {
                    tonic::Status::new(
                        tonic::Code::Unknown,
                        format!("Service was not ready: {}", e.into()),
                    )
                })?;
            let codec = tonic::codec::ProstCodec::default();
            let path = http::uri::PathAndQuery::from_static(
                "/pb.callbackService/UserAfterOffline",
            );
            let mut req = request.into_request();
            req.extensions_mut()
                .insert(GrpcMethod::new("pb.callbackService", "UserAfterOffline"));
            self.inner.unary(req, path, codec).await
        }
        /// UserBeforeConnect 用户连接前的回调
        /// 用户连接前的回调逻辑可以从这里修改
        pub async fn user_before_connect(
            &mut self,
            request: impl tonic::IntoRequest<super::UserBeforeConnectReq>,
        ) -> std::result::Result<
            tonic::Response<super::UserBeforeConnectResp>,
            tonic::Status,
        > {
            self.inner
                .ready()
                .await
                .map_err(|e| {
                    tonic::Status::new(
                        tonic::Code::Unknown,
                        format!("Service was not ready: {}", e.into()),
                    )
                })?;
            let codec = tonic::codec::ProstCodec::default();
            let path = http::uri::PathAndQuery::from_static(
                "/pb.callbackService/UserBeforeConnect",
            );
            let mut req = request.into_request();
            req.extensions_mut()
                .insert(GrpcMethod::new("pb.callbackService", "UserBeforeConnect"));
            self.inner.unary(req, path, codec).await
        }
        /// UserBeforeRequest 用户请求前的回调
        /// 用户请求前的回调逻辑可以从这里修改
        pub async fn user_before_request(
            &mut self,
            request: impl tonic::IntoRequest<super::UserBeforeRequestReq>,
        ) -> std::result::Result<
            tonic::Response<super::UserBeforeRequestResp>,
            tonic::Status,
        > {
            self.inner
                .ready()
                .await
                .map_err(|e| {
                    tonic::Status::new(
                        tonic::Code::Unknown,
                        format!("Service was not ready: {}", e.into()),
                    )
                })?;
            let codec = tonic::codec::ProstCodec::default();
            let path = http::uri::PathAndQuery::from_static(
                "/pb.callbackService/UserBeforeRequest",
            );
            let mut req = request.into_request();
            req.extensions_mut()
                .insert(GrpcMethod::new("pb.callbackService", "UserBeforeRequest"));
            self.inner.unary(req, path, codec).await
        }
        /// UserAfterKeepAlive 用户保活回调
        /// 用户保活回调逻辑可以从这里修改
        pub async fn user_after_keep_alive(
            &mut self,
            request: impl tonic::IntoRequest<super::UserAfterKeepAliveReq>,
        ) -> std::result::Result<
            tonic::Response<super::UserAfterKeepAliveResp>,
            tonic::Status,
        > {
            self.inner
                .ready()
                .await
                .map_err(|e| {
                    tonic::Status::new(
                        tonic::Code::Unknown,
                        format!("Service was not ready: {}", e.into()),
                    )
                })?;
            let codec = tonic::codec::ProstCodec::default();
            let path = http::uri::PathAndQuery::from_static(
                "/pb.callbackService/UserAfterKeepAlive",
            );
            let mut req = request.into_request();
            req.extensions_mut()
                .insert(GrpcMethod::new("pb.callbackService", "UserAfterKeepAlive"));
            self.inner.unary(req, path, codec).await
        }
    }
}
/// Generated server implementations.
pub mod account_service_server {
    #![allow(unused_variables, dead_code, missing_docs, clippy::let_unit_value)]
    use tonic::codegen::*;
    /// Generated trait containing gRPC methods that should be implemented for use with AccountServiceServer.
    #[async_trait]
    pub trait AccountService: Send + Sync + 'static {
        /// UserRegister 用户注册
        /// 二次开发人员可以传递自定义参数 如果不满足你的需求 你可以修改该proto文件
        async fn user_register(
            &self,
            request: tonic::Request<super::UserRegisterReq>,
        ) -> std::result::Result<
            tonic::Response<super::UserRegisterResp>,
            tonic::Status,
        >;
        /// UserDestroy 用户注销
        /// 注销逻辑可以从这里修改
        async fn user_destroy(
            &self,
            request: tonic::Request<super::UserDestroyReq>,
        ) -> std::result::Result<tonic::Response<super::UserDestroyResp>, tonic::Status>;
        /// UserAccessToken 用户登录
        /// 登录逻辑可以从这里修改 默认是密码/手机号登录
        async fn user_access_token(
            &self,
            request: tonic::Request<super::UserAccessTokenReq>,
        ) -> std::result::Result<
            tonic::Response<super::UserAccessTokenResp>,
            tonic::Status,
        >;
        /// RefreshUserAccessToken 刷新用户token
        /// 刷新逻辑可以从这里修改
        async fn refresh_user_access_token(
            &self,
            request: tonic::Request<super::RefreshUserAccessTokenReq>,
        ) -> std::result::Result<
            tonic::Response<super::RefreshUserAccessTokenResp>,
            tonic::Status,
        >;
        /// RevokeUserAccessToken 注销用户token
        /// 注销逻辑可以从这里修改
        async fn revoke_user_access_token(
            &self,
            request: tonic::Request<super::RevokeUserAccessTokenReq>,
        ) -> std::result::Result<
            tonic::Response<super::RevokeUserAccessTokenResp>,
            tonic::Status,
        >;
        /// UpdateUserAccountMap 更新用户账号信息
        /// 更新账号信息逻辑可以从这里修改 默认：如果是修改密码，需要旧密码或手机验证码。如果修改绑定手机号，需要验证新手机号的验证码
        async fn update_user_account_map(
            &self,
            request: tonic::Request<super::UpdateUserAccountMapReq>,
        ) -> std::result::Result<
            tonic::Response<super::UpdateUserAccountMapResp>,
            tonic::Status,
        >;
        /// ResetUserAccountMap 重置用户账号信息
        /// 重置账号信息逻辑可以从这里修改
        async fn reset_user_account_map(
            &self,
            request: tonic::Request<super::ResetUserAccountMapReq>,
        ) -> std::result::Result<
            tonic::Response<super::ResetUserAccountMapResp>,
            tonic::Status,
        >;
        /// CreateRobot 创建机器人
        /// 创建机器人逻辑可以从这里修改
        async fn create_robot(
            &self,
            request: tonic::Request<super::CreateRobotReq>,
        ) -> std::result::Result<tonic::Response<super::CreateRobotResp>, tonic::Status>;
    }
    #[derive(Debug)]
    pub struct AccountServiceServer<T: AccountService> {
        inner: _Inner<T>,
        accept_compression_encodings: EnabledCompressionEncodings,
        send_compression_encodings: EnabledCompressionEncodings,
        max_decoding_message_size: Option<usize>,
        max_encoding_message_size: Option<usize>,
    }
    struct _Inner<T>(Arc<T>);
    impl<T: AccountService> AccountServiceServer<T> {
        pub fn new(inner: T) -> Self {
            Self::from_arc(Arc::new(inner))
        }
        pub fn from_arc(inner: Arc<T>) -> Self {
            let inner = _Inner(inner);
            Self {
                inner,
                accept_compression_encodings: Default::default(),
                send_compression_encodings: Default::default(),
                max_decoding_message_size: None,
                max_encoding_message_size: None,
            }
        }
        pub fn with_interceptor<F>(
            inner: T,
            interceptor: F,
        ) -> InterceptedService<Self, F>
        where
            F: tonic::service::Interceptor,
        {
            InterceptedService::new(Self::new(inner), interceptor)
        }
        /// Enable decompressing requests with the given encoding.
        #[must_use]
        pub fn accept_compressed(mut self, encoding: CompressionEncoding) -> Self {
            self.accept_compression_encodings.enable(encoding);
            self
        }
        /// Compress responses with the given encoding, if the client supports it.
        #[must_use]
        pub fn send_compressed(mut self, encoding: CompressionEncoding) -> Self {
            self.send_compression_encodings.enable(encoding);
            self
        }
        /// Limits the maximum size of a decoded message.
        ///
        /// Default: `4MB`
        #[must_use]
        pub fn max_decoding_message_size(mut self, limit: usize) -> Self {
            self.max_decoding_message_size = Some(limit);
            self
        }
        /// Limits the maximum size of an encoded message.
        ///
        /// Default: `usize::MAX`
        #[must_use]
        pub fn max_encoding_message_size(mut self, limit: usize) -> Self {
            self.max_encoding_message_size = Some(limit);
            self
        }
    }
    impl<T, B> tonic::codegen::Service<http::Request<B>> for AccountServiceServer<T>
    where
        T: AccountService,
        B: Body + Send + 'static,
        B::Error: Into<StdError> + Send + 'static,
    {
        type Response = http::Response<tonic::body::BoxBody>;
        type Error = std::convert::Infallible;
        type Future = BoxFuture<Self::Response, Self::Error>;
        fn poll_ready(
            &mut self,
            _cx: &mut Context<'_>,
        ) -> Poll<std::result::Result<(), Self::Error>> {
            Poll::Ready(Ok(()))
        }
        fn call(&mut self, req: http::Request<B>) -> Self::Future {
            let inner = self.inner.clone();
            match req.uri().path() {
                "/pb.accountService/UserRegister" => {
                    #[allow(non_camel_case_types)]
                    struct UserRegisterSvc<T: AccountService>(pub Arc<T>);
                    impl<
                        T: AccountService,
                    > tonic::server::UnaryService<super::UserRegisterReq>
                    for UserRegisterSvc<T> {
                        type Response = super::UserRegisterResp;
                        type Future = BoxFuture<
                            tonic::Response<Self::Response>,
                            tonic::Status,
                        >;
                        fn call(
                            &mut self,
                            request: tonic::Request<super::UserRegisterReq>,
                        ) -> Self::Future {
                            let inner = Arc::clone(&self.0);
                            let fut = async move {
                                (*inner).user_register(request).await
                            };
                            Box::pin(fut)
                        }
                    }
                    let accept_compression_encodings = self.accept_compression_encodings;
                    let send_compression_encodings = self.send_compression_encodings;
                    let max_decoding_message_size = self.max_decoding_message_size;
                    let max_encoding_message_size = self.max_encoding_message_size;
                    let inner = self.inner.clone();
                    let fut = async move {
                        let inner = inner.0;
                        let method = UserRegisterSvc(inner);
                        let codec = tonic::codec::ProstCodec::default();
                        let mut grpc = tonic::server::Grpc::new(codec)
                            .apply_compression_config(
                                accept_compression_encodings,
                                send_compression_encodings,
                            )
                            .apply_max_message_size_config(
                                max_decoding_message_size,
                                max_encoding_message_size,
                            );
                        let res = grpc.unary(method, req).await;
                        Ok(res)
                    };
                    Box::pin(fut)
                }
                "/pb.accountService/UserDestroy" => {
                    #[allow(non_camel_case_types)]
                    struct UserDestroySvc<T: AccountService>(pub Arc<T>);
                    impl<
                        T: AccountService,
                    > tonic::server::UnaryService<super::UserDestroyReq>
                    for UserDestroySvc<T> {
                        type Response = super::UserDestroyResp;
                        type Future = BoxFuture<
                            tonic::Response<Self::Response>,
                            tonic::Status,
                        >;
                        fn call(
                            &mut self,
                            request: tonic::Request<super::UserDestroyReq>,
                        ) -> Self::Future {
                            let inner = Arc::clone(&self.0);
                            let fut = async move {
                                (*inner).user_destroy(request).await
                            };
                            Box::pin(fut)
                        }
                    }
                    let accept_compression_encodings = self.accept_compression_encodings;
                    let send_compression_encodings = self.send_compression_encodings;
                    let max_decoding_message_size = self.max_decoding_message_size;
                    let max_encoding_message_size = self.max_encoding_message_size;
                    let inner = self.inner.clone();
                    let fut = async move {
                        let inner = inner.0;
                        let method = UserDestroySvc(inner);
                        let codec = tonic::codec::ProstCodec::default();
                        let mut grpc = tonic::server::Grpc::new(codec)
                            .apply_compression_config(
                                accept_compression_encodings,
                                send_compression_encodings,
                            )
                            .apply_max_message_size_config(
                                max_decoding_message_size,
                                max_encoding_message_size,
                            );
                        let res = grpc.unary(method, req).await;
                        Ok(res)
                    };
                    Box::pin(fut)
                }
                "/pb.accountService/UserAccessToken" => {
                    #[allow(non_camel_case_types)]
                    struct UserAccessTokenSvc<T: AccountService>(pub Arc<T>);
                    impl<
                        T: AccountService,
                    > tonic::server::UnaryService<super::UserAccessTokenReq>
                    for UserAccessTokenSvc<T> {
                        type Response = super::UserAccessTokenResp;
                        type Future = BoxFuture<
                            tonic::Response<Self::Response>,
                            tonic::Status,
                        >;
                        fn call(
                            &mut self,
                            request: tonic::Request<super::UserAccessTokenReq>,
                        ) -> Self::Future {
                            let inner = Arc::clone(&self.0);
                            let fut = async move {
                                (*inner).user_access_token(request).await
                            };
                            Box::pin(fut)
                        }
                    }
                    let accept_compression_encodings = self.accept_compression_encodings;
                    let send_compression_encodings = self.send_compression_encodings;
                    let max_decoding_message_size = self.max_decoding_message_size;
                    let max_encoding_message_size = self.max_encoding_message_size;
                    let inner = self.inner.clone();
                    let fut = async move {
                        let inner = inner.0;
                        let method = UserAccessTokenSvc(inner);
                        let codec = tonic::codec::ProstCodec::default();
                        let mut grpc = tonic::server::Grpc::new(codec)
                            .apply_compression_config(
                                accept_compression_encodings,
                                send_compression_encodings,
                            )
                            .apply_max_message_size_config(
                                max_decoding_message_size,
                                max_encoding_message_size,
                            );
                        let res = grpc.unary(method, req).await;
                        Ok(res)
                    };
                    Box::pin(fut)
                }
                "/pb.accountService/RefreshUserAccessToken" => {
                    #[allow(non_camel_case_types)]
                    struct RefreshUserAccessTokenSvc<T: AccountService>(pub Arc<T>);
                    impl<
                        T: AccountService,
                    > tonic::server::UnaryService<super::RefreshUserAccessTokenReq>
                    for RefreshUserAccessTokenSvc<T> {
                        type Response = super::RefreshUserAccessTokenResp;
                        type Future = BoxFuture<
                            tonic::Response<Self::Response>,
                            tonic::Status,
                        >;
                        fn call(
                            &mut self,
                            request: tonic::Request<super::RefreshUserAccessTokenReq>,
                        ) -> Self::Future {
                            let inner = Arc::clone(&self.0);
                            let fut = async move {
                                (*inner).refresh_user_access_token(request).await
                            };
                            Box::pin(fut)
                        }
                    }
                    let accept_compression_encodings = self.accept_compression_encodings;
                    let send_compression_encodings = self.send_compression_encodings;
                    let max_decoding_message_size = self.max_decoding_message_size;
                    let max_encoding_message_size = self.max_encoding_message_size;
                    let inner = self.inner.clone();
                    let fut = async move {
                        let inner = inner.0;
                        let method = RefreshUserAccessTokenSvc(inner);
                        let codec = tonic::codec::ProstCodec::default();
                        let mut grpc = tonic::server::Grpc::new(codec)
                            .apply_compression_config(
                                accept_compression_encodings,
                                send_compression_encodings,
                            )
                            .apply_max_message_size_config(
                                max_decoding_message_size,
                                max_encoding_message_size,
                            );
                        let res = grpc.unary(method, req).await;
                        Ok(res)
                    };
                    Box::pin(fut)
                }
                "/pb.accountService/RevokeUserAccessToken" => {
                    #[allow(non_camel_case_types)]
                    struct RevokeUserAccessTokenSvc<T: AccountService>(pub Arc<T>);
                    impl<
                        T: AccountService,
                    > tonic::server::UnaryService<super::RevokeUserAccessTokenReq>
                    for RevokeUserAccessTokenSvc<T> {
                        type Response = super::RevokeUserAccessTokenResp;
                        type Future = BoxFuture<
                            tonic::Response<Self::Response>,
                            tonic::Status,
                        >;
                        fn call(
                            &mut self,
                            request: tonic::Request<super::RevokeUserAccessTokenReq>,
                        ) -> Self::Future {
                            let inner = Arc::clone(&self.0);
                            let fut = async move {
                                (*inner).revoke_user_access_token(request).await
                            };
                            Box::pin(fut)
                        }
                    }
                    let accept_compression_encodings = self.accept_compression_encodings;
                    let send_compression_encodings = self.send_compression_encodings;
                    let max_decoding_message_size = self.max_decoding_message_size;
                    let max_encoding_message_size = self.max_encoding_message_size;
                    let inner = self.inner.clone();
                    let fut = async move {
                        let inner = inner.0;
                        let method = RevokeUserAccessTokenSvc(inner);
                        let codec = tonic::codec::ProstCodec::default();
                        let mut grpc = tonic::server::Grpc::new(codec)
                            .apply_compression_config(
                                accept_compression_encodings,
                                send_compression_encodings,
                            )
                            .apply_max_message_size_config(
                                max_decoding_message_size,
                                max_encoding_message_size,
                            );
                        let res = grpc.unary(method, req).await;
                        Ok(res)
                    };
                    Box::pin(fut)
                }
                "/pb.accountService/UpdateUserAccountMap" => {
                    #[allow(non_camel_case_types)]
                    struct UpdateUserAccountMapSvc<T: AccountService>(pub Arc<T>);
                    impl<
                        T: AccountService,
                    > tonic::server::UnaryService<super::UpdateUserAccountMapReq>
                    for UpdateUserAccountMapSvc<T> {
                        type Response = super::UpdateUserAccountMapResp;
                        type Future = BoxFuture<
                            tonic::Response<Self::Response>,
                            tonic::Status,
                        >;
                        fn call(
                            &mut self,
                            request: tonic::Request<super::UpdateUserAccountMapReq>,
                        ) -> Self::Future {
                            let inner = Arc::clone(&self.0);
                            let fut = async move {
                                (*inner).update_user_account_map(request).await
                            };
                            Box::pin(fut)
                        }
                    }
                    let accept_compression_encodings = self.accept_compression_encodings;
                    let send_compression_encodings = self.send_compression_encodings;
                    let max_decoding_message_size = self.max_decoding_message_size;
                    let max_encoding_message_size = self.max_encoding_message_size;
                    let inner = self.inner.clone();
                    let fut = async move {
                        let inner = inner.0;
                        let method = UpdateUserAccountMapSvc(inner);
                        let codec = tonic::codec::ProstCodec::default();
                        let mut grpc = tonic::server::Grpc::new(codec)
                            .apply_compression_config(
                                accept_compression_encodings,
                                send_compression_encodings,
                            )
                            .apply_max_message_size_config(
                                max_decoding_message_size,
                                max_encoding_message_size,
                            );
                        let res = grpc.unary(method, req).await;
                        Ok(res)
                    };
                    Box::pin(fut)
                }
                "/pb.accountService/ResetUserAccountMap" => {
                    #[allow(non_camel_case_types)]
                    struct ResetUserAccountMapSvc<T: AccountService>(pub Arc<T>);
                    impl<
                        T: AccountService,
                    > tonic::server::UnaryService<super::ResetUserAccountMapReq>
                    for ResetUserAccountMapSvc<T> {
                        type Response = super::ResetUserAccountMapResp;
                        type Future = BoxFuture<
                            tonic::Response<Self::Response>,
                            tonic::Status,
                        >;
                        fn call(
                            &mut self,
                            request: tonic::Request<super::ResetUserAccountMapReq>,
                        ) -> Self::Future {
                            let inner = Arc::clone(&self.0);
                            let fut = async move {
                                (*inner).reset_user_account_map(request).await
                            };
                            Box::pin(fut)
                        }
                    }
                    let accept_compression_encodings = self.accept_compression_encodings;
                    let send_compression_encodings = self.send_compression_encodings;
                    let max_decoding_message_size = self.max_decoding_message_size;
                    let max_encoding_message_size = self.max_encoding_message_size;
                    let inner = self.inner.clone();
                    let fut = async move {
                        let inner = inner.0;
                        let method = ResetUserAccountMapSvc(inner);
                        let codec = tonic::codec::ProstCodec::default();
                        let mut grpc = tonic::server::Grpc::new(codec)
                            .apply_compression_config(
                                accept_compression_encodings,
                                send_compression_encodings,
                            )
                            .apply_max_message_size_config(
                                max_decoding_message_size,
                                max_encoding_message_size,
                            );
                        let res = grpc.unary(method, req).await;
                        Ok(res)
                    };
                    Box::pin(fut)
                }
                "/pb.accountService/CreateRobot" => {
                    #[allow(non_camel_case_types)]
                    struct CreateRobotSvc<T: AccountService>(pub Arc<T>);
                    impl<
                        T: AccountService,
                    > tonic::server::UnaryService<super::CreateRobotReq>
                    for CreateRobotSvc<T> {
                        type Response = super::CreateRobotResp;
                        type Future = BoxFuture<
                            tonic::Response<Self::Response>,
                            tonic::Status,
                        >;
                        fn call(
                            &mut self,
                            request: tonic::Request<super::CreateRobotReq>,
                        ) -> Self::Future {
                            let inner = Arc::clone(&self.0);
                            let fut = async move {
                                (*inner).create_robot(request).await
                            };
                            Box::pin(fut)
                        }
                    }
                    let accept_compression_encodings = self.accept_compression_encodings;
                    let send_compression_encodings = self.send_compression_encodings;
                    let max_decoding_message_size = self.max_decoding_message_size;
                    let max_encoding_message_size = self.max_encoding_message_size;
                    let inner = self.inner.clone();
                    let fut = async move {
                        let inner = inner.0;
                        let method = CreateRobotSvc(inner);
                        let codec = tonic::codec::ProstCodec::default();
                        let mut grpc = tonic::server::Grpc::new(codec)
                            .apply_compression_config(
                                accept_compression_encodings,
                                send_compression_encodings,
                            )
                            .apply_max_message_size_config(
                                max_decoding_message_size,
                                max_encoding_message_size,
                            );
                        let res = grpc.unary(method, req).await;
                        Ok(res)
                    };
                    Box::pin(fut)
                }
                _ => {
                    Box::pin(async move {
                        Ok(
                            http::Response::builder()
                                .status(200)
                                .header("grpc-status", "12")
                                .header("content-type", "application/grpc")
                                .body(empty_body())
                                .unwrap(),
                        )
                    })
                }
            }
        }
    }
    impl<T: AccountService> Clone for AccountServiceServer<T> {
        fn clone(&self) -> Self {
            let inner = self.inner.clone();
            Self {
                inner,
                accept_compression_encodings: self.accept_compression_encodings,
                send_compression_encodings: self.send_compression_encodings,
                max_decoding_message_size: self.max_decoding_message_size,
                max_encoding_message_size: self.max_encoding_message_size,
            }
        }
    }
    impl<T: AccountService> Clone for _Inner<T> {
        fn clone(&self) -> Self {
            Self(Arc::clone(&self.0))
        }
    }
    impl<T: std::fmt::Debug> std::fmt::Debug for _Inner<T> {
        fn fmt(&self, f: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
            write!(f, "{:?}", self.0)
        }
    }
    impl<T: AccountService> tonic::server::NamedService for AccountServiceServer<T> {
        const NAME: &'static str = "pb.accountService";
    }
}
/// Generated server implementations.
pub mod info_service_server {
    #![allow(unused_variables, dead_code, missing_docs, clippy::let_unit_value)]
    use tonic::codegen::*;
    /// Generated trait containing gRPC methods that should be implemented for use with InfoServiceServer.
    #[async_trait]
    pub trait InfoService: Send + Sync + 'static {
        /// UpdateUserProfileMap 更新用户个人信息
        /// 更新个人信息逻辑可以从这里修改
        async fn update_user_profile_map(
            &self,
            request: tonic::Request<super::UpdateUserProfileMapReq>,
        ) -> std::result::Result<
            tonic::Response<super::UpdateUserProfileMapResp>,
            tonic::Status,
        >;
        /// UpdateUserExtraMap 更新用户扩展信息
        /// 更新扩展信息逻辑可以从这里修改
        async fn update_user_extra_map(
            &self,
            request: tonic::Request<super::UpdateUserExtraMapReq>,
        ) -> std::result::Result<
            tonic::Response<super::UpdateUserExtraMapResp>,
            tonic::Status,
        >;
        /// UpdateUserCountMap 更新用户计数信息
        /// 更新计数信息逻辑可以从这里修改
        async fn update_user_count_map(
            &self,
            request: tonic::Request<super::UpdateUserCountMapReq>,
        ) -> std::result::Result<
            tonic::Response<super::UpdateUserCountMapResp>,
            tonic::Status,
        >;
        /// GetSelfUserInfo 获取自己的用户信息
        /// 获取自己的用户信息逻辑可以从这里修改
        async fn get_self_user_info(
            &self,
            request: tonic::Request<super::GetSelfUserInfoReq>,
        ) -> std::result::Result<
            tonic::Response<super::GetSelfUserInfoResp>,
            tonic::Status,
        >;
        /// GetUserInfo 获取用户信息
        /// 获取用户信息逻辑可以从这里修改
        async fn get_user_info(
            &self,
            request: tonic::Request<super::GetUserInfoReq>,
        ) -> std::result::Result<tonic::Response<super::GetUserInfoResp>, tonic::Status>;
        /// GetUserModelById 获取用户模型
        /// 获取用户模型逻辑可以从这里修改
        async fn get_user_model_by_id(
            &self,
            request: tonic::Request<super::GetUserModelByIdReq>,
        ) -> std::result::Result<
            tonic::Response<super::GetUserModelByIdResp>,
            tonic::Status,
        >;
        /// GetUserModelByIds 批量获取用户模型
        /// 批量获取用户模型逻辑可以从这里修改
        async fn get_user_model_by_ids(
            &self,
            request: tonic::Request<super::GetUserModelByIdsReq>,
        ) -> std::result::Result<
            tonic::Response<super::GetUserModelByIdsResp>,
            tonic::Status,
        >;
    }
    #[derive(Debug)]
    pub struct InfoServiceServer<T: InfoService> {
        inner: _Inner<T>,
        accept_compression_encodings: EnabledCompressionEncodings,
        send_compression_encodings: EnabledCompressionEncodings,
        max_decoding_message_size: Option<usize>,
        max_encoding_message_size: Option<usize>,
    }
    struct _Inner<T>(Arc<T>);
    impl<T: InfoService> InfoServiceServer<T> {
        pub fn new(inner: T) -> Self {
            Self::from_arc(Arc::new(inner))
        }
        pub fn from_arc(inner: Arc<T>) -> Self {
            let inner = _Inner(inner);
            Self {
                inner,
                accept_compression_encodings: Default::default(),
                send_compression_encodings: Default::default(),
                max_decoding_message_size: None,
                max_encoding_message_size: None,
            }
        }
        pub fn with_interceptor<F>(
            inner: T,
            interceptor: F,
        ) -> InterceptedService<Self, F>
        where
            F: tonic::service::Interceptor,
        {
            InterceptedService::new(Self::new(inner), interceptor)
        }
        /// Enable decompressing requests with the given encoding.
        #[must_use]
        pub fn accept_compressed(mut self, encoding: CompressionEncoding) -> Self {
            self.accept_compression_encodings.enable(encoding);
            self
        }
        /// Compress responses with the given encoding, if the client supports it.
        #[must_use]
        pub fn send_compressed(mut self, encoding: CompressionEncoding) -> Self {
            self.send_compression_encodings.enable(encoding);
            self
        }
        /// Limits the maximum size of a decoded message.
        ///
        /// Default: `4MB`
        #[must_use]
        pub fn max_decoding_message_size(mut self, limit: usize) -> Self {
            self.max_decoding_message_size = Some(limit);
            self
        }
        /// Limits the maximum size of an encoded message.
        ///
        /// Default: `usize::MAX`
        #[must_use]
        pub fn max_encoding_message_size(mut self, limit: usize) -> Self {
            self.max_encoding_message_size = Some(limit);
            self
        }
    }
    impl<T, B> tonic::codegen::Service<http::Request<B>> for InfoServiceServer<T>
    where
        T: InfoService,
        B: Body + Send + 'static,
        B::Error: Into<StdError> + Send + 'static,
    {
        type Response = http::Response<tonic::body::BoxBody>;
        type Error = std::convert::Infallible;
        type Future = BoxFuture<Self::Response, Self::Error>;
        fn poll_ready(
            &mut self,
            _cx: &mut Context<'_>,
        ) -> Poll<std::result::Result<(), Self::Error>> {
            Poll::Ready(Ok(()))
        }
        fn call(&mut self, req: http::Request<B>) -> Self::Future {
            let inner = self.inner.clone();
            match req.uri().path() {
                "/pb.infoService/UpdateUserProfileMap" => {
                    #[allow(non_camel_case_types)]
                    struct UpdateUserProfileMapSvc<T: InfoService>(pub Arc<T>);
                    impl<
                        T: InfoService,
                    > tonic::server::UnaryService<super::UpdateUserProfileMapReq>
                    for UpdateUserProfileMapSvc<T> {
                        type Response = super::UpdateUserProfileMapResp;
                        type Future = BoxFuture<
                            tonic::Response<Self::Response>,
                            tonic::Status,
                        >;
                        fn call(
                            &mut self,
                            request: tonic::Request<super::UpdateUserProfileMapReq>,
                        ) -> Self::Future {
                            let inner = Arc::clone(&self.0);
                            let fut = async move {
                                (*inner).update_user_profile_map(request).await
                            };
                            Box::pin(fut)
                        }
                    }
                    let accept_compression_encodings = self.accept_compression_encodings;
                    let send_compression_encodings = self.send_compression_encodings;
                    let max_decoding_message_size = self.max_decoding_message_size;
                    let max_encoding_message_size = self.max_encoding_message_size;
                    let inner = self.inner.clone();
                    let fut = async move {
                        let inner = inner.0;
                        let method = UpdateUserProfileMapSvc(inner);
                        let codec = tonic::codec::ProstCodec::default();
                        let mut grpc = tonic::server::Grpc::new(codec)
                            .apply_compression_config(
                                accept_compression_encodings,
                                send_compression_encodings,
                            )
                            .apply_max_message_size_config(
                                max_decoding_message_size,
                                max_encoding_message_size,
                            );
                        let res = grpc.unary(method, req).await;
                        Ok(res)
                    };
                    Box::pin(fut)
                }
                "/pb.infoService/UpdateUserExtraMap" => {
                    #[allow(non_camel_case_types)]
                    struct UpdateUserExtraMapSvc<T: InfoService>(pub Arc<T>);
                    impl<
                        T: InfoService,
                    > tonic::server::UnaryService<super::UpdateUserExtraMapReq>
                    for UpdateUserExtraMapSvc<T> {
                        type Response = super::UpdateUserExtraMapResp;
                        type Future = BoxFuture<
                            tonic::Response<Self::Response>,
                            tonic::Status,
                        >;
                        fn call(
                            &mut self,
                            request: tonic::Request<super::UpdateUserExtraMapReq>,
                        ) -> Self::Future {
                            let inner = Arc::clone(&self.0);
                            let fut = async move {
                                (*inner).update_user_extra_map(request).await
                            };
                            Box::pin(fut)
                        }
                    }
                    let accept_compression_encodings = self.accept_compression_encodings;
                    let send_compression_encodings = self.send_compression_encodings;
                    let max_decoding_message_size = self.max_decoding_message_size;
                    let max_encoding_message_size = self.max_encoding_message_size;
                    let inner = self.inner.clone();
                    let fut = async move {
                        let inner = inner.0;
                        let method = UpdateUserExtraMapSvc(inner);
                        let codec = tonic::codec::ProstCodec::default();
                        let mut grpc = tonic::server::Grpc::new(codec)
                            .apply_compression_config(
                                accept_compression_encodings,
                                send_compression_encodings,
                            )
                            .apply_max_message_size_config(
                                max_decoding_message_size,
                                max_encoding_message_size,
                            );
                        let res = grpc.unary(method, req).await;
                        Ok(res)
                    };
                    Box::pin(fut)
                }
                "/pb.infoService/UpdateUserCountMap" => {
                    #[allow(non_camel_case_types)]
                    struct UpdateUserCountMapSvc<T: InfoService>(pub Arc<T>);
                    impl<
                        T: InfoService,
                    > tonic::server::UnaryService<super::UpdateUserCountMapReq>
                    for UpdateUserCountMapSvc<T> {
                        type Response = super::UpdateUserCountMapResp;
                        type Future = BoxFuture<
                            tonic::Response<Self::Response>,
                            tonic::Status,
                        >;
                        fn call(
                            &mut self,
                            request: tonic::Request<super::UpdateUserCountMapReq>,
                        ) -> Self::Future {
                            let inner = Arc::clone(&self.0);
                            let fut = async move {
                                (*inner).update_user_count_map(request).await
                            };
                            Box::pin(fut)
                        }
                    }
                    let accept_compression_encodings = self.accept_compression_encodings;
                    let send_compression_encodings = self.send_compression_encodings;
                    let max_decoding_message_size = self.max_decoding_message_size;
                    let max_encoding_message_size = self.max_encoding_message_size;
                    let inner = self.inner.clone();
                    let fut = async move {
                        let inner = inner.0;
                        let method = UpdateUserCountMapSvc(inner);
                        let codec = tonic::codec::ProstCodec::default();
                        let mut grpc = tonic::server::Grpc::new(codec)
                            .apply_compression_config(
                                accept_compression_encodings,
                                send_compression_encodings,
                            )
                            .apply_max_message_size_config(
                                max_decoding_message_size,
                                max_encoding_message_size,
                            );
                        let res = grpc.unary(method, req).await;
                        Ok(res)
                    };
                    Box::pin(fut)
                }
                "/pb.infoService/GetSelfUserInfo" => {
                    #[allow(non_camel_case_types)]
                    struct GetSelfUserInfoSvc<T: InfoService>(pub Arc<T>);
                    impl<
                        T: InfoService,
                    > tonic::server::UnaryService<super::GetSelfUserInfoReq>
                    for GetSelfUserInfoSvc<T> {
                        type Response = super::GetSelfUserInfoResp;
                        type Future = BoxFuture<
                            tonic::Response<Self::Response>,
                            tonic::Status,
                        >;
                        fn call(
                            &mut self,
                            request: tonic::Request<super::GetSelfUserInfoReq>,
                        ) -> Self::Future {
                            let inner = Arc::clone(&self.0);
                            let fut = async move {
                                (*inner).get_self_user_info(request).await
                            };
                            Box::pin(fut)
                        }
                    }
                    let accept_compression_encodings = self.accept_compression_encodings;
                    let send_compression_encodings = self.send_compression_encodings;
                    let max_decoding_message_size = self.max_decoding_message_size;
                    let max_encoding_message_size = self.max_encoding_message_size;
                    let inner = self.inner.clone();
                    let fut = async move {
                        let inner = inner.0;
                        let method = GetSelfUserInfoSvc(inner);
                        let codec = tonic::codec::ProstCodec::default();
                        let mut grpc = tonic::server::Grpc::new(codec)
                            .apply_compression_config(
                                accept_compression_encodings,
                                send_compression_encodings,
                            )
                            .apply_max_message_size_config(
                                max_decoding_message_size,
                                max_encoding_message_size,
                            );
                        let res = grpc.unary(method, req).await;
                        Ok(res)
                    };
                    Box::pin(fut)
                }
                "/pb.infoService/GetUserInfo" => {
                    #[allow(non_camel_case_types)]
                    struct GetUserInfoSvc<T: InfoService>(pub Arc<T>);
                    impl<
                        T: InfoService,
                    > tonic::server::UnaryService<super::GetUserInfoReq>
                    for GetUserInfoSvc<T> {
                        type Response = super::GetUserInfoResp;
                        type Future = BoxFuture<
                            tonic::Response<Self::Response>,
                            tonic::Status,
                        >;
                        fn call(
                            &mut self,
                            request: tonic::Request<super::GetUserInfoReq>,
                        ) -> Self::Future {
                            let inner = Arc::clone(&self.0);
                            let fut = async move {
                                (*inner).get_user_info(request).await
                            };
                            Box::pin(fut)
                        }
                    }
                    let accept_compression_encodings = self.accept_compression_encodings;
                    let send_compression_encodings = self.send_compression_encodings;
                    let max_decoding_message_size = self.max_decoding_message_size;
                    let max_encoding_message_size = self.max_encoding_message_size;
                    let inner = self.inner.clone();
                    let fut = async move {
                        let inner = inner.0;
                        let method = GetUserInfoSvc(inner);
                        let codec = tonic::codec::ProstCodec::default();
                        let mut grpc = tonic::server::Grpc::new(codec)
                            .apply_compression_config(
                                accept_compression_encodings,
                                send_compression_encodings,
                            )
                            .apply_max_message_size_config(
                                max_decoding_message_size,
                                max_encoding_message_size,
                            );
                        let res = grpc.unary(method, req).await;
                        Ok(res)
                    };
                    Box::pin(fut)
                }
                "/pb.infoService/GetUserModelById" => {
                    #[allow(non_camel_case_types)]
                    struct GetUserModelByIdSvc<T: InfoService>(pub Arc<T>);
                    impl<
                        T: InfoService,
                    > tonic::server::UnaryService<super::GetUserModelByIdReq>
                    for GetUserModelByIdSvc<T> {
                        type Response = super::GetUserModelByIdResp;
                        type Future = BoxFuture<
                            tonic::Response<Self::Response>,
                            tonic::Status,
                        >;
                        fn call(
                            &mut self,
                            request: tonic::Request<super::GetUserModelByIdReq>,
                        ) -> Self::Future {
                            let inner = Arc::clone(&self.0);
                            let fut = async move {
                                (*inner).get_user_model_by_id(request).await
                            };
                            Box::pin(fut)
                        }
                    }
                    let accept_compression_encodings = self.accept_compression_encodings;
                    let send_compression_encodings = self.send_compression_encodings;
                    let max_decoding_message_size = self.max_decoding_message_size;
                    let max_encoding_message_size = self.max_encoding_message_size;
                    let inner = self.inner.clone();
                    let fut = async move {
                        let inner = inner.0;
                        let method = GetUserModelByIdSvc(inner);
                        let codec = tonic::codec::ProstCodec::default();
                        let mut grpc = tonic::server::Grpc::new(codec)
                            .apply_compression_config(
                                accept_compression_encodings,
                                send_compression_encodings,
                            )
                            .apply_max_message_size_config(
                                max_decoding_message_size,
                                max_encoding_message_size,
                            );
                        let res = grpc.unary(method, req).await;
                        Ok(res)
                    };
                    Box::pin(fut)
                }
                "/pb.infoService/GetUserModelByIds" => {
                    #[allow(non_camel_case_types)]
                    struct GetUserModelByIdsSvc<T: InfoService>(pub Arc<T>);
                    impl<
                        T: InfoService,
                    > tonic::server::UnaryService<super::GetUserModelByIdsReq>
                    for GetUserModelByIdsSvc<T> {
                        type Response = super::GetUserModelByIdsResp;
                        type Future = BoxFuture<
                            tonic::Response<Self::Response>,
                            tonic::Status,
                        >;
                        fn call(
                            &mut self,
                            request: tonic::Request<super::GetUserModelByIdsReq>,
                        ) -> Self::Future {
                            let inner = Arc::clone(&self.0);
                            let fut = async move {
                                (*inner).get_user_model_by_ids(request).await
                            };
                            Box::pin(fut)
                        }
                    }
                    let accept_compression_encodings = self.accept_compression_encodings;
                    let send_compression_encodings = self.send_compression_encodings;
                    let max_decoding_message_size = self.max_decoding_message_size;
                    let max_encoding_message_size = self.max_encoding_message_size;
                    let inner = self.inner.clone();
                    let fut = async move {
                        let inner = inner.0;
                        let method = GetUserModelByIdsSvc(inner);
                        let codec = tonic::codec::ProstCodec::default();
                        let mut grpc = tonic::server::Grpc::new(codec)
                            .apply_compression_config(
                                accept_compression_encodings,
                                send_compression_encodings,
                            )
                            .apply_max_message_size_config(
                                max_decoding_message_size,
                                max_encoding_message_size,
                            );
                        let res = grpc.unary(method, req).await;
                        Ok(res)
                    };
                    Box::pin(fut)
                }
                _ => {
                    Box::pin(async move {
                        Ok(
                            http::Response::builder()
                                .status(200)
                                .header("grpc-status", "12")
                                .header("content-type", "application/grpc")
                                .body(empty_body())
                                .unwrap(),
                        )
                    })
                }
            }
        }
    }
    impl<T: InfoService> Clone for InfoServiceServer<T> {
        fn clone(&self) -> Self {
            let inner = self.inner.clone();
            Self {
                inner,
                accept_compression_encodings: self.accept_compression_encodings,
                send_compression_encodings: self.send_compression_encodings,
                max_decoding_message_size: self.max_decoding_message_size,
                max_encoding_message_size: self.max_encoding_message_size,
            }
        }
    }
    impl<T: InfoService> Clone for _Inner<T> {
        fn clone(&self) -> Self {
            Self(Arc::clone(&self.0))
        }
    }
    impl<T: std::fmt::Debug> std::fmt::Debug for _Inner<T> {
        fn fmt(&self, f: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
            write!(f, "{:?}", self.0)
        }
    }
    impl<T: InfoService> tonic::server::NamedService for InfoServiceServer<T> {
        const NAME: &'static str = "pb.infoService";
    }
}
/// Generated server implementations.
pub mod callback_service_server {
    #![allow(unused_variables, dead_code, missing_docs, clippy::let_unit_value)]
    use tonic::codegen::*;
    /// Generated trait containing gRPC methods that should be implemented for use with CallbackServiceServer.
    #[async_trait]
    pub trait CallbackService: Send + Sync + 'static {
        /// UserAfterOnline 用户上线回调
        /// 用户上线回调逻辑可以从这里修改
        async fn user_after_online(
            &self,
            request: tonic::Request<super::UserAfterOnlineReq>,
        ) -> std::result::Result<
            tonic::Response<super::UserAfterOnlineResp>,
            tonic::Status,
        >;
        /// UserAfterOffline 用户下线回调
        /// 用户下线回调逻辑可以从这里修改
        async fn user_after_offline(
            &self,
            request: tonic::Request<super::UserAfterOfflineReq>,
        ) -> std::result::Result<
            tonic::Response<super::UserAfterOfflineResp>,
            tonic::Status,
        >;
        /// UserBeforeConnect 用户连接前的回调
        /// 用户连接前的回调逻辑可以从这里修改
        async fn user_before_connect(
            &self,
            request: tonic::Request<super::UserBeforeConnectReq>,
        ) -> std::result::Result<
            tonic::Response<super::UserBeforeConnectResp>,
            tonic::Status,
        >;
        /// UserBeforeRequest 用户请求前的回调
        /// 用户请求前的回调逻辑可以从这里修改
        async fn user_before_request(
            &self,
            request: tonic::Request<super::UserBeforeRequestReq>,
        ) -> std::result::Result<
            tonic::Response<super::UserBeforeRequestResp>,
            tonic::Status,
        >;
        /// UserAfterKeepAlive 用户保活回调
        /// 用户保活回调逻辑可以从这里修改
        async fn user_after_keep_alive(
            &self,
            request: tonic::Request<super::UserAfterKeepAliveReq>,
        ) -> std::result::Result<
            tonic::Response<super::UserAfterKeepAliveResp>,
            tonic::Status,
        >;
    }
    #[derive(Debug)]
    pub struct CallbackServiceServer<T: CallbackService> {
        inner: _Inner<T>,
        accept_compression_encodings: EnabledCompressionEncodings,
        send_compression_encodings: EnabledCompressionEncodings,
        max_decoding_message_size: Option<usize>,
        max_encoding_message_size: Option<usize>,
    }
    struct _Inner<T>(Arc<T>);
    impl<T: CallbackService> CallbackServiceServer<T> {
        pub fn new(inner: T) -> Self {
            Self::from_arc(Arc::new(inner))
        }
        pub fn from_arc(inner: Arc<T>) -> Self {
            let inner = _Inner(inner);
            Self {
                inner,
                accept_compression_encodings: Default::default(),
                send_compression_encodings: Default::default(),
                max_decoding_message_size: None,
                max_encoding_message_size: None,
            }
        }
        pub fn with_interceptor<F>(
            inner: T,
            interceptor: F,
        ) -> InterceptedService<Self, F>
        where
            F: tonic::service::Interceptor,
        {
            InterceptedService::new(Self::new(inner), interceptor)
        }
        /// Enable decompressing requests with the given encoding.
        #[must_use]
        pub fn accept_compressed(mut self, encoding: CompressionEncoding) -> Self {
            self.accept_compression_encodings.enable(encoding);
            self
        }
        /// Compress responses with the given encoding, if the client supports it.
        #[must_use]
        pub fn send_compressed(mut self, encoding: CompressionEncoding) -> Self {
            self.send_compression_encodings.enable(encoding);
            self
        }
        /// Limits the maximum size of a decoded message.
        ///
        /// Default: `4MB`
        #[must_use]
        pub fn max_decoding_message_size(mut self, limit: usize) -> Self {
            self.max_decoding_message_size = Some(limit);
            self
        }
        /// Limits the maximum size of an encoded message.
        ///
        /// Default: `usize::MAX`
        #[must_use]
        pub fn max_encoding_message_size(mut self, limit: usize) -> Self {
            self.max_encoding_message_size = Some(limit);
            self
        }
    }
    impl<T, B> tonic::codegen::Service<http::Request<B>> for CallbackServiceServer<T>
    where
        T: CallbackService,
        B: Body + Send + 'static,
        B::Error: Into<StdError> + Send + 'static,
    {
        type Response = http::Response<tonic::body::BoxBody>;
        type Error = std::convert::Infallible;
        type Future = BoxFuture<Self::Response, Self::Error>;
        fn poll_ready(
            &mut self,
            _cx: &mut Context<'_>,
        ) -> Poll<std::result::Result<(), Self::Error>> {
            Poll::Ready(Ok(()))
        }
        fn call(&mut self, req: http::Request<B>) -> Self::Future {
            let inner = self.inner.clone();
            match req.uri().path() {
                "/pb.callbackService/UserAfterOnline" => {
                    #[allow(non_camel_case_types)]
                    struct UserAfterOnlineSvc<T: CallbackService>(pub Arc<T>);
                    impl<
                        T: CallbackService,
                    > tonic::server::UnaryService<super::UserAfterOnlineReq>
                    for UserAfterOnlineSvc<T> {
                        type Response = super::UserAfterOnlineResp;
                        type Future = BoxFuture<
                            tonic::Response<Self::Response>,
                            tonic::Status,
                        >;
                        fn call(
                            &mut self,
                            request: tonic::Request<super::UserAfterOnlineReq>,
                        ) -> Self::Future {
                            let inner = Arc::clone(&self.0);
                            let fut = async move {
                                (*inner).user_after_online(request).await
                            };
                            Box::pin(fut)
                        }
                    }
                    let accept_compression_encodings = self.accept_compression_encodings;
                    let send_compression_encodings = self.send_compression_encodings;
                    let max_decoding_message_size = self.max_decoding_message_size;
                    let max_encoding_message_size = self.max_encoding_message_size;
                    let inner = self.inner.clone();
                    let fut = async move {
                        let inner = inner.0;
                        let method = UserAfterOnlineSvc(inner);
                        let codec = tonic::codec::ProstCodec::default();
                        let mut grpc = tonic::server::Grpc::new(codec)
                            .apply_compression_config(
                                accept_compression_encodings,
                                send_compression_encodings,
                            )
                            .apply_max_message_size_config(
                                max_decoding_message_size,
                                max_encoding_message_size,
                            );
                        let res = grpc.unary(method, req).await;
                        Ok(res)
                    };
                    Box::pin(fut)
                }
                "/pb.callbackService/UserAfterOffline" => {
                    #[allow(non_camel_case_types)]
                    struct UserAfterOfflineSvc<T: CallbackService>(pub Arc<T>);
                    impl<
                        T: CallbackService,
                    > tonic::server::UnaryService<super::UserAfterOfflineReq>
                    for UserAfterOfflineSvc<T> {
                        type Response = super::UserAfterOfflineResp;
                        type Future = BoxFuture<
                            tonic::Response<Self::Response>,
                            tonic::Status,
                        >;
                        fn call(
                            &mut self,
                            request: tonic::Request<super::UserAfterOfflineReq>,
                        ) -> Self::Future {
                            let inner = Arc::clone(&self.0);
                            let fut = async move {
                                (*inner).user_after_offline(request).await
                            };
                            Box::pin(fut)
                        }
                    }
                    let accept_compression_encodings = self.accept_compression_encodings;
                    let send_compression_encodings = self.send_compression_encodings;
                    let max_decoding_message_size = self.max_decoding_message_size;
                    let max_encoding_message_size = self.max_encoding_message_size;
                    let inner = self.inner.clone();
                    let fut = async move {
                        let inner = inner.0;
                        let method = UserAfterOfflineSvc(inner);
                        let codec = tonic::codec::ProstCodec::default();
                        let mut grpc = tonic::server::Grpc::new(codec)
                            .apply_compression_config(
                                accept_compression_encodings,
                                send_compression_encodings,
                            )
                            .apply_max_message_size_config(
                                max_decoding_message_size,
                                max_encoding_message_size,
                            );
                        let res = grpc.unary(method, req).await;
                        Ok(res)
                    };
                    Box::pin(fut)
                }
                "/pb.callbackService/UserBeforeConnect" => {
                    #[allow(non_camel_case_types)]
                    struct UserBeforeConnectSvc<T: CallbackService>(pub Arc<T>);
                    impl<
                        T: CallbackService,
                    > tonic::server::UnaryService<super::UserBeforeConnectReq>
                    for UserBeforeConnectSvc<T> {
                        type Response = super::UserBeforeConnectResp;
                        type Future = BoxFuture<
                            tonic::Response<Self::Response>,
                            tonic::Status,
                        >;
                        fn call(
                            &mut self,
                            request: tonic::Request<super::UserBeforeConnectReq>,
                        ) -> Self::Future {
                            let inner = Arc::clone(&self.0);
                            let fut = async move {
                                (*inner).user_before_connect(request).await
                            };
                            Box::pin(fut)
                        }
                    }
                    let accept_compression_encodings = self.accept_compression_encodings;
                    let send_compression_encodings = self.send_compression_encodings;
                    let max_decoding_message_size = self.max_decoding_message_size;
                    let max_encoding_message_size = self.max_encoding_message_size;
                    let inner = self.inner.clone();
                    let fut = async move {
                        let inner = inner.0;
                        let method = UserBeforeConnectSvc(inner);
                        let codec = tonic::codec::ProstCodec::default();
                        let mut grpc = tonic::server::Grpc::new(codec)
                            .apply_compression_config(
                                accept_compression_encodings,
                                send_compression_encodings,
                            )
                            .apply_max_message_size_config(
                                max_decoding_message_size,
                                max_encoding_message_size,
                            );
                        let res = grpc.unary(method, req).await;
                        Ok(res)
                    };
                    Box::pin(fut)
                }
                "/pb.callbackService/UserBeforeRequest" => {
                    #[allow(non_camel_case_types)]
                    struct UserBeforeRequestSvc<T: CallbackService>(pub Arc<T>);
                    impl<
                        T: CallbackService,
                    > tonic::server::UnaryService<super::UserBeforeRequestReq>
                    for UserBeforeRequestSvc<T> {
                        type Response = super::UserBeforeRequestResp;
                        type Future = BoxFuture<
                            tonic::Response<Self::Response>,
                            tonic::Status,
                        >;
                        fn call(
                            &mut self,
                            request: tonic::Request<super::UserBeforeRequestReq>,
                        ) -> Self::Future {
                            let inner = Arc::clone(&self.0);
                            let fut = async move {
                                (*inner).user_before_request(request).await
                            };
                            Box::pin(fut)
                        }
                    }
                    let accept_compression_encodings = self.accept_compression_encodings;
                    let send_compression_encodings = self.send_compression_encodings;
                    let max_decoding_message_size = self.max_decoding_message_size;
                    let max_encoding_message_size = self.max_encoding_message_size;
                    let inner = self.inner.clone();
                    let fut = async move {
                        let inner = inner.0;
                        let method = UserBeforeRequestSvc(inner);
                        let codec = tonic::codec::ProstCodec::default();
                        let mut grpc = tonic::server::Grpc::new(codec)
                            .apply_compression_config(
                                accept_compression_encodings,
                                send_compression_encodings,
                            )
                            .apply_max_message_size_config(
                                max_decoding_message_size,
                                max_encoding_message_size,
                            );
                        let res = grpc.unary(method, req).await;
                        Ok(res)
                    };
                    Box::pin(fut)
                }
                "/pb.callbackService/UserAfterKeepAlive" => {
                    #[allow(non_camel_case_types)]
                    struct UserAfterKeepAliveSvc<T: CallbackService>(pub Arc<T>);
                    impl<
                        T: CallbackService,
                    > tonic::server::UnaryService<super::UserAfterKeepAliveReq>
                    for UserAfterKeepAliveSvc<T> {
                        type Response = super::UserAfterKeepAliveResp;
                        type Future = BoxFuture<
                            tonic::Response<Self::Response>,
                            tonic::Status,
                        >;
                        fn call(
                            &mut self,
                            request: tonic::Request<super::UserAfterKeepAliveReq>,
                        ) -> Self::Future {
                            let inner = Arc::clone(&self.0);
                            let fut = async move {
                                (*inner).user_after_keep_alive(request).await
                            };
                            Box::pin(fut)
                        }
                    }
                    let accept_compression_encodings = self.accept_compression_encodings;
                    let send_compression_encodings = self.send_compression_encodings;
                    let max_decoding_message_size = self.max_decoding_message_size;
                    let max_encoding_message_size = self.max_encoding_message_size;
                    let inner = self.inner.clone();
                    let fut = async move {
                        let inner = inner.0;
                        let method = UserAfterKeepAliveSvc(inner);
                        let codec = tonic::codec::ProstCodec::default();
                        let mut grpc = tonic::server::Grpc::new(codec)
                            .apply_compression_config(
                                accept_compression_encodings,
                                send_compression_encodings,
                            )
                            .apply_max_message_size_config(
                                max_decoding_message_size,
                                max_encoding_message_size,
                            );
                        let res = grpc.unary(method, req).await;
                        Ok(res)
                    };
                    Box::pin(fut)
                }
                _ => {
                    Box::pin(async move {
                        Ok(
                            http::Response::builder()
                                .status(200)
                                .header("grpc-status", "12")
                                .header("content-type", "application/grpc")
                                .body(empty_body())
                                .unwrap(),
                        )
                    })
                }
            }
        }
    }
    impl<T: CallbackService> Clone for CallbackServiceServer<T> {
        fn clone(&self) -> Self {
            let inner = self.inner.clone();
            Self {
                inner,
                accept_compression_encodings: self.accept_compression_encodings,
                send_compression_encodings: self.send_compression_encodings,
                max_decoding_message_size: self.max_decoding_message_size,
                max_encoding_message_size: self.max_encoding_message_size,
            }
        }
    }
    impl<T: CallbackService> Clone for _Inner<T> {
        fn clone(&self) -> Self {
            Self(Arc::clone(&self.0))
        }
    }
    impl<T: std::fmt::Debug> std::fmt::Debug for _Inner<T> {
        fn fmt(&self, f: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
            write!(f, "{:?}", self.0)
        }
    }
    impl<T: CallbackService> tonic::server::NamedService for CallbackServiceServer<T> {
        const NAME: &'static str = "pb.callbackService";
    }
}
#[derive(serde::Serialize, serde::Deserialize)]
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct WorldPostSubmitReq {
    #[prost(message, optional, tag = "1")]
    pub header: ::core::option::Option<RequestHeader>,
}
#[derive(serde::Serialize, serde::Deserialize)]
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct WorldPostSubmitResp {
    #[prost(message, optional, tag = "1")]
    pub header: ::core::option::Option<ResponseHeader>,
}
/// Generated client implementations.
pub mod world_service_client {
    #![allow(unused_variables, dead_code, missing_docs, clippy::let_unit_value)]
    use tonic::codegen::*;
    use tonic::codegen::http::Uri;
    #[derive(Debug, Clone)]
    pub struct WorldServiceClient<T> {
        inner: tonic::client::Grpc<T>,
    }
    impl WorldServiceClient<tonic::transport::Channel> {
        /// Attempt to create a new client by connecting to a given endpoint.
        pub async fn connect<D>(dst: D) -> Result<Self, tonic::transport::Error>
        where
            D: TryInto<tonic::transport::Endpoint>,
            D::Error: Into<StdError>,
        {
            let conn = tonic::transport::Endpoint::new(dst)?.connect().await?;
            Ok(Self::new(conn))
        }
    }
    impl<T> WorldServiceClient<T>
    where
        T: tonic::client::GrpcService<tonic::body::BoxBody>,
        T::Error: Into<StdError>,
        T::ResponseBody: Body<Data = Bytes> + Send + 'static,
        <T::ResponseBody as Body>::Error: Into<StdError> + Send,
    {
        pub fn new(inner: T) -> Self {
            let inner = tonic::client::Grpc::new(inner);
            Self { inner }
        }
        pub fn with_origin(inner: T, origin: Uri) -> Self {
            let inner = tonic::client::Grpc::with_origin(inner, origin);
            Self { inner }
        }
        pub fn with_interceptor<F>(
            inner: T,
            interceptor: F,
        ) -> WorldServiceClient<InterceptedService<T, F>>
        where
            F: tonic::service::Interceptor,
            T::ResponseBody: Default,
            T: tonic::codegen::Service<
                http::Request<tonic::body::BoxBody>,
                Response = http::Response<
                    <T as tonic::client::GrpcService<tonic::body::BoxBody>>::ResponseBody,
                >,
            >,
            <T as tonic::codegen::Service<
                http::Request<tonic::body::BoxBody>,
            >>::Error: Into<StdError> + Send + Sync,
        {
            WorldServiceClient::new(InterceptedService::new(inner, interceptor))
        }
        /// Compress requests with the given encoding.
        ///
        /// This requires the server to support it otherwise it might respond with an
        /// error.
        #[must_use]
        pub fn send_compressed(mut self, encoding: CompressionEncoding) -> Self {
            self.inner = self.inner.send_compressed(encoding);
            self
        }
        /// Enable decompressing responses.
        #[must_use]
        pub fn accept_compressed(mut self, encoding: CompressionEncoding) -> Self {
            self.inner = self.inner.accept_compressed(encoding);
            self
        }
        /// Limits the maximum size of a decoded message.
        ///
        /// Default: `4MB`
        #[must_use]
        pub fn max_decoding_message_size(mut self, limit: usize) -> Self {
            self.inner = self.inner.max_decoding_message_size(limit);
            self
        }
        /// Limits the maximum size of an encoded message.
        ///
        /// Default: `usize::MAX`
        #[must_use]
        pub fn max_encoding_message_size(mut self, limit: usize) -> Self {
            self.inner = self.inner.max_encoding_message_size(limit);
            self
        }
        /// WorldPostSubmit 世界圈帖子发布
        pub async fn world_post_submit(
            &mut self,
            request: impl tonic::IntoRequest<super::WorldPostSubmitReq>,
        ) -> std::result::Result<
            tonic::Response<super::WorldPostSubmitResp>,
            tonic::Status,
        > {
            self.inner
                .ready()
                .await
                .map_err(|e| {
                    tonic::Status::new(
                        tonic::Code::Unknown,
                        format!("Service was not ready: {}", e.into()),
                    )
                })?;
            let codec = tonic::codec::ProstCodec::default();
            let path = http::uri::PathAndQuery::from_static(
                "/pb.worldService/WorldPostSubmit",
            );
            let mut req = request.into_request();
            req.extensions_mut()
                .insert(GrpcMethod::new("pb.worldService", "WorldPostSubmit"));
            self.inner.unary(req, path, codec).await
        }
    }
}
/// Generated server implementations.
pub mod world_service_server {
    #![allow(unused_variables, dead_code, missing_docs, clippy::let_unit_value)]
    use tonic::codegen::*;
    /// Generated trait containing gRPC methods that should be implemented for use with WorldServiceServer.
    #[async_trait]
    pub trait WorldService: Send + Sync + 'static {
        /// WorldPostSubmit 世界圈帖子发布
        async fn world_post_submit(
            &self,
            request: tonic::Request<super::WorldPostSubmitReq>,
        ) -> std::result::Result<
            tonic::Response<super::WorldPostSubmitResp>,
            tonic::Status,
        >;
    }
    #[derive(Debug)]
    pub struct WorldServiceServer<T: WorldService> {
        inner: _Inner<T>,
        accept_compression_encodings: EnabledCompressionEncodings,
        send_compression_encodings: EnabledCompressionEncodings,
        max_decoding_message_size: Option<usize>,
        max_encoding_message_size: Option<usize>,
    }
    struct _Inner<T>(Arc<T>);
    impl<T: WorldService> WorldServiceServer<T> {
        pub fn new(inner: T) -> Self {
            Self::from_arc(Arc::new(inner))
        }
        pub fn from_arc(inner: Arc<T>) -> Self {
            let inner = _Inner(inner);
            Self {
                inner,
                accept_compression_encodings: Default::default(),
                send_compression_encodings: Default::default(),
                max_decoding_message_size: None,
                max_encoding_message_size: None,
            }
        }
        pub fn with_interceptor<F>(
            inner: T,
            interceptor: F,
        ) -> InterceptedService<Self, F>
        where
            F: tonic::service::Interceptor,
        {
            InterceptedService::new(Self::new(inner), interceptor)
        }
        /// Enable decompressing requests with the given encoding.
        #[must_use]
        pub fn accept_compressed(mut self, encoding: CompressionEncoding) -> Self {
            self.accept_compression_encodings.enable(encoding);
            self
        }
        /// Compress responses with the given encoding, if the client supports it.
        #[must_use]
        pub fn send_compressed(mut self, encoding: CompressionEncoding) -> Self {
            self.send_compression_encodings.enable(encoding);
            self
        }
        /// Limits the maximum size of a decoded message.
        ///
        /// Default: `4MB`
        #[must_use]
        pub fn max_decoding_message_size(mut self, limit: usize) -> Self {
            self.max_decoding_message_size = Some(limit);
            self
        }
        /// Limits the maximum size of an encoded message.
        ///
        /// Default: `usize::MAX`
        #[must_use]
        pub fn max_encoding_message_size(mut self, limit: usize) -> Self {
            self.max_encoding_message_size = Some(limit);
            self
        }
    }
    impl<T, B> tonic::codegen::Service<http::Request<B>> for WorldServiceServer<T>
    where
        T: WorldService,
        B: Body + Send + 'static,
        B::Error: Into<StdError> + Send + 'static,
    {
        type Response = http::Response<tonic::body::BoxBody>;
        type Error = std::convert::Infallible;
        type Future = BoxFuture<Self::Response, Self::Error>;
        fn poll_ready(
            &mut self,
            _cx: &mut Context<'_>,
        ) -> Poll<std::result::Result<(), Self::Error>> {
            Poll::Ready(Ok(()))
        }
        fn call(&mut self, req: http::Request<B>) -> Self::Future {
            let inner = self.inner.clone();
            match req.uri().path() {
                "/pb.worldService/WorldPostSubmit" => {
                    #[allow(non_camel_case_types)]
                    struct WorldPostSubmitSvc<T: WorldService>(pub Arc<T>);
                    impl<
                        T: WorldService,
                    > tonic::server::UnaryService<super::WorldPostSubmitReq>
                    for WorldPostSubmitSvc<T> {
                        type Response = super::WorldPostSubmitResp;
                        type Future = BoxFuture<
                            tonic::Response<Self::Response>,
                            tonic::Status,
                        >;
                        fn call(
                            &mut self,
                            request: tonic::Request<super::WorldPostSubmitReq>,
                        ) -> Self::Future {
                            let inner = Arc::clone(&self.0);
                            let fut = async move {
                                (*inner).world_post_submit(request).await
                            };
                            Box::pin(fut)
                        }
                    }
                    let accept_compression_encodings = self.accept_compression_encodings;
                    let send_compression_encodings = self.send_compression_encodings;
                    let max_decoding_message_size = self.max_decoding_message_size;
                    let max_encoding_message_size = self.max_encoding_message_size;
                    let inner = self.inner.clone();
                    let fut = async move {
                        let inner = inner.0;
                        let method = WorldPostSubmitSvc(inner);
                        let codec = tonic::codec::ProstCodec::default();
                        let mut grpc = tonic::server::Grpc::new(codec)
                            .apply_compression_config(
                                accept_compression_encodings,
                                send_compression_encodings,
                            )
                            .apply_max_message_size_config(
                                max_decoding_message_size,
                                max_encoding_message_size,
                            );
                        let res = grpc.unary(method, req).await;
                        Ok(res)
                    };
                    Box::pin(fut)
                }
                _ => {
                    Box::pin(async move {
                        Ok(
                            http::Response::builder()
                                .status(200)
                                .header("grpc-status", "12")
                                .header("content-type", "application/grpc")
                                .body(empty_body())
                                .unwrap(),
                        )
                    })
                }
            }
        }
    }
    impl<T: WorldService> Clone for WorldServiceServer<T> {
        fn clone(&self) -> Self {
            let inner = self.inner.clone();
            Self {
                inner,
                accept_compression_encodings: self.accept_compression_encodings,
                send_compression_encodings: self.send_compression_encodings,
                max_decoding_message_size: self.max_decoding_message_size,
                max_encoding_message_size: self.max_encoding_message_size,
            }
        }
    }
    impl<T: WorldService> Clone for _Inner<T> {
        fn clone(&self) -> Self {
            Self(Arc::clone(&self.0))
        }
    }
    impl<T: std::fmt::Debug> std::fmt::Debug for _Inner<T> {
        fn fmt(&self, f: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
            write!(f, "{:?}", self.0)
        }
    }
    impl<T: WorldService> tonic::server::NamedService for WorldServiceServer<T> {
        const NAME: &'static str = "pb.worldService";
    }
}
