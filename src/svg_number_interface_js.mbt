extern "js" fn svg_number_value_ffi(obj: JsValue) -> JsValue = "(obj) => obj.value"

extern "js" fn svg_number_set_value_ffi(obj: JsValue, value: JsValue) -> Unit = "(obj, value) => { obj.value = value; }"