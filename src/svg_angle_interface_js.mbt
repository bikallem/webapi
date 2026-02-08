extern "js" fn svg_angle_unit_type_ffi(obj: JsValue) -> JsValue = "(obj) => obj.unitType"

extern "js" fn svg_angle_value_ffi(obj: JsValue) -> JsValue = "(obj) => obj.value"

extern "js" fn svg_angle_set_value_ffi(obj: JsValue, value: JsValue) -> Unit = "(obj, value) => { obj.value = value; }"

extern "js" fn svg_angle_value_in_specified_units_ffi(obj: JsValue) -> JsValue = "(obj) => obj.valueInSpecifiedUnits"

extern "js" fn svg_angle_set_value_in_specified_units_ffi(obj: JsValue, value_in_specified_units: JsValue) -> Unit = "(obj, valueInSpecifiedUnits) => { obj.valueInSpecifiedUnits = valueInSpecifiedUnits; }"

extern "js" fn svg_angle_value_as_string_ffi(obj: JsValue) -> JsValue = "(obj) => obj.valueAsString"

extern "js" fn svg_angle_set_value_as_string_ffi(obj: JsValue, value_as_string: JsValue) -> Unit = "(obj, valueAsString) => { obj.valueAsString = valueAsString; }"

extern "js" fn svg_angle_new_value_specified_units_ffi(obj: JsValue, unit_type: JsValue, value_in_specified_units: JsValue) -> Unit = "(obj, unit_type, value_in_specified_units) => obj.newValueSpecifiedUnits(unit_type, value_in_specified_units)"

extern "js" fn svg_angle_convert_to_specified_units_ffi(obj: JsValue, unit_type: JsValue) -> Unit = "(obj, unit_type) => obj.convertToSpecifiedUnits(unit_type)"