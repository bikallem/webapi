///|
pub(all) enum EndingType {
  Transparent
  Native
} derive(Eq, Show)

///|
pub impl TJsValue for EndingType with to_js(self : EndingType) -> JsValue {
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
