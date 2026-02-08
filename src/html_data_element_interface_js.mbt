extern "js" fn html_data_element_new_ffi() -> HTMLDataElement = "() => new HTMLDataElement()"

extern "js" fn html_data_element_value_ffi(obj: JsValue) -> JsValue = "(obj) => obj.value"

extern "js" fn html_data_element_set_value_ffi(obj: JsValue, value: JsValue) -> Unit = "(obj, value) => { obj.value = value; }"