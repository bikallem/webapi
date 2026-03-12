extern "js" fn html_table_element_new_ffi() -> HTMLTableElement = "() => new HTMLTableElement()"

extern "js" fn html_table_element_caption_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.caption"

///|
fn html_table_element_caption_ffi(obj: JsValue) -> HTMLTableCaptionElement {
  html_table_element_caption_ffi_js(obj).unsafe_cast()
}

extern "js" fn html_table_element_set_caption_ffi(obj: JsValue, caption: JsValue) -> Unit = "(obj, caption) => { obj.caption = caption; }"

extern "js" fn html_table_element_create_caption_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.createCaption()"

///|
fn html_table_element_create_caption_ffi(obj: JsValue) -> HTMLTableCaptionElement {
  html_table_element_create_caption_ffi_js(obj).unsafe_cast()
}

extern "js" fn html_table_element_delete_caption_ffi(obj: JsValue) -> Unit = "(obj) => obj.deleteCaption()"

extern "js" fn html_table_element_t_head_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.tHead"

///|
fn html_table_element_t_head_ffi(obj: JsValue) -> HTMLTableSectionElement {
  html_table_element_t_head_ffi_js(obj).unsafe_cast()
}

extern "js" fn html_table_element_set_t_head_ffi(obj: JsValue, t_head: JsValue) -> Unit = "(obj, tHead) => { obj.tHead = tHead; }"

extern "js" fn html_table_element_create_t_head_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.createTHead()"

///|
fn html_table_element_create_t_head_ffi(obj: JsValue) -> HTMLTableSectionElement {
  html_table_element_create_t_head_ffi_js(obj).unsafe_cast()
}

extern "js" fn html_table_element_delete_t_head_ffi(obj: JsValue) -> Unit = "(obj) => obj.deleteTHead()"

extern "js" fn html_table_element_t_foot_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.tFoot"

///|
fn html_table_element_t_foot_ffi(obj: JsValue) -> HTMLTableSectionElement {
  html_table_element_t_foot_ffi_js(obj).unsafe_cast()
}

extern "js" fn html_table_element_set_t_foot_ffi(obj: JsValue, t_foot: JsValue) -> Unit = "(obj, tFoot) => { obj.tFoot = tFoot; }"

extern "js" fn html_table_element_create_t_foot_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.createTFoot()"

///|
fn html_table_element_create_t_foot_ffi(obj: JsValue) -> HTMLTableSectionElement {
  html_table_element_create_t_foot_ffi_js(obj).unsafe_cast()
}

extern "js" fn html_table_element_delete_t_foot_ffi(obj: JsValue) -> Unit = "(obj) => obj.deleteTFoot()"

extern "js" fn html_table_element_t_bodies_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.tBodies"

///|
fn html_table_element_t_bodies_ffi(obj: JsValue) -> HTMLCollection {
  html_table_element_t_bodies_ffi_js(obj).unsafe_cast()
}

extern "js" fn html_table_element_create_t_body_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.createTBody()"

///|
fn html_table_element_create_t_body_ffi(obj: JsValue) -> HTMLTableSectionElement {
  html_table_element_create_t_body_ffi_js(obj).unsafe_cast()
}

extern "js" fn html_table_element_rows_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.rows"

///|
fn html_table_element_rows_ffi(obj: JsValue) -> HTMLCollection {
  html_table_element_rows_ffi_js(obj).unsafe_cast()
}

extern "js" fn html_table_element_insert_row_ffi_js(obj: JsValue, index: JsValue) -> JsValue = "(obj, index) => obj.insertRow(index)"

///|
fn html_table_element_insert_row_ffi(obj: JsValue, index: JsValue) -> HTMLTableRowElement {
  html_table_element_insert_row_ffi_js(obj, index).unsafe_cast()
}

extern "js" fn html_table_element_delete_row_ffi(obj: JsValue, index: JsValue) -> Unit = "(obj, index) => obj.deleteRow(index)"

extern "js" fn html_table_element_align_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.align"

///|
fn html_table_element_align_ffi(obj: JsValue) -> String {
  html_table_element_align_ffi_js(obj).unsafe_cast()
}

extern "js" fn html_table_element_set_align_ffi(obj: JsValue, align: JsValue) -> Unit = "(obj, align) => { obj.align = align; }"

extern "js" fn html_table_element_border_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.border"

///|
fn html_table_element_border_ffi(obj: JsValue) -> String {
  html_table_element_border_ffi_js(obj).unsafe_cast()
}

extern "js" fn html_table_element_set_border_ffi(obj: JsValue, border: JsValue) -> Unit = "(obj, border) => { obj.border = border; }"

extern "js" fn html_table_element_frame_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.frame"

///|
fn html_table_element_frame_ffi(obj: JsValue) -> String {
  html_table_element_frame_ffi_js(obj).unsafe_cast()
}

extern "js" fn html_table_element_set_frame_ffi(obj: JsValue, frame: JsValue) -> Unit = "(obj, frame) => { obj.frame = frame; }"

extern "js" fn html_table_element_rules_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.rules"

///|
fn html_table_element_rules_ffi(obj: JsValue) -> String {
  html_table_element_rules_ffi_js(obj).unsafe_cast()
}

extern "js" fn html_table_element_set_rules_ffi(obj: JsValue, rules: JsValue) -> Unit = "(obj, rules) => { obj.rules = rules; }"

extern "js" fn html_table_element_summary_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.summary"

///|
fn html_table_element_summary_ffi(obj: JsValue) -> String {
  html_table_element_summary_ffi_js(obj).unsafe_cast()
}

extern "js" fn html_table_element_set_summary_ffi(obj: JsValue, summary: JsValue) -> Unit = "(obj, summary) => { obj.summary = summary; }"

extern "js" fn html_table_element_width_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.width"

///|
fn html_table_element_width_ffi(obj: JsValue) -> String {
  html_table_element_width_ffi_js(obj).unsafe_cast()
}

extern "js" fn html_table_element_set_width_ffi(obj: JsValue, width: JsValue) -> Unit = "(obj, width) => { obj.width = width; }"

extern "js" fn html_table_element_bg_color_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.bgColor"

///|
fn html_table_element_bg_color_ffi(obj: JsValue) -> String {
  html_table_element_bg_color_ffi_js(obj).unsafe_cast()
}

extern "js" fn html_table_element_set_bg_color_ffi(obj: JsValue, bg_color: JsValue) -> Unit = "(obj, bgColor) => { obj.bgColor = bgColor; }"

extern "js" fn html_table_element_cell_padding_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.cellPadding"

///|
fn html_table_element_cell_padding_ffi(obj: JsValue) -> String {
  html_table_element_cell_padding_ffi_js(obj).unsafe_cast()
}

extern "js" fn html_table_element_set_cell_padding_ffi(obj: JsValue, cell_padding: JsValue) -> Unit = "(obj, cellPadding) => { obj.cellPadding = cellPadding; }"

extern "js" fn html_table_element_cell_spacing_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.cellSpacing"

///|
fn html_table_element_cell_spacing_ffi(obj: JsValue) -> String {
  html_table_element_cell_spacing_ffi_js(obj).unsafe_cast()
}

extern "js" fn html_table_element_set_cell_spacing_ffi(obj: JsValue, cell_spacing: JsValue) -> Unit = "(obj, cellSpacing) => { obj.cellSpacing = cellSpacing; }"