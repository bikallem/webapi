// Auto-generated MoonBit bindings for ConvertCoordinateOptions dictionary

// Do not edit manually

//
// WebIDL Dictionary:
// dictionary ConvertCoordinateOptions {
//   CSSBoxType fromBox = "border";
//   CSSBoxType toBox = "border";
// };

///|
#external
pub type ConvertCoordinateOptions

///|
pub impl TJsValue for ConvertCoordinateOptions with to_js(
  self : ConvertCoordinateOptions,
) -> JsValue = "%identity"

///|
fn convert_coordinate_options_ffi(
  from_box : JsValue,
  to_box : JsValue,
) -> ConvertCoordinateOptions = "webapi_ConvertCoordinateOptions" "new"

///|
pub fn ConvertCoordinateOptions::new(
  from_box? : JsValue,
  to_box? : JsValue,
) -> ConvertCoordinateOptions {
  let from_box_js = opt_to_js(from_box)
  let to_box_js = opt_to_js(to_box)
  convert_coordinate_options_ffi(from_box_js, to_box_js)
}

///|
pub fn ConvertCoordinateOptions::empty() -> ConvertCoordinateOptions = "webapi_Dictionary" "empty"
