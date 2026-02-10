extern "js" fn radio_node_list_value_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.value"

///|
fn radio_node_list_value_ffi(obj: JsValue) -> String {
  radio_node_list_value_ffi_js(obj).unsafe_cast()
}

extern "js" fn radio_node_list_set_value_ffi(obj: JsValue, value: JsValue) -> Unit = "(obj, value) => { obj.value = value; }"