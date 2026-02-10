fn svg_length_unit_type_ffi(obj: JsValue) -> UInt = "webapi_SVGLength" "get_unitType"

fn svg_length_value_ffi(obj: JsValue) -> Float = "webapi_SVGLength" "get_value"

fn svg_length_set_value_ffi(obj: JsValue, value: JsValue) -> Unit = "webapi_SVGLength" "set_value"

fn svg_length_value_in_specified_units_ffi(obj: JsValue) -> Float = "webapi_SVGLength" "get_valueInSpecifiedUnits"

fn svg_length_set_value_in_specified_units_ffi(obj: JsValue, value_in_specified_units: JsValue) -> Unit = "webapi_SVGLength" "set_valueInSpecifiedUnits"

fn svg_length_value_as_string_ffi_wasm(obj: JsValue) -> JsValue = "webapi_SVGLength" "get_valueAsString"

///|
fn svg_length_value_as_string_ffi(obj: JsValue) -> String {
  jsvalue_to_string(svg_length_value_as_string_ffi_wasm(obj))
}

fn svg_length_set_value_as_string_ffi(obj: JsValue, value_as_string: JsValue) -> Unit = "webapi_SVGLength" "set_valueAsString"

fn svg_length_new_value_specified_units_ffi(obj: JsValue, unit_type: JsValue, value_in_specified_units: JsValue) -> Unit = "webapi_SVGLength" "newValueSpecifiedUnits"

fn svg_length_convert_to_specified_units_ffi(obj: JsValue, unit_type: JsValue) -> Unit = "webapi_SVGLength" "convertToSpecifiedUnits"