fn html_paragraph_element_new_ffi() -> HTMLParagraphElement = "webapi_HTMLParagraphElement" "new"

fn html_paragraph_element_align_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLParagraphElement" "get_align"

///|
fn html_paragraph_element_align_ffi(obj: JsValue) -> String {
  jsvalue_to_string(html_paragraph_element_align_ffi_wasm(obj))
}

fn html_paragraph_element_set_align_ffi(obj: JsValue, align: JsValue) -> Unit = "webapi_HTMLParagraphElement" "set_align"