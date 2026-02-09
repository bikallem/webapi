///|
fn html_table_caption_element_new_ffi() -> HTMLTableCaptionElement = "webapi_HTMLTableCaptionElement" "new"

///|
fn html_table_caption_element_align_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLTableCaptionElement" "get_align"

///|
fn html_table_caption_element_align_ffi(obj : JsValue) -> String {
  jsvalue_to_string(html_table_caption_element_align_ffi_wasm(obj))
}

///|
fn html_table_caption_element_set_align_ffi(
  obj : JsValue,
  align : JsValue,
) -> Unit = "webapi_HTMLTableCaptionElement" "set_align"
