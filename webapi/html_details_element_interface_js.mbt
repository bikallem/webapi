extern "js" fn html_details_element_new_ffi() -> HTMLDetailsElement = "() => new HTMLDetailsElement()"

extern "js" fn html_details_element_name_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.name"

///|
fn html_details_element_name_ffi(obj: JsValue) -> String {
  html_details_element_name_ffi_js(obj).unsafe_cast()
}

extern "js" fn html_details_element_set_name_ffi(obj: JsValue, name: JsValue) -> Unit = "(obj, name) => { obj.name = name; }"

extern "js" fn html_details_element_open_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.open"

///|
fn html_details_element_open_ffi(obj: JsValue) -> Bool {
  html_details_element_open_ffi_js(obj).unsafe_cast()
}

extern "js" fn html_details_element_set_open_ffi(obj: JsValue, open: JsValue) -> Unit = "(obj, open) => { obj.open = open; }"