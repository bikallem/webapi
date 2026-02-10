// Do not edit. This file is generated.
// MoonBit type: TouchType
// Specifications: touch-events.idl

pub(all) enum TouchType {
  Direct
  Stylus
} derive(Eq,Show)

pub impl TJsValue for TouchType with to_js(self: TouchType) -> JsValue {
  match self {
    TouchType::Direct => TJsValue::to_js("direct")
    TouchType::Stylus => TJsValue::to_js("stylus")
  }
}

pub fn TouchType::from(value: String) -> TouchType? {
  match value {
    "direct" => Some(TouchType::Direct)
    "stylus" => Some(TouchType::Stylus)
    _ => None
  }
}