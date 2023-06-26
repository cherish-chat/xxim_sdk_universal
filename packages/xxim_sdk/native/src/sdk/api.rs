
pub trait SdkApi {
    fn init(&mut self, config_str: String);
    fn set_user_token(&mut self, token: String);
}
