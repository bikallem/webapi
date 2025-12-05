// Auto-generated MoonBit bindings for EndingType

// Do not edit manually

///|
pub enum EndingType {
  Transparent
  Native
} derive(Eq)

///|
pub impl TJsValue for EndingType with to_js(self) {
  match self {
    EndingType::Transparent => TJsValue::to_js("transparent")
    EndingType::Native => TJsValue::to_js("native")
  }
}

///|
pub fn EndingType::from(value : String) -> EndingType? {
  match value {
    "transparent" => Some(EndingType::Transparent)
    "native" => Some(EndingType::Native)
    _ => None
  }
}

///|
pub impl Show for EndingType with output(self, logger) {
  match self {
    EndingType::Transparent => logger.write_string("transparent")
    EndingType::Native => logger.write_string("native")
  }
}
