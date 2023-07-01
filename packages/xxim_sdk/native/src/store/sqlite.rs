use rusqlite::{Connection, Statement};
use rusqlite::{Error};
use std::sync::{Arc, Mutex};
use crate::store::values::{Sqlite, SQLITE_INSTANCE_MAP};
use crate::tool::log;

impl Sqlite {
    fn new(file_name: String) -> Self {
        let mut sqlite = Sqlite {
            file_name,
            c: None,
        };
        sqlite.open();
        return sqlite;
    }
    fn open(&mut self) {
        self.c = Some(Connection::open(self.file_name.as_str()).unwrap());
    }

    fn close(&mut self) {
        self.c.take().unwrap().close().unwrap();
    }

    pub fn get_connection(file_name: String, init_sql: &str) -> Arc<Mutex<Sqlite>> {
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
                    let arc = Arc::new(Mutex::new(Sqlite::new(file_name.clone())));
                    map.insert(file_name.clone(), arc.clone());
                    return arc;
                }
                let result = conn.execute(init_sql, []);
                match result {
                    Ok(_) => {
                        // 返回Arc<Mutex<Connection>>
                        conn.close().expect("close error");
                        // let conn = Connection::open(file_name.as_str()).unwrap();
                        let arc = Arc::new(Mutex::new(Sqlite::new(file_name.clone())));
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

    pub fn sqlite_close(file_name: String) {
        let copy_file_name = file_name.clone();
        let map = SQLITE_INSTANCE_MAP.lock().unwrap();
        // 存在则 close 并删除
        let instance = map.get(&copy_file_name);
        match instance {
            Some(instance) => {
                let mut instance = instance.lock().unwrap();
                instance.close();
            }
            None => {}
        }
    }

    pub fn sqlite_destroy(file_name: String) {
        let copy_file_name = file_name.clone();
        let mut map = SQLITE_INSTANCE_MAP.lock().unwrap();
        //直接删除
        map.remove(&copy_file_name);
    }

    pub fn sqlite_all_debug() {
        let map = SQLITE_INSTANCE_MAP.lock().unwrap();
        for (k, _) in map.iter() {
            log::debug(format!("sqlite_all_debug: {}", k).as_str());
        }
    }
}

impl Sqlite {
    pub fn prepare(&self, sql: &str) -> Result<Statement, Error> {
        self.c.as_ref().unwrap().prepare(sql)
    }

    pub fn execute(&self, sql: &str, params: &[&dyn rusqlite::ToSql]) -> Result<usize, Error> {
        self.c.as_ref().unwrap().execute(sql, params)
    }
}
