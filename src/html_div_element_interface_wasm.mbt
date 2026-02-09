///|
fn html_div_element_new_ffi() -> HTMLDivElement = "webapi_HTMLDivElement" "new"

///|
fn html_div_element_align_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLDivElement" "get_align"

///|
fn html_div_element_align_ffi(obj : JsValue) -> String {
  jsvalue_to_string(html_div_element_align_ffi_wasm(obj))
}

///|
fn html_div_element_set_align_ffi(obj : JsValue, align : JsValue) -> Unit = "webapi_HTMLDivElement" "set_align"
