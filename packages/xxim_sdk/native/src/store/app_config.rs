/*
该rust文件，用来app配置的存储和读取。这里使用sqlite进行存储，使用rust的sqlite库rusqlite进行操作。
 */
use std::sync::{Arc};

use rusqlite::{Connection, params, Result};

use crate::tool;

const FILE_NAME: &str = "xxim_sdk_core.db";
const TABLE_NAME: &str = "app_config";

pub struct Store {
    conn: Connection,
}

pub struct AppConfig {}


impl Store {
    /// get store return Store
    /// 单例模式，返回一个Store实例
    pub fn get() -> Arc<Store> {
        static mut STORE: Option<Arc<Store>> = None;
        static ONCE: std::sync::Once = std::sync::Once::new();
        unsafe {
            ONCE.call_once(|| {
                STORE = Some(Arc::new(Store::new()));
            });
            STORE.as_ref().unwrap().clone()
        }
    }

    /// new
    /// 创建一个Store实例
    pub fn new() -> Store {
        let conn = Connection::open(FILE_NAME).unwrap();
        let sql = format!(
            "CREATE TABLE IF NOT EXISTS {} (
                k string PRIMARY KEY,
                v string NOT NULL DEFAULT '',
                UNIQUE(k)
            )",
            TABLE_NAME
        );
        tool::log::debug(sql.as_str());
        let result = conn.execute(&sql, params![]);
        match result {
            Ok(_) => {
                tool::log::info("table app_config exists already");
            }
            Err(err) => {
                tool::log::error(err.to_string().as_str());
                // 崩溃
                panic!("create table app_config fail");
            }
        }
        Store { conn }
    }
}

impl AppConfig {
    pub fn find_by_k(k: &str) -> Result<String> {
        let store = Store::get();
        let sql = format!("SELECT v FROM {} WHERE k = ?", TABLE_NAME);
        tool::log::debug(sql.as_str());
        let mut stmt = store.conn.prepare(&sql)?;
        let mut rows = stmt.query(params![k])?;
        let result = rows.next()?;
        if result.is_none() {
            return Err(rusqlite::Error::QueryReturnedNoRows);
        }
        let row = result.unwrap();
        let v: String = row.get(0)?;
        Ok(v)
    }

    pub fn save(k: &str, v: &str) -> Result<()> {
        let store = Store::get();
        let sql = format!("INSERT OR REPLACE INTO {} (k, v) VALUES (?, ?)", TABLE_NAME);
        tool::log::debug(sql.as_str());
        store.conn.execute(&sql, params![k, v])?;
        Ok(())
    }
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn test_save() {
        tool::log::set_level(tool::log::Level::Debug);
        let _result = AppConfig::save("test", "test");
    }

    #[test]
    fn test_find_by_k() {
        tool::log::set_level(tool::log::Level::Debug);
        let v = AppConfig::find_by_k("test").unwrap();
        tool::log::debug(v.as_str());
    }
}
