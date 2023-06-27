use lazy_static::lazy_static;
use rusqlite::{Connection};
use std::sync::{Arc, Mutex};
use std::collections::HashMap;
use crate::tool::log;

lazy_static! {
    static ref CANCEL_TOKEN_MAP: Mutex<HashMap<String, Arc<Mutex<Connection>>>> = Mutex::new(HashMap::new());
}

pub struct CancelToken {

}

impl CancelToken {
    // pub fn new() -> String {
    //
    // }
}