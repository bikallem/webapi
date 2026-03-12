fn html_title_element_new_ffi() -> HTMLTitleElement = "webapi_HTMLTitleElement" "new"

fn html_title_element_text_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLTitleElement" "get_text"

///|
fn html_title_element_text_ffi(obj: JsValue) -> String {
  jsvalue_to_string(html_title_element_text_ffi_wasm(obj))
}

fn html_title_element_set_text_ffi(obj: JsValue, text: JsValue) -> Unit = "webapi_HTMLTitleElement" "set_text"