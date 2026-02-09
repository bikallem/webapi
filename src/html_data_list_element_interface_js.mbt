///|
extern "js" fn html_data_list_element_new_ffi() -> HTMLDataListElement = "() => new HTMLDataListElement()"

///|
extern "js" fn html_data_list_element_options_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.options"

///|
fn html_data_list_element_options_ffi(obj : JsValue) -> HTMLCollection {
  html_data_list_element_options_ffi_js(obj).unsafe_cast()
}
