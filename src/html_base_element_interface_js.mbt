extern "js" fn html_base_element_new_ffi() -> HTMLBaseElement = "() => new HTMLBaseElement()"

extern "js" fn html_base_element_href_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.href"

///|
fn html_base_element_href_ffi(obj: JsValue) -> String {
  html_base_element_href_ffi_js(obj).unsafe_cast()
}

extern "js" fn html_base_element_set_href_ffi(obj: JsValue, href: JsValue) -> Unit = "(obj, href) => { obj.href = href; }"

extern "js" fn html_base_element_target_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.target"

///|
fn html_base_element_target_ffi(obj: JsValue) -> String {
  html_base_element_target_ffi_js(obj).unsafe_cast()
}

extern "js" fn html_base_element_set_target_ffi(obj: JsValue, target: JsValue) -> Unit = "(obj, target) => { obj.target = target; }"