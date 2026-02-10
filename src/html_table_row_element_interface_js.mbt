extern "js" fn html_table_row_element_new_ffi() -> HTMLTableRowElement = "() => new HTMLTableRowElement()"

extern "js" fn html_table_row_element_row_index_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.rowIndex"

///|
fn html_table_row_element_row_index_ffi(obj: JsValue) -> Int {
  html_table_row_element_row_index_ffi_js(obj).unsafe_cast()
}

extern "js" fn html_table_row_element_section_row_index_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.sectionRowIndex"

///|
fn html_table_row_element_section_row_index_ffi(obj: JsValue) -> Int {
  html_table_row_element_section_row_index_ffi_js(obj).unsafe_cast()
}

extern "js" fn html_table_row_element_cells_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.cells"

///|
fn html_table_row_element_cells_ffi(obj: JsValue) -> HTMLCollection {
  html_table_row_element_cells_ffi_js(obj).unsafe_cast()
}

extern "js" fn html_table_row_element_insert_cell_ffi_js(obj: JsValue, index: JsValue) -> JsValue = "(obj, index) => obj.insertCell(index)"

///|
fn html_table_row_element_insert_cell_ffi(obj: JsValue, index: JsValue) -> HTMLTableCellElement {
  html_table_row_element_insert_cell_ffi_js(obj, index).unsafe_cast()
}

extern "js" fn html_table_row_element_delete_cell_ffi(obj: JsValue, index: JsValue) -> Unit = "(obj, index) => obj.deleteCell(index)"

extern "js" fn html_table_row_element_align_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.align"

///|
fn html_table_row_element_align_ffi(obj: JsValue) -> String {
  html_table_row_element_align_ffi_js(obj).unsafe_cast()
}

extern "js" fn html_table_row_element_set_align_ffi(obj: JsValue, align: JsValue) -> Unit = "(obj, align) => { obj.align = align; }"

extern "js" fn html_table_row_element_ch_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.ch"

///|
fn html_table_row_element_ch_ffi(obj: JsValue) -> String {
  html_table_row_element_ch_ffi_js(obj).unsafe_cast()
}

extern "js" fn html_table_row_element_set_ch_ffi(obj: JsValue, ch: JsValue) -> Unit = "(obj, ch) => { obj.ch = ch; }"

extern "js" fn html_table_row_element_ch_off_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.chOff"

///|
fn html_table_row_element_ch_off_ffi(obj: JsValue) -> String {
  html_table_row_element_ch_off_ffi_js(obj).unsafe_cast()
}

extern "js" fn html_table_row_element_set_ch_off_ffi(obj: JsValue, ch_off: JsValue) -> Unit = "(obj, chOff) => { obj.chOff = chOff; }"

extern "js" fn html_table_row_element_v_align_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.vAlign"

///|
fn html_table_row_element_v_align_ffi(obj: JsValue) -> String {
  html_table_row_element_v_align_ffi_js(obj).unsafe_cast()
}

extern "js" fn html_table_row_element_set_v_align_ffi(obj: JsValue, v_align: JsValue) -> Unit = "(obj, vAlign) => { obj.vAlign = vAlign; }"

extern "js" fn html_table_row_element_bg_color_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.bgColor"

///|
fn html_table_row_element_bg_color_ffi(obj: JsValue) -> String {
  html_table_row_element_bg_color_ffi_js(obj).unsafe_cast()
}

extern "js" fn html_table_row_element_set_bg_color_ffi(obj: JsValue, bg_color: JsValue) -> Unit = "(obj, bgColor) => { obj.bgColor = bgColor; }"