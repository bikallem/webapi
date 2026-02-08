extern "js" fn htmlo_list_element_new_ffi() -> HTMLOListElement = "() => new HTMLOListElement()"

extern "js" fn htmlo_list_element_reversed_ffi(obj: JsValue) -> JsValue = "(obj) => obj.reversed"

extern "js" fn htmlo_list_element_set_reversed_ffi(obj: JsValue, reversed: JsValue) -> Unit = "(obj, reversed) => { obj.reversed = reversed; }"

extern "js" fn htmlo_list_element_start_ffi(obj: JsValue) -> JsValue = "(obj) => obj.start"

extern "js" fn htmlo_list_element_set_start_ffi(obj: JsValue, start: JsValue) -> Unit = "(obj, start) => { obj.start = start; }"

extern "js" fn htmlo_list_element_type_ffi(obj: JsValue) -> JsValue = "(obj) => obj.type"

extern "js" fn htmlo_list_element_set_type_ffi(obj: JsValue, type_: JsValue) -> Unit = "(obj, type) => { obj.type = type; }"

extern "js" fn htmlo_list_element_compact_ffi(obj: JsValue) -> JsValue = "(obj) => obj.compact"

extern "js" fn htmlo_list_element_set_compact_ffi(obj: JsValue, compact: JsValue) -> Unit = "(obj, compact) => { obj.compact = compact; }"