extern "js" fn html_pre_element_new_ffi() -> HTMLPreElement = "() => new HTMLPreElement()"

extern "js" fn html_pre_element_width_ffi(obj: JsValue) -> JsValue = "(obj) => obj.width"

extern "js" fn html_pre_element_set_width_ffi(obj: JsValue, width: JsValue) -> Unit = "(obj, width) => { obj.width = width; }"