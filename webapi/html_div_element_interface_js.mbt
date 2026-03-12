extern "js" fn html_div_element_new_ffi() -> HTMLDivElement = "() => new HTMLDivElement()"

extern "js" fn html_div_element_align_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.align"

///|
fn html_div_element_align_ffi(obj: JsValue) -> String {
  html_div_element_align_ffi_js(obj).unsafe_cast()
}

extern "js" fn html_div_element_set_align_ffi(obj: JsValue, align: JsValue) -> Unit = "(obj, align) => { obj.align = align; }"