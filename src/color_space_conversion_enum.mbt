// Do not edit. This file is generated.
// MoonBit type: ColorSpaceConversion
// Specifications: html.idl

///|
pub(all) enum ColorSpaceConversion {
  None
  Default
} derive(Eq, Show)

///|
pub impl TJsValue for ColorSpaceConversion with to_js(
  self : ColorSpaceConversion,
) -> JsValue {
  match self {
    ColorSpaceConversion::None => TJsValue::to_js("none")
    ColorSpaceConversion::Default => TJsValue::to_js("default")
  }
}

///|
pub fn ColorSpaceConversion::from(value : String) -> ColorSpaceConversion? {
  match value {
    "none" => Some(ColorSpaceConversion::None)
    "default" => Some(ColorSpaceConversion::Default)
    _ => None
  }
}
