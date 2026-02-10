extern "js" fn html_table_section_element_new_ffi() -> HTMLTableSectionElement = "() => new HTMLTableSectionElement()"

extern "js" fn html_table_section_element_rows_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.rows"

///|
fn html_table_section_element_rows_ffi(obj: JsValue) -> HTMLCollection {
  html_table_section_element_rows_ffi_js(obj).unsafe_cast()
}

extern "js" fn html_table_section_element_insert_row_ffi_js(obj: JsValue, index: JsValue) -> JsValue = "(obj, index) => obj.insertRow(index)"

///|
fn html_table_section_element_insert_row_ffi(obj: JsValue, index: JsValue) -> HTMLTableRowElement {
  html_table_section_element_insert_row_ffi_js(obj, index).unsafe_cast()
}

extern "js" fn html_table_section_element_delete_row_ffi(obj: JsValue, index: JsValue) -> Unit = "(obj, index) => obj.deleteRow(index)"

extern "js" fn html_table_section_element_align_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.align"

///|
fn html_table_section_element_align_ffi(obj: JsValue) -> String {
  html_table_section_element_align_ffi_js(obj).unsafe_cast()
}

extern "js" fn html_table_section_element_set_align_ffi(obj: JsValue, align: JsValue) -> Unit = "(obj, align) => { obj.align = align; }"

extern "js" fn html_table_section_element_ch_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.ch"

///|
fn html_table_section_element_ch_ffi(obj: JsValue) -> String {
  html_table_section_element_ch_ffi_js(obj).unsafe_cast()
}

extern "js" fn html_table_section_element_set_ch_ffi(obj: JsValue, ch: JsValue) -> Unit = "(obj, ch) => { obj.ch = ch; }"

extern "js" fn html_table_section_element_ch_off_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.chOff"

///|
fn html_table_section_element_ch_off_ffi(obj: JsValue) -> String {
  html_table_section_element_ch_off_ffi_js(obj).unsafe_cast()
}

extern "js" fn html_table_section_element_set_ch_off_ffi(obj: JsValue, ch_off: JsValue) -> Unit = "(obj, chOff) => { obj.chOff = chOff; }"

extern "js" fn html_table_section_element_v_align_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.vAlign"

///|
fn html_table_section_element_v_align_ffi(obj: JsValue) -> String {
  html_table_section_element_v_align_ffi_js(obj).unsafe_cast()
}

extern "js" fn html_table_section_element_set_v_align_ffi(obj: JsValue, v_align: JsValue) -> Unit = "(obj, vAlign) => { obj.vAlign = vAlign; }"