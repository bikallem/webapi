extern "js" fn htmld_list_element_new_ffi() -> HTMLDListElement = "() => new HTMLDListElement()"

extern "js" fn htmld_list_element_compact_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.compact"

///|
fn htmld_list_element_compact_ffi(obj: JsValue) -> Bool {
  htmld_list_element_compact_ffi_js(obj).unsafe_cast()
}

extern "js" fn htmld_list_element_set_compact_ffi(obj: JsValue, compact: JsValue) -> Unit = "(obj, compact) => { obj.compact = compact; }"