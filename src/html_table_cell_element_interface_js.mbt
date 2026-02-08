///|
extern "js" fn html_table_cell_element_new_ffi() -> HTMLTableCellElement = "() => new HTMLTableCellElement()"

///|
extern "js" fn html_table_cell_element_col_span_ffi(obj : JsValue) -> JsValue = "(obj) => obj.colSpan"

///|
extern "js" fn html_table_cell_element_set_col_span_ffi(
  obj : JsValue,
  col_span : JsValue,
) -> Unit = "(obj, colSpan) => { obj.colSpan = colSpan; }"

///|
extern "js" fn html_table_cell_element_row_span_ffi(obj : JsValue) -> JsValue = "(obj) => obj.rowSpan"

///|
extern "js" fn html_table_cell_element_set_row_span_ffi(
  obj : JsValue,
  row_span : JsValue,
) -> Unit = "(obj, rowSpan) => { obj.rowSpan = rowSpan; }"

///|
extern "js" fn html_table_cell_element_headers_ffi(obj : JsValue) -> JsValue = "(obj) => obj.headers"

///|
extern "js" fn html_table_cell_element_set_headers_ffi(
  obj : JsValue,
  headers : JsValue,
) -> Unit = "(obj, headers) => { obj.headers = headers; }"

///|
extern "js" fn html_table_cell_element_cell_index_ffi(obj : JsValue) -> JsValue = "(obj) => obj.cellIndex"

///|
extern "js" fn html_table_cell_element_scope_ffi(obj : JsValue) -> JsValue = "(obj) => obj.scope"

///|
extern "js" fn html_table_cell_element_set_scope_ffi(
  obj : JsValue,
  scope : JsValue,
) -> Unit = "(obj, scope) => { obj.scope = scope; }"

///|
extern "js" fn html_table_cell_element_abbr_ffi(obj : JsValue) -> JsValue = "(obj) => obj.abbr"

///|
extern "js" fn html_table_cell_element_set_abbr_ffi(
  obj : JsValue,
  abbr : JsValue,
) -> Unit = "(obj, abbr) => { obj.abbr = abbr; }"

///|
extern "js" fn html_table_cell_element_align_ffi(obj : JsValue) -> JsValue = "(obj) => obj.align"

///|
extern "js" fn html_table_cell_element_set_align_ffi(
  obj : JsValue,
  align : JsValue,
) -> Unit = "(obj, align) => { obj.align = align; }"

///|
extern "js" fn html_table_cell_element_axis_ffi(obj : JsValue) -> JsValue = "(obj) => obj.axis"

///|
extern "js" fn html_table_cell_element_set_axis_ffi(
  obj : JsValue,
  axis : JsValue,
) -> Unit = "(obj, axis) => { obj.axis = axis; }"

///|
extern "js" fn html_table_cell_element_height_ffi(obj : JsValue) -> JsValue = "(obj) => obj.height"

///|
extern "js" fn html_table_cell_element_set_height_ffi(
  obj : JsValue,
  height : JsValue,
) -> Unit = "(obj, height) => { obj.height = height; }"

///|
extern "js" fn html_table_cell_element_width_ffi(obj : JsValue) -> JsValue = "(obj) => obj.width"

///|
extern "js" fn html_table_cell_element_set_width_ffi(
  obj : JsValue,
  width : JsValue,
) -> Unit = "(obj, width) => { obj.width = width; }"

///|
extern "js" fn html_table_cell_element_ch_ffi(obj : JsValue) -> JsValue = "(obj) => obj.ch"

///|
extern "js" fn html_table_cell_element_set_ch_ffi(
  obj : JsValue,
  ch : JsValue,
) -> Unit = "(obj, ch) => { obj.ch = ch; }"

///|
extern "js" fn html_table_cell_element_ch_off_ffi(obj : JsValue) -> JsValue = "(obj) => obj.chOff"

///|
extern "js" fn html_table_cell_element_set_ch_off_ffi(
  obj : JsValue,
  ch_off : JsValue,
) -> Unit = "(obj, chOff) => { obj.chOff = chOff; }"

///|
extern "js" fn html_table_cell_element_no_wrap_ffi(obj : JsValue) -> JsValue = "(obj) => obj.noWrap"

///|
extern "js" fn html_table_cell_element_set_no_wrap_ffi(
  obj : JsValue,
  no_wrap : JsValue,
) -> Unit = "(obj, noWrap) => { obj.noWrap = noWrap; }"

///|
extern "js" fn html_table_cell_element_v_align_ffi(obj : JsValue) -> JsValue = "(obj) => obj.vAlign"

///|
extern "js" fn html_table_cell_element_set_v_align_ffi(
  obj : JsValue,
  v_align : JsValue,
) -> Unit = "(obj, vAlign) => { obj.vAlign = vAlign; }"

///|
extern "js" fn html_table_cell_element_bg_color_ffi(obj : JsValue) -> JsValue = "(obj) => obj.bgColor"

///|
extern "js" fn html_table_cell_element_set_bg_color_ffi(
  obj : JsValue,
  bg_color : JsValue,
) -> Unit = "(obj, bgColor) => { obj.bgColor = bgColor; }"
