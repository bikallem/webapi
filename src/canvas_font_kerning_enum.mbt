// Do not edit. This file is generated.
// MoonBit type: CanvasFontKerning
// Specifications: html.idl

///|
pub(all) enum CanvasFontKerning {
  Auto
  Normal
  None
} derive(Eq, Show)

///|
pub impl TJsValue for CanvasFontKerning with to_js(self : CanvasFontKerning) -> JsValue {
  match self {
    CanvasFontKerning::Auto => TJsValue::to_js("auto")
    CanvasFontKerning::Normal => TJsValue::to_js("normal")
    CanvasFontKerning::None => TJsValue::to_js("none")
  }
}

///|
pub fn CanvasFontKerning::from(value : String) -> CanvasFontKerning? {
  match value {
    "auto" => Some(CanvasFontKerning::Auto)
    "normal" => Some(CanvasFontKerning::Normal)
    "none" => Some(CanvasFontKerning::None)
    _ => None
  }
}
