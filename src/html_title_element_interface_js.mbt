///|
extern "js" fn html_title_element_new_ffi() -> HTMLTitleElement = "() => new HTMLTitleElement()"

///|
extern "js" fn html_title_element_text_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.text"

///|
fn html_title_element_text_ffi(obj : JsValue) -> String {
  html_title_element_text_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn html_title_element_set_text_ffi(
  obj : JsValue,
  text : JsValue,
) -> Unit = "(obj, text) => { obj.text = text; }"
