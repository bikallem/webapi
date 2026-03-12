// Do not edit. This file is generated.
// MoonBit type: HTMLTableElement
// Specifications: html.idl

///|
/// [HTMLTableElement](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableElement)
#external
pub type HTMLTableElement

///|
pub impl TJsValue for HTMLTableElement with to_js(self : HTMLTableElement) -> JsValue = "%identity"

///|
pub impl FromJsAny for HTMLTableElement with from_js_any(value : JsAny) -> HTMLTableElement = "%identity"

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
pub fn HTMLTableElement::new() -> HTMLTableElement {
  html_table_element_new_ffi()
}

///|
/// [HTMLTableElement](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableElement) interface.
pub trait THTMLTableElement: THTMLElement {
  caption(self : Self) -> HTMLTableCaptionElement = _
  set_caption(self : Self, caption : &THTMLTableCaptionElement) -> Unit = _
  create_caption(self : Self) -> HTMLTableCaptionElement = _
  delete_caption(self : Self) -> Unit = _
  t_head(self : Self) -> HTMLTableSectionElement = _
  set_t_head(self : Self, t_head : &THTMLTableSectionElement) -> Unit = _
  create_t_head(self : Self) -> HTMLTableSectionElement = _
  delete_t_head(self : Self) -> Unit = _
  t_foot(self : Self) -> HTMLTableSectionElement = _
  set_t_foot(self : Self, t_foot : &THTMLTableSectionElement) -> Unit = _
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
/// [HTMLTableElement.caption](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableElement/caption)
impl THTMLTableElement with caption(self : Self) -> HTMLTableCaptionElement {
  html_table_element_caption_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLTableElement.caption](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableElement/caption)
impl THTMLTableElement with set_caption(
  self : Self,
  caption : &THTMLTableCaptionElement,
) -> Unit {
  html_table_element_set_caption_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(caption),
  )
}

///|
/// [HTMLTableElement.createCaption](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableElement/createCaption)
impl THTMLTableElement with create_caption(self : Self) -> HTMLTableCaptionElement {
  html_table_element_create_caption_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLTableElement.deleteCaption](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableElement/deleteCaption)
impl THTMLTableElement with delete_caption(self : Self) -> Unit {
  html_table_element_delete_caption_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLTableElement.tHead](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableElement/tHead)
impl THTMLTableElement with t_head(self : Self) -> HTMLTableSectionElement {
  html_table_element_t_head_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLTableElement.tHead](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableElement/tHead)
impl THTMLTableElement with set_t_head(
  self : Self,
  t_head : &THTMLTableSectionElement,
) -> Unit {
  html_table_element_set_t_head_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(t_head),
  )
}

///|
/// [HTMLTableElement.createTHead](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableElement/createTHead)
impl THTMLTableElement with create_t_head(self : Self) -> HTMLTableSectionElement {
  html_table_element_create_t_head_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLTableElement.deleteTHead](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableElement/deleteTHead)
impl THTMLTableElement with delete_t_head(self : Self) -> Unit {
  html_table_element_delete_t_head_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLTableElement.tFoot](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableElement/tFoot)
impl THTMLTableElement with t_foot(self : Self) -> HTMLTableSectionElement {
  html_table_element_t_foot_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLTableElement.tFoot](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableElement/tFoot)
impl THTMLTableElement with set_t_foot(
  self : Self,
  t_foot : &THTMLTableSectionElement,
) -> Unit {
  html_table_element_set_t_foot_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(t_foot),
  )
}

///|
/// [HTMLTableElement.createTFoot](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableElement/createTFoot)
impl THTMLTableElement with create_t_foot(self : Self) -> HTMLTableSectionElement {
  html_table_element_create_t_foot_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLTableElement.deleteTFoot](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableElement/deleteTFoot)
impl THTMLTableElement with delete_t_foot(self : Self) -> Unit {
  html_table_element_delete_t_foot_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLTableElement.tBodies](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableElement/tBodies)
impl THTMLTableElement with t_bodies(self : Self) -> HTMLCollection {
  html_table_element_t_bodies_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLTableElement.createTBody](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableElement/createTBody)
impl THTMLTableElement with create_t_body(self : Self) -> HTMLTableSectionElement {
  html_table_element_create_t_body_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLTableElement.rows](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableElement/rows)
impl THTMLTableElement with rows(self : Self) -> HTMLCollection {
  html_table_element_rows_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLTableElement.insertRow](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableElement/insertRow)
impl THTMLTableElement with insert_row(self : Self, index? : Int) -> HTMLTableRowElement {
  html_table_element_insert_row_ffi(TJsValue::to_js(self), opt_to_js(index))
}

///|
/// [HTMLTableElement.deleteRow](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableElement/deleteRow)
impl THTMLTableElement with delete_row(self : Self, index : Int) -> Unit {
  html_table_element_delete_row_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(index),
  )
}

///|
/// [HTMLTableElement.align](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableElement/align)
impl THTMLTableElement with align(self : Self) -> String {
  html_table_element_align_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLTableElement.align](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableElement/align)
impl THTMLTableElement with set_align(self : Self, align : String) -> Unit {
  html_table_element_set_align_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(align),
  )
}

///|
/// [HTMLTableElement.border](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableElement/border)
impl THTMLTableElement with border(self : Self) -> String {
  html_table_element_border_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLTableElement.border](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableElement/border)
impl THTMLTableElement with set_border(self : Self, border : String) -> Unit {
  html_table_element_set_border_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(border),
  )
}

///|
/// [HTMLTableElement.frame](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableElement/frame)
impl THTMLTableElement with frame(self : Self) -> String {
  html_table_element_frame_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLTableElement.frame](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableElement/frame)
impl THTMLTableElement with set_frame(self : Self, frame : String) -> Unit {
  html_table_element_set_frame_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(frame),
  )
}

///|
/// [HTMLTableElement.rules](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableElement/rules)
impl THTMLTableElement with rules(self : Self) -> String {
  html_table_element_rules_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLTableElement.rules](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableElement/rules)
impl THTMLTableElement with set_rules(self : Self, rules : String) -> Unit {
  html_table_element_set_rules_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(rules),
  )
}

///|
/// [HTMLTableElement.summary](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableElement/summary)
impl THTMLTableElement with summary(self : Self) -> String {
  html_table_element_summary_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLTableElement.summary](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableElement/summary)
impl THTMLTableElement with set_summary(self : Self, summary : String) -> Unit {
  html_table_element_set_summary_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(summary),
  )
}

///|
/// [HTMLTableElement.width](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableElement/width)
impl THTMLTableElement with width(self : Self) -> String {
  html_table_element_width_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLTableElement.width](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableElement/width)
impl THTMLTableElement with set_width(self : Self, width : String) -> Unit {
  html_table_element_set_width_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(width),
  )
}

///|
/// [HTMLTableElement.bgColor](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableElement/bgColor)
impl THTMLTableElement with bg_color(self : Self) -> String {
  html_table_element_bg_color_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLTableElement.bgColor](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableElement/bgColor)
impl THTMLTableElement with set_bg_color(self : Self, bg_color : String) -> Unit {
  html_table_element_set_bg_color_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(bg_color),
  )
}

///|
/// [HTMLTableElement.cellPadding](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableElement/cellPadding)
impl THTMLTableElement with cell_padding(self : Self) -> String {
  html_table_element_cell_padding_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLTableElement.cellPadding](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableElement/cellPadding)
impl THTMLTableElement with set_cell_padding(self : Self, cell_padding : String) -> Unit {
  html_table_element_set_cell_padding_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(cell_padding),
  )
}

///|
/// [HTMLTableElement.cellSpacing](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableElement/cellSpacing)
impl THTMLTableElement with cell_spacing(self : Self) -> String {
  html_table_element_cell_spacing_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLTableElement.cellSpacing](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableElement/cellSpacing)
impl THTMLTableElement with set_cell_spacing(self : Self, cell_spacing : String) -> Unit {
  html_table_element_set_cell_spacing_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(cell_spacing),
  )
}
