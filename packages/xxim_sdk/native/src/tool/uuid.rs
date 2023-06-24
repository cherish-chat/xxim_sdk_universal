use uuid::Uuid;

pub fn uuid() -> String {
    let string = Uuid::new_v4().to_string();
    //去掉中间的横线
    let string = string.replace("-", "");
    string
}

#[cfg(test)]
mod tests {
    use crate::tool::log::set_level;
    use super::*;

    #[test]
    fn test_uuid() {
        let id = uuid();
        set_level(crate::tool::log::Level::Debug);
        crate::tool::log::debug(&id);
    }
}
