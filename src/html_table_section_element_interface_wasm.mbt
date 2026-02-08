///|
fn html_table_section_element_new_ffi() -> HTMLTableSectionElement = "webapi_HTMLTableSectionElement" "new"

///|
fn html_table_section_element_rows_ffi(obj : JsValue) -> JsValue = "webapi_HTMLTableSectionElement" "get_rows"

///|
fn html_table_section_element_insert_row_ffi(
  obj : JsValue,
  index : JsValue,
) -> JsValue = "webapi_HTMLTableSectionElement" "insertRow"

///|
fn html_table_section_element_delete_row_ffi(
  obj : JsValue,
  index : JsValue,
) -> Unit = "webapi_HTMLTableSectionElement" "deleteRow"

///|
fn html_table_section_element_align_ffi(obj : JsValue) -> JsValue = "webapi_HTMLTableSectionElement" "get_align"

///|
fn html_table_section_element_set_align_ffi(
  obj : JsValue,
  align : JsValue,
) -> Unit = "webapi_HTMLTableSectionElement" "set_align"

///|
fn html_table_section_element_ch_ffi(obj : JsValue) -> JsValue = "webapi_HTMLTableSectionElement" "get_ch"

///|
fn html_table_section_element_set_ch_ffi(obj : JsValue, ch : JsValue) -> Unit = "webapi_HTMLTableSectionElement" "set_ch"

///|
fn html_table_section_element_ch_off_ffi(obj : JsValue) -> JsValue = "webapi_HTMLTableSectionElement" "get_chOff"

///|
fn html_table_section_element_set_ch_off_ffi(
  obj : JsValue,
  ch_off : JsValue,
) -> Unit = "webapi_HTMLTableSectionElement" "set_chOff"

///|
fn html_table_section_element_v_align_ffi(obj : JsValue) -> JsValue = "webapi_HTMLTableSectionElement" "get_vAlign"

///|
fn html_table_section_element_set_v_align_ffi(
  obj : JsValue,
  v_align : JsValue,
) -> Unit = "webapi_HTMLTableSectionElement" "set_vAlign"
