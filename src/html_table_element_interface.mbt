// Do not edit. This file is generated.
// MoonBit type: HTMLTableElement
// Specifications: html.idl

///|
#external
pub type HTMLTableElement

///|
pub impl TJsValue for HTMLTableElement with to_js(self : HTMLTableElement) -> JsValue = "%identity"

///|
pub fn[T : THTMLTableElement] HTMLTableElement::into(
  self : HTMLTableElement,
) -> T = "%identity"

///|
pub impl THTMLTableElement for HTMLTableElement

///|
pub impl THTMLElement for HTMLTableElement

///|
pub impl TElement for HTMLTableElement

///|
pub impl TNode for HTMLTableElement

///|
pub impl TEventTarget for HTMLTableElement

///|
extern "js" fn html_table_element_new_ffi() -> HTMLTableElement = "() => new HTMLTableElement()"

///|
pub fn HTMLTableElement::new() -> HTMLTableElement {
  html_table_element_new_ffi()
}

///|
pub trait THTMLTableElement: THTMLElement {
  caption(self : Self) -> HTMLTableCaptionElement = _
  set_caption(self : Self, caption : HTMLTableCaptionElement) -> Unit = _
  create_caption(self : Self) -> HTMLTableCaptionElement = _
  delete_caption(self : Self) -> Unit = _
  t_head(self : Self) -> HTMLTableSectionElement = _
  set_t_head(self : Self, t_head : HTMLTableSectionElement) -> Unit = _
  create_t_head(self : Self) -> HTMLTableSectionElement = _
  delete_t_head(self : Self) -> Unit = _
  t_foot(self : Self) -> HTMLTableSectionElement = _
  set_t_foot(self : Self, t_foot : HTMLTableSectionElement) -> Unit = _
  create_t_foot(self : Self) -> HTMLTableSectionElement = _
  delete_t_foot(self : Self) -> Unit = _
  t_bodies(self : Self) -> HTMLCollection = _
  create_t_body(self : Self) -> HTMLTableSectionElement = _
  rows(self : Self) -> HTMLCollection = _
  insert_row(self : Self, index? : Int) -> HTMLTableRowElement = _
  delete_row(self : Self, index : Int) -> Unit = _
  align(self : Self) -> String = _
  set_align(self : Self, align : String) -> Unit = _
  border(self : Self) -> String = _
  set_border(self : Self, border : String) -> Unit = _
  frame(self : Self) -> String = _
  set_frame(self : Self, frame : String) -> Unit = _
  rules(self : Self) -> String = _
  set_rules(self : Self, rules : String) -> Unit = _
  summary(self : Self) -> String = _
  set_summary(self : Self, summary : String) -> Unit = _
  width(self : Self) -> String = _
  set_width(self : Self, width : String) -> Unit = _
  bg_color(self : Self) -> String = _
  set_bg_color(self : Self, bg_color : String) -> Unit = _
  cell_padding(self : Self) -> String = _
  set_cell_padding(self : Self, cell_padding : String) -> Unit = _
  cell_spacing(self : Self) -> String = _
  set_cell_spacing(self : Self, cell_spacing : String) -> Unit = _
}

///|
extern "js" fn html_table_element_caption_ffi(
  obj : JsValue,
) -> HTMLTableCaptionElement = "(obj) => obj.caption"

///|
impl THTMLTableElement with caption(self : Self) -> HTMLTableCaptionElement {
  html_table_element_caption_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_table_element_set_caption_ffi(
  obj : JsValue,
  caption : JsValue,
) -> Unit = "(obj, caption) => { obj.caption = caption; }"

///|
impl THTMLTableElement with set_caption(
  self : Self,
  caption : HTMLTableCaptionElement,
) -> Unit {
  html_table_element_set_caption_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(caption),
  )
}

///|
extern "js" fn html_table_element_create_caption_ffi(
  obj : JsValue,
) -> HTMLTableCaptionElement = "(obj) => obj.createCaption(obj)"

///|
impl THTMLTableElement with create_caption(self : Self) -> HTMLTableCaptionElement {
  html_table_element_create_caption_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_table_element_delete_caption_ffi(obj : JsValue) -> Unit = "(obj) => obj.deleteCaption(obj)"

///|
impl THTMLTableElement with delete_caption(self : Self) -> Unit {
  html_table_element_delete_caption_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_table_element_t_head_ffi(
  obj : JsValue,
) -> HTMLTableSectionElement = "(obj) => obj.tHead"

///|
impl THTMLTableElement with t_head(self : Self) -> HTMLTableSectionElement {
  html_table_element_t_head_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_table_element_set_t_head_ffi(
  obj : JsValue,
  t_head : JsValue,
) -> Unit = "(obj, tHead) => { obj.tHead = tHead; }"

///|
impl THTMLTableElement with set_t_head(
  self : Self,
  t_head : HTMLTableSectionElement,
) -> Unit {
  html_table_element_set_t_head_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(t_head),
  )
}

///|
extern "js" fn html_table_element_create_t_head_ffi(
  obj : JsValue,
) -> HTMLTableSectionElement = "(obj) => obj.createTHead(obj)"

///|
impl THTMLTableElement with create_t_head(self : Self) -> HTMLTableSectionElement {
  html_table_element_create_t_head_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_table_element_delete_t_head_ffi(obj : JsValue) -> Unit = "(obj) => obj.deleteTHead(obj)"

///|
impl THTMLTableElement with delete_t_head(self : Self) -> Unit {
  html_table_element_delete_t_head_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_table_element_t_foot_ffi(
  obj : JsValue,
) -> HTMLTableSectionElement = "(obj) => obj.tFoot"

///|
impl THTMLTableElement with t_foot(self : Self) -> HTMLTableSectionElement {
  html_table_element_t_foot_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_table_element_set_t_foot_ffi(
  obj : JsValue,
  t_foot : JsValue,
) -> Unit = "(obj, tFoot) => { obj.tFoot = tFoot; }"

///|
impl THTMLTableElement with set_t_foot(
  self : Self,
  t_foot : HTMLTableSectionElement,
) -> Unit {
  html_table_element_set_t_foot_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(t_foot),
  )
}

///|
extern "js" fn html_table_element_create_t_foot_ffi(
  obj : JsValue,
) -> HTMLTableSectionElement = "(obj) => obj.createTFoot(obj)"

///|
impl THTMLTableElement with create_t_foot(self : Self) -> HTMLTableSectionElement {
  html_table_element_create_t_foot_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_table_element_delete_t_foot_ffi(obj : JsValue) -> Unit = "(obj) => obj.deleteTFoot(obj)"

///|
impl THTMLTableElement with delete_t_foot(self : Self) -> Unit {
  html_table_element_delete_t_foot_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_table_element_t_bodies_ffi(obj : JsValue) -> HTMLCollection = "(obj) => obj.tBodies"

///|
impl THTMLTableElement with t_bodies(self : Self) -> HTMLCollection {
  html_table_element_t_bodies_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_table_element_create_t_body_ffi(
  obj : JsValue,
) -> HTMLTableSectionElement = "(obj) => obj.createTBody(obj)"

///|
impl THTMLTableElement with create_t_body(self : Self) -> HTMLTableSectionElement {
  html_table_element_create_t_body_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_table_element_rows_ffi(obj : JsValue) -> HTMLCollection = "(obj) => obj.rows"

///|
impl THTMLTableElement with rows(self : Self) -> HTMLCollection {
  html_table_element_rows_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_table_element_insert_row_ffi(
  obj : JsValue,
  index : JsValue,
) -> HTMLTableRowElement = "(obj, index) => obj.insertRow(obj, index)"

///|
impl THTMLTableElement with insert_row(self : Self, index? : Int = (-1 : Int)) -> HTMLTableRowElement {
  html_table_element_insert_row_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(index),
  )
}

///|
extern "js" fn html_table_element_delete_row_ffi(
  obj : JsValue,
  index : JsValue,
) -> Unit = "(obj, index) => obj.deleteRow(obj, index)"

///|
impl THTMLTableElement with delete_row(self : Self, index : Int) -> Unit {
  html_table_element_delete_row_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(index),
  )
}

///|
extern "js" fn html_table_element_align_ffi(obj : JsValue) -> String = "(obj) => obj.align"

///|
impl THTMLTableElement with align(self : Self) -> String {
  html_table_element_align_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_table_element_set_align_ffi(
  obj : JsValue,
  align : JsValue,
) -> Unit = "(obj, align) => { obj.align = align; }"

///|
impl THTMLTableElement with set_align(self : Self, align : String) -> Unit {
  html_table_element_set_align_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(align),
  )
}

///|
extern "js" fn html_table_element_border_ffi(obj : JsValue) -> String = "(obj) => obj.border"

///|
impl THTMLTableElement with border(self : Self) -> String {
  html_table_element_border_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_table_element_set_border_ffi(
  obj : JsValue,
  border : JsValue,
) -> Unit = "(obj, border) => { obj.border = border; }"

///|
impl THTMLTableElement with set_border(self : Self, border : String) -> Unit {
  html_table_element_set_border_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(border),
  )
}

///|
extern "js" fn html_table_element_frame_ffi(obj : JsValue) -> String = "(obj) => obj.frame"

///|
impl THTMLTableElement with frame(self : Self) -> String {
  html_table_element_frame_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_table_element_set_frame_ffi(
  obj : JsValue,
  frame : JsValue,
) -> Unit = "(obj, frame) => { obj.frame = frame; }"

///|
impl THTMLTableElement with set_frame(self : Self, frame : String) -> Unit {
  html_table_element_set_frame_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(frame),
  )
}

///|
extern "js" fn html_table_element_rules_ffi(obj : JsValue) -> String = "(obj) => obj.rules"

///|
impl THTMLTableElement with rules(self : Self) -> String {
  html_table_element_rules_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_table_element_set_rules_ffi(
  obj : JsValue,
  rules : JsValue,
) -> Unit = "(obj, rules) => { obj.rules = rules; }"

///|
impl THTMLTableElement with set_rules(self : Self, rules : String) -> Unit {
  html_table_element_set_rules_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(rules),
  )
}

///|
extern "js" fn html_table_element_summary_ffi(obj : JsValue) -> String = "(obj) => obj.summary"

///|
impl THTMLTableElement with summary(self : Self) -> String {
  html_table_element_summary_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_table_element_set_summary_ffi(
  obj : JsValue,
  summary : JsValue,
) -> Unit = "(obj, summary) => { obj.summary = summary; }"

///|
impl THTMLTableElement with set_summary(self : Self, summary : String) -> Unit {
  html_table_element_set_summary_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(summary),
  )
}

///|
extern "js" fn html_table_element_width_ffi(obj : JsValue) -> String = "(obj) => obj.width"

///|
impl THTMLTableElement with width(self : Self) -> String {
  html_table_element_width_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_table_element_set_width_ffi(
  obj : JsValue,
  width : JsValue,
) -> Unit = "(obj, width) => { obj.width = width; }"

///|
impl THTMLTableElement with set_width(self : Self, width : String) -> Unit {
  html_table_element_set_width_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(width),
  )
}

///|
extern "js" fn html_table_element_bg_color_ffi(obj : JsValue) -> String = "(obj) => obj.bgColor"

///|
impl THTMLTableElement with bg_color(self : Self) -> String {
  html_table_element_bg_color_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_table_element_set_bg_color_ffi(
  obj : JsValue,
  bg_color : JsValue,
) -> Unit = "(obj, bgColor) => { obj.bgColor = bgColor; }"

///|
impl THTMLTableElement with set_bg_color(self : Self, bg_color : String) -> Unit {
  html_table_element_set_bg_color_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(bg_color),
  )
}

///|
extern "js" fn html_table_element_cell_padding_ffi(obj : JsValue) -> String = "(obj) => obj.cellPadding"

///|
impl THTMLTableElement with cell_padding(self : Self) -> String {
  html_table_element_cell_padding_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_table_element_set_cell_padding_ffi(
  obj : JsValue,
  cell_padding : JsValue,
) -> Unit = "(obj, cellPadding) => { obj.cellPadding = cellPadding; }"

///|
impl THTMLTableElement with set_cell_padding(self : Self, cell_padding : String) -> Unit {
  html_table_element_set_cell_padding_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(cell_padding),
  )
}

///|
extern "js" fn html_table_element_cell_spacing_ffi(obj : JsValue) -> String = "(obj) => obj.cellSpacing"

///|
impl THTMLTableElement with cell_spacing(self : Self) -> String {
  html_table_element_cell_spacing_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_table_element_set_cell_spacing_ffi(
  obj : JsValue,
  cell_spacing : JsValue,
) -> Unit = "(obj, cellSpacing) => { obj.cellSpacing = cellSpacing; }"

///|
impl THTMLTableElement with set_cell_spacing(self : Self, cell_spacing : String) -> Unit {
  html_table_element_set_cell_spacing_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(cell_spacing),
  )
}
