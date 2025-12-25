// Do not edit. This file is generated.
// MoonBit type: ConvertCoordinateOptions
// Specifications: cssom-view.idl

///|
#external
pub type ConvertCoordinateOptions

///|
pub impl TJsValue for ConvertCoordinateOptions with to_js(
  self : ConvertCoordinateOptions,
) -> JsValue = "%identity"

///|
extern "js" fn convert_coordinate_options_ffi(
  from_box : JsValue,
  to_box : JsValue,
) -> ConvertCoordinateOptions =
  #|(fromBox, toBox) => {
  #|  const obj = {};
  #|  if (fromBox !== undefined) obj.fromBox = fromBox;
  #|  if (toBox !== undefined) obj.toBox = toBox;
  #|  return obj;
  #|}

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
extern "js" fn convert_coordinate_options_empty_ffi() -> ConvertCoordinateOptions = "() => {}"

///|
pub fn ConvertCoordinateOptions::empty() -> ConvertCoordinateOptions {
  convert_coordinate_options_empty_ffi()
}
