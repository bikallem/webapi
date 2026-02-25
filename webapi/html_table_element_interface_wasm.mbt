///|
fn html_table_element_new_ffi() -> HTMLTableElement = "webapi_HTMLTableElement" "new"

///|
fn html_table_element_caption_ffi(obj : JsValue) -> HTMLTableCaptionElement = "webapi_HTMLTableElement" "get_caption"

///|
fn html_table_element_set_caption_ffi(obj : JsValue, caption : JsValue) -> Unit = "webapi_HTMLTableElement" "set_caption"

///|
fn html_table_element_create_caption_ffi(
  obj : JsValue,
) -> HTMLTableCaptionElement = "webapi_HTMLTableElement" "createCaption"

///|
fn html_table_element_delete_caption_ffi(obj : JsValue) -> Unit = "webapi_HTMLTableElement" "deleteCaption"

///|
fn html_table_element_t_head_ffi(obj : JsValue) -> HTMLTableSectionElement = "webapi_HTMLTableElement" "get_tHead"

///|
fn html_table_element_set_t_head_ffi(obj : JsValue, t_head : JsValue) -> Unit = "webapi_HTMLTableElement" "set_tHead"

///|
fn html_table_element_create_t_head_ffi(
  obj : JsValue,
) -> HTMLTableSectionElement = "webapi_HTMLTableElement" "createTHead"

///|
fn html_table_element_delete_t_head_ffi(obj : JsValue) -> Unit = "webapi_HTMLTableElement" "deleteTHead"

///|
fn html_table_element_t_foot_ffi(obj : JsValue) -> HTMLTableSectionElement = "webapi_HTMLTableElement" "get_tFoot"

///|
fn html_table_element_set_t_foot_ffi(obj : JsValue, t_foot : JsValue) -> Unit = "webapi_HTMLTableElement" "set_tFoot"

///|
fn html_table_element_create_t_foot_ffi(
  obj : JsValue,
) -> HTMLTableSectionElement = "webapi_HTMLTableElement" "createTFoot"

///|
fn html_table_element_delete_t_foot_ffi(obj : JsValue) -> Unit = "webapi_HTMLTableElement" "deleteTFoot"

///|
fn html_table_element_t_bodies_ffi(obj : JsValue) -> HTMLCollection = "webapi_HTMLTableElement" "get_tBodies"

///|
fn html_table_element_create_t_body_ffi(
  obj : JsValue,
) -> HTMLTableSectionElement = "webapi_HTMLTableElement" "createTBody"

///|
fn html_table_element_rows_ffi(obj : JsValue) -> HTMLCollection = "webapi_HTMLTableElement" "get_rows"

///|
fn html_table_element_insert_row_ffi(
  obj : JsValue,
  index : JsValue,
) -> HTMLTableRowElement = "webapi_HTMLTableElement" "insertRow"

///|
fn html_table_element_delete_row_ffi(obj : JsValue, index : JsValue) -> Unit = "webapi_HTMLTableElement" "deleteRow"

///|
fn html_table_element_align_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLTableElement" "get_align"

///|
fn html_table_element_align_ffi(obj : JsValue) -> String {
  jsvalue_to_string(html_table_element_align_ffi_wasm(obj))
}

///|
fn html_table_element_set_align_ffi(obj : JsValue, align : JsValue) -> Unit = "webapi_HTMLTableElement" "set_align"

///|
fn html_table_element_border_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLTableElement" "get_border"

///|
fn html_table_element_border_ffi(obj : JsValue) -> String {
  jsvalue_to_string(html_table_element_border_ffi_wasm(obj))
}

///|
fn html_table_element_set_border_ffi(obj : JsValue, border : JsValue) -> Unit = "webapi_HTMLTableElement" "set_border"

///|
fn html_table_element_frame_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLTableElement" "get_frame"

///|
fn html_table_element_frame_ffi(obj : JsValue) -> String {
  jsvalue_to_string(html_table_element_frame_ffi_wasm(obj))
}

///|
fn html_table_element_set_frame_ffi(obj : JsValue, frame : JsValue) -> Unit = "webapi_HTMLTableElement" "set_frame"

///|
fn html_table_element_rules_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLTableElement" "get_rules"

///|
fn html_table_element_rules_ffi(obj : JsValue) -> String {
  jsvalue_to_string(html_table_element_rules_ffi_wasm(obj))
}

///|
fn html_table_element_set_rules_ffi(obj : JsValue, rules : JsValue) -> Unit = "webapi_HTMLTableElement" "set_rules"

///|
fn html_table_element_summary_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLTableElement" "get_summary"

///|
fn html_table_element_summary_ffi(obj : JsValue) -> String {
  jsvalue_to_string(html_table_element_summary_ffi_wasm(obj))
}

///|
fn html_table_element_set_summary_ffi(obj : JsValue, summary : JsValue) -> Unit = "webapi_HTMLTableElement" "set_summary"

///|
fn html_table_element_width_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLTableElement" "get_width"

///|
fn html_table_element_width_ffi(obj : JsValue) -> String {
  jsvalue_to_string(html_table_element_width_ffi_wasm(obj))
}

///|
fn html_table_element_set_width_ffi(obj : JsValue, width : JsValue) -> Unit = "webapi_HTMLTableElement" "set_width"

///|
fn html_table_element_bg_color_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLTableElement" "get_bgColor"

///|
fn html_table_element_bg_color_ffi(obj : JsValue) -> String {
  jsvalue_to_string(html_table_element_bg_color_ffi_wasm(obj))
}

///|
fn html_table_element_set_bg_color_ffi(
  obj : JsValue,
  bg_color : JsValue,
) -> Unit = "webapi_HTMLTableElement" "set_bgColor"

///|
fn html_table_element_cell_padding_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLTableElement" "get_cellPadding"

///|
fn html_table_element_cell_padding_ffi(obj : JsValue) -> String {
  jsvalue_to_string(html_table_element_cell_padding_ffi_wasm(obj))
}

///|
fn html_table_element_set_cell_padding_ffi(
  obj : JsValue,
  cell_padding : JsValue,
) -> Unit = "webapi_HTMLTableElement" "set_cellPadding"

///|
fn html_table_element_cell_spacing_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLTableElement" "get_cellSpacing"

///|
fn html_table_element_cell_spacing_ffi(obj : JsValue) -> String {
  jsvalue_to_string(html_table_element_cell_spacing_ffi_wasm(obj))
}

///|
fn html_table_element_set_cell_spacing_ffi(
  obj : JsValue,
  cell_spacing : JsValue,
) -> Unit = "webapi_HTMLTableElement" "set_cellSpacing"
