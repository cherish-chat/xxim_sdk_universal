use serde::{Deserialize, Serialize};
use chrono::{Local};

// 日志级别
#[derive(Debug, PartialEq, Clone, Copy, Serialize, Deserialize)]
pub enum Level {
    Debug,
    Info,
    Warn,
    Error,
}

impl Level {
    pub fn from_i32(v: i32) -> Level {
        match v {
            0 => Level::Debug,
            1 => Level::Info,
            2 => Level::Warn,
            3 => Level::Error,
            _ => Level::Info,
        }
    }
}

// 设置日志级别
pub fn set_level(level: Level) {
    static ONCE: std::sync::Once = std::sync::Once::new();
    ONCE.call_once(|| {
        _set_level(level);
    });
}

static mut LEVEL: Level = Level::Info;

fn _set_level(level: Level) {
    unsafe {
        LEVEL = level;
    }
}

pub fn debug(msg: &str) {
    let level = unsafe { LEVEL };
    if level == Level::Debug {
        //黑色
        println!("\x1b[0;30m[DEBUG] {} {}\x1b[0m", Local::now().format("%Y-%m-%d %H:%M:%S").to_string(), msg);
    }
}

pub fn info(msg: &str) {
    let level = unsafe { LEVEL };
    if level == Level::Debug || level == Level::Info {
        //绿色
        println!("\x1b[0;32m[INFO] {} {}\x1b[0m", Local::now().format("%Y-%m-%d %H:%M:%S").to_string(), msg);
    }
}

pub fn warn(msg: &str) {
    let level = unsafe { LEVEL };
    if level == Level::Debug || level == Level::Info || level == Level::Warn {
        //黄色
        println!("\x1b[0;33m[WARN] {} {}\x1b[0m", Local::now().format("%Y-%m-%d %H:%M:%S").to_string(), msg);
    }
}

pub fn error(msg: &str) {
    let level = unsafe { LEVEL };
    if level == Level::Debug || level == Level::Info || level == Level::Warn || level == Level::Error {
        //红色
        println!("\x1b[0;31m[ERROR] {} {}\x1b[0m", Local::now().format("%Y-%m-%d %H:%M:%S").to_string(), msg);
    }
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn test_set_level() {
        set_level(Level::Debug);
        debug("debug");
        info("info");
        warn("warn");
        error("error");
    }
}
