extern "js" fn svg_number_value_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.value"

///|
fn svg_number_value_ffi(obj: JsValue) -> Float {
  svg_number_value_ffi_js(obj).unsafe_cast()
}

extern "js" fn svg_number_set_value_ffi(obj: JsValue, value: JsValue) -> Unit = "(obj, value) => { obj.value = value; }"