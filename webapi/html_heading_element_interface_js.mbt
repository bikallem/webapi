extern "js" fn html_heading_element_new_ffi() -> HTMLHeadingElement = "() => new HTMLHeadingElement()"

extern "js" fn html_heading_element_align_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.align"

///|
fn html_heading_element_align_ffi(obj: JsValue) -> String {
  html_heading_element_align_ffi_js(obj).unsafe_cast()
}

extern "js" fn html_heading_element_set_align_ffi(obj: JsValue, align: JsValue) -> Unit = "(obj, align) => { obj.align = align; }"