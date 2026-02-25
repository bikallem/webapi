///|
fn convert_coordinate_options_ffi(
  from_box : JsValue,
  to_box : JsValue,
) -> ConvertCoordinateOptions = "webapi_ConvertCoordinateOptions" "new"

///|
fn convert_coordinate_options_empty_ffi() -> ConvertCoordinateOptions = "webapi_Dictionary" "empty"

///|
fn convert_coordinate_options_get_from_box_ffi(obj : JsValue) -> JsValue = "webapi_ConvertCoordinateOptions" "get_fromBox"

///|
fn convert_coordinate_options_get_to_box_ffi(obj : JsValue) -> JsValue = "webapi_ConvertCoordinateOptions" "get_toBox"
