///|
fn html_table_col_element_new_ffi() -> HTMLTableColElement = "webapi_HTMLTableColElement" "new"

///|
fn html_table_col_element_span_ffi(obj : JsValue) -> UInt = "webapi_HTMLTableColElement" "get_span"

///|
fn html_table_col_element_set_span_ffi(obj : JsValue, span : JsValue) -> Unit = "webapi_HTMLTableColElement" "set_span"

///|
fn html_table_col_element_align_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLTableColElement" "get_align"

///|
fn html_table_col_element_align_ffi(obj : JsValue) -> String {
  jsvalue_to_string(html_table_col_element_align_ffi_wasm(obj))
}

///|
fn html_table_col_element_set_align_ffi(obj : JsValue, align : JsValue) -> Unit = "webapi_HTMLTableColElement" "set_align"

///|
fn html_table_col_element_ch_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLTableColElement" "get_ch"

///|
fn html_table_col_element_ch_ffi(obj : JsValue) -> String {
  jsvalue_to_string(html_table_col_element_ch_ffi_wasm(obj))
}

///|
fn html_table_col_element_set_ch_ffi(obj : JsValue, ch : JsValue) -> Unit = "webapi_HTMLTableColElement" "set_ch"

///|
fn html_table_col_element_ch_off_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLTableColElement" "get_chOff"

///|
fn html_table_col_element_ch_off_ffi(obj : JsValue) -> String {
  jsvalue_to_string(html_table_col_element_ch_off_ffi_wasm(obj))
}

///|
fn html_table_col_element_set_ch_off_ffi(
  obj : JsValue,
  ch_off : JsValue,
) -> Unit = "webapi_HTMLTableColElement" "set_chOff"

///|
fn html_table_col_element_v_align_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLTableColElement" "get_vAlign"

///|
fn html_table_col_element_v_align_ffi(obj : JsValue) -> String {
  jsvalue_to_string(html_table_col_element_v_align_ffi_wasm(obj))
}

///|
fn html_table_col_element_set_v_align_ffi(
  obj : JsValue,
  v_align : JsValue,
) -> Unit = "webapi_HTMLTableColElement" "set_vAlign"

///|
fn html_table_col_element_width_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLTableColElement" "get_width"

///|
fn html_table_col_element_width_ffi(obj : JsValue) -> String {
  jsvalue_to_string(html_table_col_element_width_ffi_wasm(obj))
}

///|
fn html_table_col_element_set_width_ffi(obj : JsValue, width : JsValue) -> Unit = "webapi_HTMLTableColElement" "set_width"
