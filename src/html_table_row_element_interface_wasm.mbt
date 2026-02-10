fn html_table_row_element_new_ffi() -> HTMLTableRowElement = "webapi_HTMLTableRowElement" "new"

fn html_table_row_element_row_index_ffi(obj: JsValue) -> Int = "webapi_HTMLTableRowElement" "get_rowIndex"

fn html_table_row_element_section_row_index_ffi(obj: JsValue) -> Int = "webapi_HTMLTableRowElement" "get_sectionRowIndex"

fn html_table_row_element_cells_ffi(obj: JsValue) -> HTMLCollection = "webapi_HTMLTableRowElement" "get_cells"

fn html_table_row_element_insert_cell_ffi(obj: JsValue, index: JsValue) -> HTMLTableCellElement = "webapi_HTMLTableRowElement" "insertCell"

fn html_table_row_element_delete_cell_ffi(obj: JsValue, index: JsValue) -> Unit = "webapi_HTMLTableRowElement" "deleteCell"

fn html_table_row_element_align_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLTableRowElement" "get_align"

///|
fn html_table_row_element_align_ffi(obj: JsValue) -> String {
  jsvalue_to_string(html_table_row_element_align_ffi_wasm(obj))
}

fn html_table_row_element_set_align_ffi(obj: JsValue, align: JsValue) -> Unit = "webapi_HTMLTableRowElement" "set_align"

fn html_table_row_element_ch_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLTableRowElement" "get_ch"

///|
fn html_table_row_element_ch_ffi(obj: JsValue) -> String {
  jsvalue_to_string(html_table_row_element_ch_ffi_wasm(obj))
}

fn html_table_row_element_set_ch_ffi(obj: JsValue, ch: JsValue) -> Unit = "webapi_HTMLTableRowElement" "set_ch"

fn html_table_row_element_ch_off_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLTableRowElement" "get_chOff"

///|
fn html_table_row_element_ch_off_ffi(obj: JsValue) -> String {
  jsvalue_to_string(html_table_row_element_ch_off_ffi_wasm(obj))
}

fn html_table_row_element_set_ch_off_ffi(obj: JsValue, ch_off: JsValue) -> Unit = "webapi_HTMLTableRowElement" "set_chOff"

fn html_table_row_element_v_align_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLTableRowElement" "get_vAlign"

///|
fn html_table_row_element_v_align_ffi(obj: JsValue) -> String {
  jsvalue_to_string(html_table_row_element_v_align_ffi_wasm(obj))
}

fn html_table_row_element_set_v_align_ffi(obj: JsValue, v_align: JsValue) -> Unit = "webapi_HTMLTableRowElement" "set_vAlign"

fn html_table_row_element_bg_color_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLTableRowElement" "get_bgColor"

///|
fn html_table_row_element_bg_color_ffi(obj: JsValue) -> String {
  jsvalue_to_string(html_table_row_element_bg_color_ffi_wasm(obj))
}

fn html_table_row_element_set_bg_color_ffi(obj: JsValue, bg_color: JsValue) -> Unit = "webapi_HTMLTableRowElement" "set_bgColor"