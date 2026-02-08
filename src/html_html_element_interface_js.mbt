extern "js" fn html_html_element_new_ffi() -> HTMLHtmlElement = "() => new HTMLHtmlElement()"

extern "js" fn html_html_element_version_ffi(obj: JsValue) -> JsValue = "(obj) => obj.version"

extern "js" fn html_html_element_set_version_ffi(obj: JsValue, version: JsValue) -> Unit = "(obj, version) => { obj.version = version; }"