///|
extern "js" fn html_heading_element_new_ffi() -> HTMLHeadingElement = "() => new HTMLHeadingElement()"

///|
extern "js" fn html_heading_element_align_ffi(obj : JsValue) -> JsValue = "(obj) => obj.align"

///|
extern "js" fn html_heading_element_set_align_ffi(
  obj : JsValue,
  align : JsValue,
) -> Unit = "(obj, align) => { obj.align = align; }"
