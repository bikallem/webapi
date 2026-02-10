extern "js" fn html_directory_element_new_ffi() -> HTMLDirectoryElement = "() => new HTMLDirectoryElement()"

extern "js" fn html_directory_element_compact_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.compact"

///|
fn html_directory_element_compact_ffi(obj: JsValue) -> Bool {
  html_directory_element_compact_ffi_js(obj).unsafe_cast()
}

extern "js" fn html_directory_element_set_compact_ffi(obj: JsValue, compact: JsValue) -> Unit = "(obj, compact) => { obj.compact = compact; }"