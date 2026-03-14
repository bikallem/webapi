// Do not edit. This file is generated.
// MoonBit type: CSSBoxType
// Specifications: cssom-view.idl

pub(all) enum CSSBoxType {
  Margin
  Border
  Padding
  Content
} derive(Eq)

pub impl Show for CSSBoxType with output(self : CSSBoxType, logger : &Logger) -> Unit {
  match self {
    CSSBoxType::Margin => logger.write_string("Margin")
    CSSBoxType::Border => logger.write_string("Border")
    CSSBoxType::Padding => logger.write_string("Padding")
    CSSBoxType::Content => logger.write_string("Content")
  }
}

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

fn CSSBoxType::from_unchecked(value: String) -> CSSBoxType {
  match value {
    "margin" => CSSBoxType::Margin
    "border" => CSSBoxType::Border
    "padding" => CSSBoxType::Padding
    "content" => CSSBoxType::Content
    _ => CSSBoxType::Margin
  }
}

pub fn CSSBoxType::value(self: CSSBoxType) -> String {
  match self {
    CSSBoxType::Margin => "margin"
    CSSBoxType::Border => "border"
    CSSBoxType::Padding => "padding"
    CSSBoxType::Content => "content"
  }
}

pub impl FromJsAny for CSSBoxType with from_js_any(value : JsAny) -> CSSBoxType {
  CSSBoxType::from_unchecked(value)
}