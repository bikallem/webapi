// Auto-generated MoonBit bindings for CSSBoxType

// Do not edit manually

///|
pub(all) enum CSSBoxType {
  Margin
  Border
  Padding
  Content
} derive(Eq)

///|
pub impl TJsValue for CSSBoxType with to_js(self) {
  match self {
    CSSBoxType::Margin => TJsValue::to_js("margin")
    CSSBoxType::Border => TJsValue::to_js("border")
    CSSBoxType::Padding => TJsValue::to_js("padding")
    CSSBoxType::Content => TJsValue::to_js("content")
  }
}

///|
pub fn CSSBoxType::from(value : String) -> CSSBoxType? {
  match value {
    "margin" => Some(CSSBoxType::Margin)
    "border" => Some(CSSBoxType::Border)
    "padding" => Some(CSSBoxType::Padding)
    "content" => Some(CSSBoxType::Content)
    _ => None
  }
}

///|
pub impl Show for CSSBoxType with output(self, logger) {
  match self {
    CSSBoxType::Margin => logger.write_string("margin")
    CSSBoxType::Border => logger.write_string("border")
    CSSBoxType::Padding => logger.write_string("padding")
    CSSBoxType::Content => logger.write_string("content")
  }
}