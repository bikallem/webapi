extern "js" fn radio_node_list_value_ffi(obj: JsValue) -> JsValue = "(obj) => obj.value"

extern "js" fn radio_node_list_set_value_ffi(obj: JsValue, value: JsValue) -> Unit = "(obj, value) => { obj.value = value; }"