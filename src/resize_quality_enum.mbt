// Do not edit. This file is generated.
// MoonBit type: ResizeQuality
// Specifications: html.idl

///|
pub(all) enum ResizeQuality {
  Pixelated
  Low
  Medium
  High
} derive(Eq, Show)

///|
pub impl TJsValue for ResizeQuality with to_js(self : ResizeQuality) -> JsValue {
  match self {
    ResizeQuality::Pixelated => TJsValue::to_js("pixelated")
    ResizeQuality::Low => TJsValue::to_js("low")
    ResizeQuality::Medium => TJsValue::to_js("medium")
    ResizeQuality::High => TJsValue::to_js("high")
  }
}

///|
pub fn ResizeQuality::from(value : String) -> ResizeQuality? {
  match value {
    "pixelated" => Some(ResizeQuality::Pixelated)
    "low" => Some(ResizeQuality::Low)
    "medium" => Some(ResizeQuality::Medium)
    "high" => Some(ResizeQuality::High)
    _ => None
  }
}
