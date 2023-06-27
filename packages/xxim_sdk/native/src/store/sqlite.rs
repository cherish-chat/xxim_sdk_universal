use lazy_static::lazy_static;
use rusqlite::{Connection};
use std::sync::{Arc, Mutex};
use std::collections::HashMap;
use crate::tool::log;

lazy_static! {
    static ref SQLITE_INSTANCE_MAP: Mutex<HashMap<String, Arc<Mutex<Connection>>>> = Mutex::new(HashMap::new());
}

pub fn sqlite_connection(file_name: String, init_sql: &str) -> Arc<Mutex<Connection>> {
    let mut map = SQLITE_INSTANCE_MAP.lock().unwrap();
    let instance = map.get(&file_name);
    return match instance {
        Some(instance) => {
            instance.clone()
        }
        None => {
            let conn = Connection::open(file_name.as_str()).unwrap();
            if init_sql.is_empty() {
                // 返回Arc<Mutex<Connection>>
                let arc = Arc::new(Mutex::new(conn));
                map.insert(file_name.clone(), arc.clone());
                return arc;
            }
            let result = conn.execute(init_sql, []);
            match result {
                Ok(_) => {
                    // 返回Arc<Mutex<Connection>>
                    conn.close().expect("close error");
                    let conn = Connection::open(file_name.as_str()).unwrap();
                    let arc = Arc::new(Mutex::new(conn));
                    map.insert(file_name.clone(), arc.clone());
                    arc
                }
                Err(e) => {
                    log::error(format!("file_name: {}, init data error: {}", file_name, e.to_string()).as_str());
                    std::panic::panic_any(e);
                }
            }
        }
    };
}