/*
该rust文件，用来app配置的存储和读取。这里使用sqlite进行存储，使用rust的sqlite库rusqlite进行操作。
 */
use rusqlite::{params, Result};
use crate::store::sqlite::sqlite_connection;

use crate::tool;

const TABLE_NAME: &str = "app_config";
const INIT_SQL: &str = r#"CREATE TABLE IF NOT EXISTS `app_config` (
    `k` varchar(255) NOT NULL,
    `v` varchar(255) NOT NULL,
    PRIMARY KEY (`k`)
);
"#;

pub struct AppConfig {
    pub(crate) db_path: String,
}

impl AppConfig {
    pub fn find_by_k(self, k: &str) -> Result<String> {
        let connection = sqlite_connection(self.db_path, INIT_SQL);
        let sql = format!("SELECT v FROM {} WHERE k = ?", TABLE_NAME);
        tool::log::debug(sql.as_str());
        let guard = connection.lock().unwrap();
        let mut stmt = guard.prepare(sql.as_str())?;
        let mut rows = stmt.query(params![k])?;
        let result = rows.next()?;
        if result.is_none() {
            return Err(rusqlite::Error::QueryReturnedNoRows);
        }
        let row = result.unwrap();
        let v: String = row.get(0)?;
        Ok(v)
    }

    pub fn save(self, k: &str, v: &str) -> Result<()> {
        let connection = sqlite_connection(self.db_path, INIT_SQL);
        let sql = format!("INSERT OR REPLACE INTO {} (k, v) VALUES (?, ?)", TABLE_NAME);
        tool::log::debug(sql.as_str());
        connection.lock().unwrap().execute(&sql, params![k, v])?;
        Ok(())
    }
}
