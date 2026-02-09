// Do not edit. This file is generated.
// MoonBit type: PredefinedColorSpace
// Specifications: html.idl

///|
pub(all) enum PredefinedColorSpace {
  Srgb
  SrgbLinear
  DisplayP3
  DisplayP3Linear
} derive(Eq, Show)

///|
pub impl TJsValue for PredefinedColorSpace with to_js(
  self : PredefinedColorSpace,
) -> JsValue {
  match self {
    PredefinedColorSpace::Srgb => TJsValue::to_js("srgb")
    PredefinedColorSpace::SrgbLinear => TJsValue::to_js("srgb-linear")
    PredefinedColorSpace::DisplayP3 => TJsValue::to_js("display-p3")
    PredefinedColorSpace::DisplayP3Linear =>
      TJsValue::to_js("display-p3-linear")
  }
}

///|
pub fn PredefinedColorSpace::from(value : String) -> PredefinedColorSpace? {
  match value {
    "srgb" => Some(PredefinedColorSpace::Srgb)
    "srgb-linear" => Some(PredefinedColorSpace::SrgbLinear)
    "display-p3" => Some(PredefinedColorSpace::DisplayP3)
    "display-p3-linear" => Some(PredefinedColorSpace::DisplayP3Linear)
    _ => None
  }
}
