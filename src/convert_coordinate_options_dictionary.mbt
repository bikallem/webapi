// Do not edit. This file is generated.
// MoonBit type: ConvertCoordinateOptions
// Specifications: cssom-view.idl

///|
/// [ConvertCoordinateOptions](https://developer.mozilla.org/en-US/docs/Web/API/ConvertCoordinateOptions)
#external
pub type ConvertCoordinateOptions

///|
pub impl TJsValue for ConvertCoordinateOptions with to_js(
  self : ConvertCoordinateOptions,
) -> JsValue = "%identity"

///|
pub fn ConvertCoordinateOptions::new(
  from_box? : CSSBoxType = CSSBoxType::Border,
  to_box? : CSSBoxType = CSSBoxType::Border,
) -> ConvertCoordinateOptions {
  convert_coordinate_options_ffi(
    TJsValue::to_js(from_box),
    TJsValue::to_js(to_box),
  )
}

///|
pub fn ConvertCoordinateOptions::empty() -> ConvertCoordinateOptions {
  convert_coordinate_options_empty_ffi()
}
