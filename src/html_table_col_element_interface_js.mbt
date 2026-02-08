///|
extern "js" fn html_table_col_element_new_ffi() -> HTMLTableColElement = "() => new HTMLTableColElement()"

///|
extern "js" fn html_table_col_element_span_ffi(obj : JsValue) -> JsValue = "(obj) => obj.span"

///|
extern "js" fn html_table_col_element_set_span_ffi(
  obj : JsValue,
  span : JsValue,
) -> Unit = "(obj, span) => { obj.span = span; }"

///|
extern "js" fn html_table_col_element_align_ffi(obj : JsValue) -> JsValue = "(obj) => obj.align"

///|
extern "js" fn html_table_col_element_set_align_ffi(
  obj : JsValue,
  align : JsValue,
) -> Unit = "(obj, align) => { obj.align = align; }"

///|
extern "js" fn html_table_col_element_ch_ffi(obj : JsValue) -> JsValue = "(obj) => obj.ch"

///|
extern "js" fn html_table_col_element_set_ch_ffi(
  obj : JsValue,
  ch : JsValue,
) -> Unit = "(obj, ch) => { obj.ch = ch; }"

///|
extern "js" fn html_table_col_element_ch_off_ffi(obj : JsValue) -> JsValue = "(obj) => obj.chOff"

///|
extern "js" fn html_table_col_element_set_ch_off_ffi(
  obj : JsValue,
  ch_off : JsValue,
) -> Unit = "(obj, chOff) => { obj.chOff = chOff; }"

///|
extern "js" fn html_table_col_element_v_align_ffi(obj : JsValue) -> JsValue = "(obj) => obj.vAlign"

///|
extern "js" fn html_table_col_element_set_v_align_ffi(
  obj : JsValue,
  v_align : JsValue,
) -> Unit = "(obj, vAlign) => { obj.vAlign = vAlign; }"

///|
extern "js" fn html_table_col_element_width_ffi(obj : JsValue) -> JsValue = "(obj) => obj.width"

///|
extern "js" fn html_table_col_element_set_width_ffi(
  obj : JsValue,
  width : JsValue,
) -> Unit = "(obj, width) => { obj.width = width; }"
