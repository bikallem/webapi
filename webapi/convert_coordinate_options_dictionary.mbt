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
pub impl FromJsAny for ConvertCoordinateOptions with from_js_any(value : JsAny) -> ConvertCoordinateOptions = "%identity"

///|
pub fn ConvertCoordinateOptions::new(
  from_box? : CSSBoxType,
  to_box? : CSSBoxType,
) -> ConvertCoordinateOptions {
  convert_coordinate_options_ffi(opt_to_js(from_box), opt_to_js(to_box))
}

///|
pub fn ConvertCoordinateOptions::empty() -> ConvertCoordinateOptions {
  convert_coordinate_options_empty_ffi()
}

///|
pub fn ConvertCoordinateOptions::from_box(
  self : ConvertCoordinateOptions,
) -> CSSBoxType? {
  convert_coordinate_options_get_from_box_ffi(TJsValue::to_js(self)).to_option()
}

///|
pub fn ConvertCoordinateOptions::to_box(
  self : ConvertCoordinateOptions,
) -> CSSBoxType? {
  convert_coordinate_options_get_to_box_ffi(TJsValue::to_js(self)).to_option()
}
