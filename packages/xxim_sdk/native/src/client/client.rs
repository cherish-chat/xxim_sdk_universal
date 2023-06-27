use tokio;

pub struct Client {}

pub type OnSuccess<P> = fn(resp: Box<P>);
pub type OnError = fn(code: i32, message: String);

impl Client {
    // pub fn request_async<Q, P>(&self,
    //                      path: String,
    //                      req: Box<Q>,
    //                      on_success: OnSuccess<P>,
    //                      on_error: OnError,
    // ) -> Box<P> {
    //     return Box::new(P::default());
    // }
}