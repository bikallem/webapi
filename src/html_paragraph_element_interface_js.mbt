///|
extern "js" fn html_paragraph_element_new_ffi() -> HTMLParagraphElement = "() => new HTMLParagraphElement()"

///|
extern "js" fn html_paragraph_element_align_ffi(obj : JsValue) -> JsValue = "(obj) => obj.align"

///|
extern "js" fn html_paragraph_element_set_align_ffi(
  obj : JsValue,
  align : JsValue,
) -> Unit = "(obj, align) => { obj.align = align; }"
