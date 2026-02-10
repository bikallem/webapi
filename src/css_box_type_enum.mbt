// Do not edit. This file is generated.
// MoonBit type: CSSBoxType
// Specifications: cssom-view.idl

pub(all) enum CSSBoxType {
  Margin
  Border
  Padding
  Content
} derive(Eq,Show)

pub impl TJsValue for CSSBoxType with to_js(self: CSSBoxType) -> JsValue {
  match self {
    CSSBoxType::Margin => TJsValue::to_js("margin")
    CSSBoxType::Border => TJsValue::to_js("border")
    CSSBoxType::Padding => TJsValue::to_js("padding")
    CSSBoxType::Content => TJsValue::to_js("content")
  }
}

pub fn CSSBoxType::from(value: String) -> CSSBoxType? {
  match value {
    "margin" => Some(CSSBoxType::Margin)
    "border" => Some(CSSBoxType::Border)
    "padding" => Some(CSSBoxType::Padding)
    "content" => Some(CSSBoxType::Content)
    _ => None
  }
}