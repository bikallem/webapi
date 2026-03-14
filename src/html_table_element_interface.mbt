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

///|
#cfg(target="js")
extern "js" fn html_table_element_new_ffi() -> HTMLTableElement = "() => new HTMLTableElement()"

///|
#cfg(target="js")
extern "js" fn html_table_element_caption_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.caption"

///|
#cfg(target="js")
fn html_table_element_caption_ffi(obj : JsValue) -> HTMLTableCaptionElement {
  html_table_element_caption_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_table_element_set_caption_ffi(
  obj : JsValue,
  caption : JsValue,
) -> Unit = "(obj, caption) => { obj.caption = caption; }"

///|
#cfg(target="js")
extern "js" fn html_table_element_create_caption_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.createCaption()"

///|
#cfg(target="js")
fn html_table_element_create_caption_ffi(
  obj : JsValue,
) -> HTMLTableCaptionElement {
  html_table_element_create_caption_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_table_element_delete_caption_ffi(obj : JsValue) -> Unit = "(obj) => obj.deleteCaption()"

///|
#cfg(target="js")
extern "js" fn html_table_element_t_head_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.tHead"

///|
#cfg(target="js")
fn html_table_element_t_head_ffi(obj : JsValue) -> HTMLTableSectionElement {
  html_table_element_t_head_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_table_element_set_t_head_ffi(
  obj : JsValue,
  t_head : JsValue,
) -> Unit = "(obj, tHead) => { obj.tHead = tHead; }"

///|
#cfg(target="js")
extern "js" fn html_table_element_create_t_head_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.createTHead()"

///|
#cfg(target="js")
fn html_table_element_create_t_head_ffi(
  obj : JsValue,
) -> HTMLTableSectionElement {
  html_table_element_create_t_head_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_table_element_delete_t_head_ffi(obj : JsValue) -> Unit = "(obj) => obj.deleteTHead()"

///|
#cfg(target="js")
extern "js" fn html_table_element_t_foot_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.tFoot"

///|
#cfg(target="js")
fn html_table_element_t_foot_ffi(obj : JsValue) -> HTMLTableSectionElement {
  html_table_element_t_foot_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_table_element_set_t_foot_ffi(
  obj : JsValue,
  t_foot : JsValue,
) -> Unit = "(obj, tFoot) => { obj.tFoot = tFoot; }"

///|
#cfg(target="js")
extern "js" fn html_table_element_create_t_foot_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.createTFoot()"

///|
#cfg(target="js")
fn html_table_element_create_t_foot_ffi(
  obj : JsValue,
) -> HTMLTableSectionElement {
  html_table_element_create_t_foot_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_table_element_delete_t_foot_ffi(obj : JsValue) -> Unit = "(obj) => obj.deleteTFoot()"

///|
#cfg(target="js")
extern "js" fn html_table_element_t_bodies_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.tBodies"

///|
#cfg(target="js")
fn html_table_element_t_bodies_ffi(obj : JsValue) -> HTMLCollection {
  html_table_element_t_bodies_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_table_element_create_t_body_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.createTBody()"

///|
#cfg(target="js")
fn html_table_element_create_t_body_ffi(
  obj : JsValue,
) -> HTMLTableSectionElement {
  html_table_element_create_t_body_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_table_element_rows_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.rows"

///|
#cfg(target="js")
fn html_table_element_rows_ffi(obj : JsValue) -> HTMLCollection {
  html_table_element_rows_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_table_element_insert_row_ffi_js(
  obj : JsValue,
  index : JsValue,
) -> JsValue = "(obj, index) => obj.insertRow(index)"

///|
#cfg(target="js")
fn html_table_element_insert_row_ffi(
  obj : JsValue,
  index : JsValue,
) -> HTMLTableRowElement {
  html_table_element_insert_row_ffi_js(obj, index).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_table_element_delete_row_ffi(
  obj : JsValue,
  index : JsValue,
) -> Unit = "(obj, index) => obj.deleteRow(index)"

///|
#cfg(target="js")
extern "js" fn html_table_element_align_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.align"

///|
#cfg(target="js")
fn html_table_element_align_ffi(obj : JsValue) -> String {
  html_table_element_align_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_table_element_set_align_ffi(
  obj : JsValue,
  align : JsValue,
) -> Unit = "(obj, align) => { obj.align = align; }"

///|
#cfg(target="js")
extern "js" fn html_table_element_border_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.border"

///|
#cfg(target="js")
fn html_table_element_border_ffi(obj : JsValue) -> String {
  html_table_element_border_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_table_element_set_border_ffi(
  obj : JsValue,
  border : JsValue,
) -> Unit = "(obj, border) => { obj.border = border; }"

///|
#cfg(target="js")
extern "js" fn html_table_element_frame_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.frame"

///|
#cfg(target="js")
fn html_table_element_frame_ffi(obj : JsValue) -> String {
  html_table_element_frame_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_table_element_set_frame_ffi(
  obj : JsValue,
  frame : JsValue,
) -> Unit = "(obj, frame) => { obj.frame = frame; }"

///|
#cfg(target="js")
extern "js" fn html_table_element_rules_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.rules"

///|
#cfg(target="js")
fn html_table_element_rules_ffi(obj : JsValue) -> String {
  html_table_element_rules_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_table_element_set_rules_ffi(
  obj : JsValue,
  rules : JsValue,
) -> Unit = "(obj, rules) => { obj.rules = rules; }"

///|
#cfg(target="js")
extern "js" fn html_table_element_summary_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.summary"

///|
#cfg(target="js")
fn html_table_element_summary_ffi(obj : JsValue) -> String {
  html_table_element_summary_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_table_element_set_summary_ffi(
  obj : JsValue,
  summary : JsValue,
) -> Unit = "(obj, summary) => { obj.summary = summary; }"

///|
#cfg(target="js")
extern "js" fn html_table_element_width_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.width"

///|
#cfg(target="js")
fn html_table_element_width_ffi(obj : JsValue) -> String {
  html_table_element_width_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_table_element_set_width_ffi(
  obj : JsValue,
  width : JsValue,
) -> Unit = "(obj, width) => { obj.width = width; }"

///|
#cfg(target="js")
extern "js" fn html_table_element_bg_color_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.bgColor"

///|
#cfg(target="js")
fn html_table_element_bg_color_ffi(obj : JsValue) -> String {
  html_table_element_bg_color_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_table_element_set_bg_color_ffi(
  obj : JsValue,
  bg_color : JsValue,
) -> Unit = "(obj, bgColor) => { obj.bgColor = bgColor; }"

///|
#cfg(target="js")
extern "js" fn html_table_element_cell_padding_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.cellPadding"

///|
#cfg(target="js")
fn html_table_element_cell_padding_ffi(obj : JsValue) -> String {
  html_table_element_cell_padding_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_table_element_set_cell_padding_ffi(
  obj : JsValue,
  cell_padding : JsValue,
) -> Unit = "(obj, cellPadding) => { obj.cellPadding = cellPadding; }"

///|
#cfg(target="js")
extern "js" fn html_table_element_cell_spacing_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.cellSpacing"

///|
#cfg(target="js")
fn html_table_element_cell_spacing_ffi(obj : JsValue) -> String {
  html_table_element_cell_spacing_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_table_element_set_cell_spacing_ffi(
  obj : JsValue,
  cell_spacing : JsValue,
) -> Unit = "(obj, cellSpacing) => { obj.cellSpacing = cellSpacing; }"

///|
#cfg(target="wasm-gc")
fn html_table_element_new_ffi() -> HTMLTableElement = "webapi_HTMLTableElement" "new"

///|
#cfg(target="wasm-gc")
fn html_table_element_caption_ffi(obj : JsValue) -> HTMLTableCaptionElement = "webapi_HTMLTableElement" "get_caption"

///|
#cfg(target="wasm-gc")
fn html_table_element_set_caption_ffi(obj : JsValue, caption : JsValue) -> Unit = "webapi_HTMLTableElement" "set_caption"

///|
#cfg(target="wasm-gc")
fn html_table_element_create_caption_ffi(
  obj : JsValue,
) -> HTMLTableCaptionElement = "webapi_HTMLTableElement" "createCaption"

///|
#cfg(target="wasm-gc")
fn html_table_element_delete_caption_ffi(obj : JsValue) -> Unit = "webapi_HTMLTableElement" "deleteCaption"

///|
#cfg(target="wasm-gc")
fn html_table_element_t_head_ffi(obj : JsValue) -> HTMLTableSectionElement = "webapi_HTMLTableElement" "get_tHead"

///|
#cfg(target="wasm-gc")
fn html_table_element_set_t_head_ffi(obj : JsValue, t_head : JsValue) -> Unit = "webapi_HTMLTableElement" "set_tHead"

///|
#cfg(target="wasm-gc")
fn html_table_element_create_t_head_ffi(
  obj : JsValue,
) -> HTMLTableSectionElement = "webapi_HTMLTableElement" "createTHead"

///|
#cfg(target="wasm-gc")
fn html_table_element_delete_t_head_ffi(obj : JsValue) -> Unit = "webapi_HTMLTableElement" "deleteTHead"

///|
#cfg(target="wasm-gc")
fn html_table_element_t_foot_ffi(obj : JsValue) -> HTMLTableSectionElement = "webapi_HTMLTableElement" "get_tFoot"

///|
#cfg(target="wasm-gc")
fn html_table_element_set_t_foot_ffi(obj : JsValue, t_foot : JsValue) -> Unit = "webapi_HTMLTableElement" "set_tFoot"

///|
#cfg(target="wasm-gc")
fn html_table_element_create_t_foot_ffi(
  obj : JsValue,
) -> HTMLTableSectionElement = "webapi_HTMLTableElement" "createTFoot"

///|
#cfg(target="wasm-gc")
fn html_table_element_delete_t_foot_ffi(obj : JsValue) -> Unit = "webapi_HTMLTableElement" "deleteTFoot"

///|
#cfg(target="wasm-gc")
fn html_table_element_t_bodies_ffi(obj : JsValue) -> HTMLCollection = "webapi_HTMLTableElement" "get_tBodies"

///|
#cfg(target="wasm-gc")
fn html_table_element_create_t_body_ffi(
  obj : JsValue,
) -> HTMLTableSectionElement = "webapi_HTMLTableElement" "createTBody"

///|
#cfg(target="wasm-gc")
fn html_table_element_rows_ffi(obj : JsValue) -> HTMLCollection = "webapi_HTMLTableElement" "get_rows"

///|
#cfg(target="wasm-gc")
fn html_table_element_insert_row_ffi(
  obj : JsValue,
  index : JsValue,
) -> HTMLTableRowElement = "webapi_HTMLTableElement" "insertRow"

///|
#cfg(target="wasm-gc")
fn html_table_element_delete_row_ffi(obj : JsValue, index : JsValue) -> Unit = "webapi_HTMLTableElement" "deleteRow"

///|
#cfg(target="wasm-gc")
fn html_table_element_align_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLTableElement" "get_align"

///|
#cfg(target="wasm-gc")
fn html_table_element_align_ffi(obj : JsValue) -> String {
  jsvalue_to_string(html_table_element_align_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn html_table_element_set_align_ffi(obj : JsValue, align : JsValue) -> Unit = "webapi_HTMLTableElement" "set_align"

///|
#cfg(target="wasm-gc")
fn html_table_element_border_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLTableElement" "get_border"

///|
#cfg(target="wasm-gc")
fn html_table_element_border_ffi(obj : JsValue) -> String {
  jsvalue_to_string(html_table_element_border_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn html_table_element_set_border_ffi(obj : JsValue, border : JsValue) -> Unit = "webapi_HTMLTableElement" "set_border"

///|
#cfg(target="wasm-gc")
fn html_table_element_frame_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLTableElement" "get_frame"

///|
#cfg(target="wasm-gc")
fn html_table_element_frame_ffi(obj : JsValue) -> String {
  jsvalue_to_string(html_table_element_frame_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn html_table_element_set_frame_ffi(obj : JsValue, frame : JsValue) -> Unit = "webapi_HTMLTableElement" "set_frame"

///|
#cfg(target="wasm-gc")
fn html_table_element_rules_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLTableElement" "get_rules"

///|
#cfg(target="wasm-gc")
fn html_table_element_rules_ffi(obj : JsValue) -> String {
  jsvalue_to_string(html_table_element_rules_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn html_table_element_set_rules_ffi(obj : JsValue, rules : JsValue) -> Unit = "webapi_HTMLTableElement" "set_rules"

///|
#cfg(target="wasm-gc")
fn html_table_element_summary_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLTableElement" "get_summary"

///|
#cfg(target="wasm-gc")
fn html_table_element_summary_ffi(obj : JsValue) -> String {
  jsvalue_to_string(html_table_element_summary_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn html_table_element_set_summary_ffi(obj : JsValue, summary : JsValue) -> Unit = "webapi_HTMLTableElement" "set_summary"

///|
#cfg(target="wasm-gc")
fn html_table_element_width_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLTableElement" "get_width"

///|
#cfg(target="wasm-gc")
fn html_table_element_width_ffi(obj : JsValue) -> String {
  jsvalue_to_string(html_table_element_width_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn html_table_element_set_width_ffi(obj : JsValue, width : JsValue) -> Unit = "webapi_HTMLTableElement" "set_width"

///|
#cfg(target="wasm-gc")
fn html_table_element_bg_color_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLTableElement" "get_bgColor"

///|
#cfg(target="wasm-gc")
fn html_table_element_bg_color_ffi(obj : JsValue) -> String {
  jsvalue_to_string(html_table_element_bg_color_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn html_table_element_set_bg_color_ffi(
  obj : JsValue,
  bg_color : JsValue,
) -> Unit = "webapi_HTMLTableElement" "set_bgColor"

///|
#cfg(target="wasm-gc")
fn html_table_element_cell_padding_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLTableElement" "get_cellPadding"

///|
#cfg(target="wasm-gc")
fn html_table_element_cell_padding_ffi(obj : JsValue) -> String {
  jsvalue_to_string(html_table_element_cell_padding_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn html_table_element_set_cell_padding_ffi(
  obj : JsValue,
  cell_padding : JsValue,
) -> Unit = "webapi_HTMLTableElement" "set_cellPadding"

///|
#cfg(target="wasm-gc")
fn html_table_element_cell_spacing_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLTableElement" "get_cellSpacing"

///|
#cfg(target="wasm-gc")
fn html_table_element_cell_spacing_ffi(obj : JsValue) -> String {
  jsvalue_to_string(html_table_element_cell_spacing_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn html_table_element_set_cell_spacing_ffi(
  obj : JsValue,
  cell_spacing : JsValue,
) -> Unit = "webapi_HTMLTableElement" "set_cellSpacing"
