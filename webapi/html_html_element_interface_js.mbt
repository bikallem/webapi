extern "js" fn html_html_element_new_ffi() -> HTMLHtmlElement = "() => new HTMLHtmlElement()"

extern "js" fn html_html_element_version_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.version"

///|
fn html_html_element_version_ffi(obj: JsValue) -> String {
  html_html_element_version_ffi_js(obj).unsafe_cast()
}

extern "js" fn html_html_element_set_version_ffi(obj: JsValue, version: JsValue) -> Unit = "(obj, version) => { obj.version = version; }"