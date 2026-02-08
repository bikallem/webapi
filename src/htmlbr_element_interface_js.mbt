extern "js" fn htmlbr_element_new_ffi() -> HTMLBRElement = "() => new HTMLBRElement()"

extern "js" fn htmlbr_element_clear_ffi(obj: JsValue) -> JsValue = "(obj) => obj.clear"

extern "js" fn htmlbr_element_set_clear_ffi(obj: JsValue, clear: JsValue) -> Unit = "(obj, clear) => { obj.clear = clear; }"