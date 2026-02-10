extern "js" fn html_table_caption_element_new_ffi() -> HTMLTableCaptionElement = "() => new HTMLTableCaptionElement()"

extern "js" fn html_table_caption_element_align_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.align"

///|
fn html_table_caption_element_align_ffi(obj: JsValue) -> String {
  html_table_caption_element_align_ffi_js(obj).unsafe_cast()
}

extern "js" fn html_table_caption_element_set_align_ffi(obj: JsValue, align: JsValue) -> Unit = "(obj, align) => { obj.align = align; }"