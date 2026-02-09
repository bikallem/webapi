///|
extern "js" fn html_paragraph_element_new_ffi() -> HTMLParagraphElement = "() => new HTMLParagraphElement()"

///|
extern "js" fn html_paragraph_element_align_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.align"

///|
fn html_paragraph_element_align_ffi(obj : JsValue) -> String {
  html_paragraph_element_align_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn html_paragraph_element_set_align_ffi(
  obj : JsValue,
  align : JsValue,
) -> Unit = "(obj, align) => { obj.align = align; }"
