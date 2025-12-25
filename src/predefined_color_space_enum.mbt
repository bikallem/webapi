// Do not edit. This file is generated.
// MoonBit type: PredefinedColorSpace
// Specifications: html.idl

///|
pub(all) enum PredefinedColorSpace {
  Srgb
  DisplayP3
} derive(Eq, Show)

///|
pub impl TJsValue for PredefinedColorSpace with to_js(
  self : PredefinedColorSpace,
) -> JsValue {
  match self {
    PredefinedColorSpace::Srgb => TJsValue::to_js("srgb")
    PredefinedColorSpace::DisplayP3 => TJsValue::to_js("display-p3")
  }
}

///|
pub fn PredefinedColorSpace::from(value : String) -> PredefinedColorSpace? {
  match value {
    "srgb" => Some(PredefinedColorSpace::Srgb)
    "display-p3" => Some(PredefinedColorSpace::DisplayP3)
    _ => None
  }
}
