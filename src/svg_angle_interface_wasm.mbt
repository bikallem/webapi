///|
fn svg_angle_unit_type_ffi(obj : JsValue) -> UInt = "webapi_SVGAngle" "get_unitType"

///|
fn svg_angle_value_ffi(obj : JsValue) -> Float = "webapi_SVGAngle" "get_value"

///|
fn svg_angle_set_value_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_SVGAngle" "set_value"

///|
fn svg_angle_value_in_specified_units_ffi(obj : JsValue) -> Float = "webapi_SVGAngle" "get_valueInSpecifiedUnits"

///|
fn svg_angle_set_value_in_specified_units_ffi(
  obj : JsValue,
  value_in_specified_units : JsValue,
) -> Unit = "webapi_SVGAngle" "set_valueInSpecifiedUnits"

///|
fn svg_angle_value_as_string_ffi_wasm(obj : JsValue) -> JsValue = "webapi_SVGAngle" "get_valueAsString"

///|
fn svg_angle_value_as_string_ffi(obj : JsValue) -> String {
  jsvalue_to_string(svg_angle_value_as_string_ffi_wasm(obj))
}

///|
fn svg_angle_set_value_as_string_ffi(
  obj : JsValue,
  value_as_string : JsValue,
) -> Unit = "webapi_SVGAngle" "set_valueAsString"

///|
fn svg_angle_new_value_specified_units_ffi(
  obj : JsValue,
  unit_type : JsValue,
  value_in_specified_units : JsValue,
) -> Unit = "webapi_SVGAngle" "newValueSpecifiedUnits"

///|
fn svg_angle_convert_to_specified_units_ffi(
  obj : JsValue,
  unit_type : JsValue,
) -> Unit = "webapi_SVGAngle" "convertToSpecifiedUnits"
