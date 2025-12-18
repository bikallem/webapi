// Auto-generated MoonBit bindings for ConvertCoordinateOptions dictionary
// Do not edit manually

#external
pub type ConvertCoordinateOptions

pub impl TJsValue for ConvertCoordinateOptions with to_js(self: ConvertCoordinateOptions) -> JsValue = "%identity"


fn convert_coordinate_options_ffi(from_box : JsValue, to_box : JsValue) -> ConvertCoordinateOptions = "webapi_ConvertCoordinateOptions" "new"


pub fn ConvertCoordinateOptions::new(
  from_box? : CSSBoxType? : CSSBoxType = "border",
  to_box? : CSSBoxType? : CSSBoxType = "border") -> ConvertCoordinateOptions {
    convert_coordinate_options_ffi(
      TJsValue::to_js(from_box)
     ,TJsValue::to_js(to_box)
    )
}


pub fn ConvertCoordinateOptions::empty() -> ConvertCoordinateOptions = "webapi_Dictionary" "empty"