// Do not edit. This file is generated.
// MoonBit type: CanvasDirection
// Specifications: html.idl

///|
pub(all) enum CanvasDirection {
  Ltr
  Rtl
  Inherit
} derive(Eq, Show)

///|
pub impl TJsValue for CanvasDirection with to_js(self : CanvasDirection) -> JsValue {
  match self {
    CanvasDirection::Ltr => TJsValue::to_js("ltr")
    CanvasDirection::Rtl => TJsValue::to_js("rtl")
    CanvasDirection::Inherit => TJsValue::to_js("inherit")
  }
}

///|
pub fn CanvasDirection::from(value : String) -> CanvasDirection? {
  match value {
    "ltr" => Some(CanvasDirection::Ltr)
    "rtl" => Some(CanvasDirection::Rtl)
    "inherit" => Some(CanvasDirection::Inherit)
    _ => None
  }
}
