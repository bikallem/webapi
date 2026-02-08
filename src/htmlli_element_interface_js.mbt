extern "js" fn htmlli_element_new_ffi() -> HTMLLIElement = "() => new HTMLLIElement()"

extern "js" fn htmlli_element_value_ffi(obj: JsValue) -> JsValue = "(obj) => obj.value"

extern "js" fn htmlli_element_set_value_ffi(obj: JsValue, value: JsValue) -> Unit = "(obj, value) => { obj.value = value; }"

extern "js" fn htmlli_element_type_ffi(obj: JsValue) -> JsValue = "(obj) => obj.type"

extern "js" fn htmlli_element_set_type_ffi(obj: JsValue, type_: JsValue) -> Unit = "(obj, type) => { obj.type = type; }"