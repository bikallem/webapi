// Do not edit. This file is generated.
// MoonBit type: HTMLTableCellElement
// Specifications: html.idl

///|
#external
pub type HTMLTableCellElement

///|
pub impl TJsValue for HTMLTableCellElement with to_js(
  self : HTMLTableCellElement,
) -> JsValue = "%identity"

///|
pub fn[T : THTMLTableCellElement] HTMLTableCellElement::into(
  self : HTMLTableCellElement,
) -> T = "%identity"

///|
pub impl THTMLTableCellElement for HTMLTableCellElement

///|
pub impl THTMLElement for HTMLTableCellElement

///|
pub impl TElement for HTMLTableCellElement

///|
pub impl TNode for HTMLTableCellElement

///|
pub impl TEventTarget for HTMLTableCellElement

///|
extern "js" fn html_table_cell_element_new_ffi() -> HTMLTableCellElement = "() => new HTMLTableCellElement()"

///|
pub fn HTMLTableCellElement::new() -> HTMLTableCellElement {
  html_table_cell_element_new_ffi()
}

///|
pub trait THTMLTableCellElement: THTMLElement {
  col_span(self : Self) -> UInt = _
  set_col_span(self : Self, col_span : UInt) -> Unit = _
  row_span(self : Self) -> UInt = _
  set_row_span(self : Self, row_span : UInt) -> Unit = _
  headers(self : Self) -> String = _
  set_headers(self : Self, headers : String) -> Unit = _
  cell_index(self : Self) -> Int = _
  scope(self : Self) -> String = _
  set_scope(self : Self, scope : String) -> Unit = _
  abbr(self : Self) -> String = _
  set_abbr(self : Self, abbr : String) -> Unit = _
  align(self : Self) -> String = _
  set_align(self : Self, align : String) -> Unit = _
  axis(self : Self) -> String = _
  set_axis(self : Self, axis : String) -> Unit = _
  height(self : Self) -> String = _
  set_height(self : Self, height : String) -> Unit = _
  width(self : Self) -> String = _
  set_width(self : Self, width : String) -> Unit = _
  ch(self : Self) -> String = _
  set_ch(self : Self, ch : String) -> Unit = _
  ch_off(self : Self) -> String = _
  set_ch_off(self : Self, ch_off : String) -> Unit = _
  no_wrap(self : Self) -> Bool = _
  set_no_wrap(self : Self, no_wrap : Bool) -> Unit = _
  v_align(self : Self) -> String = _
  set_v_align(self : Self, v_align : String) -> Unit = _
  bg_color(self : Self) -> String = _
  set_bg_color(self : Self, bg_color : String) -> Unit = _
}

///|
extern "js" fn html_table_cell_element_col_span_ffi(obj : JsValue) -> UInt = "(obj) => obj.colSpan"

///|
impl THTMLTableCellElement with col_span(self : Self) -> UInt {
  html_table_cell_element_col_span_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_table_cell_element_set_col_span_ffi(
  obj : JsValue,
  col_span : JsValue,
) -> Unit = "(obj, colSpan) => { obj.colSpan = col_span; }"

///|
impl THTMLTableCellElement with set_col_span(self : Self, col_span : UInt) -> Unit {
  html_table_cell_element_set_col_span_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(col_span),
  )
}

///|
extern "js" fn html_table_cell_element_row_span_ffi(obj : JsValue) -> UInt = "(obj) => obj.rowSpan"

///|
impl THTMLTableCellElement with row_span(self : Self) -> UInt {
  html_table_cell_element_row_span_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_table_cell_element_set_row_span_ffi(
  obj : JsValue,
  row_span : JsValue,
) -> Unit = "(obj, rowSpan) => { obj.rowSpan = row_span; }"

///|
impl THTMLTableCellElement with set_row_span(self : Self, row_span : UInt) -> Unit {
  html_table_cell_element_set_row_span_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(row_span),
  )
}

///|
extern "js" fn html_table_cell_element_headers_ffi(obj : JsValue) -> String = "(obj) => obj.headers"

///|
impl THTMLTableCellElement with headers(self : Self) -> String {
  html_table_cell_element_headers_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_table_cell_element_set_headers_ffi(
  obj : JsValue,
  headers : JsValue,
) -> Unit = "(obj, headers) => { obj.headers = headers; }"

///|
impl THTMLTableCellElement with set_headers(self : Self, headers : String) -> Unit {
  html_table_cell_element_set_headers_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(headers),
  )
}

///|
extern "js" fn html_table_cell_element_cell_index_ffi(obj : JsValue) -> Int = "(obj) => obj.cellIndex"

///|
impl THTMLTableCellElement with cell_index(self : Self) -> Int {
  html_table_cell_element_cell_index_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_table_cell_element_scope_ffi(obj : JsValue) -> String = "(obj) => obj.scope"

///|
impl THTMLTableCellElement with scope(self : Self) -> String {
  html_table_cell_element_scope_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_table_cell_element_set_scope_ffi(
  obj : JsValue,
  scope : JsValue,
) -> Unit = "(obj, scope) => { obj.scope = scope; }"

///|
impl THTMLTableCellElement with set_scope(self : Self, scope : String) -> Unit {
  html_table_cell_element_set_scope_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(scope),
  )
}

///|
extern "js" fn html_table_cell_element_abbr_ffi(obj : JsValue) -> String = "(obj) => obj.abbr"

///|
impl THTMLTableCellElement with abbr(self : Self) -> String {
  html_table_cell_element_abbr_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_table_cell_element_set_abbr_ffi(
  obj : JsValue,
  abbr : JsValue,
) -> Unit = "(obj, abbr) => { obj.abbr = abbr; }"

///|
impl THTMLTableCellElement with set_abbr(self : Self, abbr : String) -> Unit {
  html_table_cell_element_set_abbr_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(abbr),
  )
}

///|
extern "js" fn html_table_cell_element_align_ffi(obj : JsValue) -> String = "(obj) => obj.align"

///|
impl THTMLTableCellElement with align(self : Self) -> String {
  html_table_cell_element_align_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_table_cell_element_set_align_ffi(
  obj : JsValue,
  align : JsValue,
) -> Unit = "(obj, align) => { obj.align = align; }"

///|
impl THTMLTableCellElement with set_align(self : Self, align : String) -> Unit {
  html_table_cell_element_set_align_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(align),
  )
}

///|
extern "js" fn html_table_cell_element_axis_ffi(obj : JsValue) -> String = "(obj) => obj.axis"

///|
impl THTMLTableCellElement with axis(self : Self) -> String {
  html_table_cell_element_axis_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_table_cell_element_set_axis_ffi(
  obj : JsValue,
  axis : JsValue,
) -> Unit = "(obj, axis) => { obj.axis = axis; }"

///|
impl THTMLTableCellElement with set_axis(self : Self, axis : String) -> Unit {
  html_table_cell_element_set_axis_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(axis),
  )
}

///|
extern "js" fn html_table_cell_element_height_ffi(obj : JsValue) -> String = "(obj) => obj.height"

///|
impl THTMLTableCellElement with height(self : Self) -> String {
  html_table_cell_element_height_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_table_cell_element_set_height_ffi(
  obj : JsValue,
  height : JsValue,
) -> Unit = "(obj, height) => { obj.height = height; }"

///|
impl THTMLTableCellElement with set_height(self : Self, height : String) -> Unit {
  html_table_cell_element_set_height_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(height),
  )
}

///|
extern "js" fn html_table_cell_element_width_ffi(obj : JsValue) -> String = "(obj) => obj.width"

///|
impl THTMLTableCellElement with width(self : Self) -> String {
  html_table_cell_element_width_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_table_cell_element_set_width_ffi(
  obj : JsValue,
  width : JsValue,
) -> Unit = "(obj, width) => { obj.width = width; }"

///|
impl THTMLTableCellElement with set_width(self : Self, width : String) -> Unit {
  html_table_cell_element_set_width_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(width),
  )
}

///|
extern "js" fn html_table_cell_element_ch_ffi(obj : JsValue) -> String = "(obj) => obj.ch"

///|
impl THTMLTableCellElement with ch(self : Self) -> String {
  html_table_cell_element_ch_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_table_cell_element_set_ch_ffi(
  obj : JsValue,
  ch : JsValue,
) -> Unit = "(obj, ch) => { obj.ch = ch; }"

///|
impl THTMLTableCellElement with set_ch(self : Self, ch : String) -> Unit {
  html_table_cell_element_set_ch_ffi(TJsValue::to_js(self), TJsValue::to_js(ch))
}

///|
extern "js" fn html_table_cell_element_ch_off_ffi(obj : JsValue) -> String = "(obj) => obj.chOff"

///|
impl THTMLTableCellElement with ch_off(self : Self) -> String {
  html_table_cell_element_ch_off_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_table_cell_element_set_ch_off_ffi(
  obj : JsValue,
  ch_off : JsValue,
) -> Unit = "(obj, chOff) => { obj.chOff = ch_off; }"

///|
impl THTMLTableCellElement with set_ch_off(self : Self, ch_off : String) -> Unit {
  html_table_cell_element_set_ch_off_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(ch_off),
  )
}

///|
extern "js" fn html_table_cell_element_no_wrap_ffi(obj : JsValue) -> Bool = "(obj) => obj.noWrap"

///|
impl THTMLTableCellElement with no_wrap(self : Self) -> Bool {
  html_table_cell_element_no_wrap_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_table_cell_element_set_no_wrap_ffi(
  obj : JsValue,
  no_wrap : JsValue,
) -> Unit = "(obj, noWrap) => { obj.noWrap = no_wrap; }"

///|
impl THTMLTableCellElement with set_no_wrap(self : Self, no_wrap : Bool) -> Unit {
  html_table_cell_element_set_no_wrap_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(no_wrap),
  )
}

///|
extern "js" fn html_table_cell_element_v_align_ffi(obj : JsValue) -> String = "(obj) => obj.vAlign"

///|
impl THTMLTableCellElement with v_align(self : Self) -> String {
  html_table_cell_element_v_align_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_table_cell_element_set_v_align_ffi(
  obj : JsValue,
  v_align : JsValue,
) -> Unit = "(obj, vAlign) => { obj.vAlign = v_align; }"

///|
impl THTMLTableCellElement with set_v_align(self : Self, v_align : String) -> Unit {
  html_table_cell_element_set_v_align_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(v_align),
  )
}

///|
extern "js" fn html_table_cell_element_bg_color_ffi(obj : JsValue) -> String = "(obj) => obj.bgColor"

///|
impl THTMLTableCellElement with bg_color(self : Self) -> String {
  html_table_cell_element_bg_color_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_table_cell_element_set_bg_color_ffi(
  obj : JsValue,
  bg_color : JsValue,
) -> Unit = "(obj, bgColor) => { obj.bgColor = bg_color; }"

///|
impl THTMLTableCellElement with set_bg_color(self : Self, bg_color : String) -> Unit {
  html_table_cell_element_set_bg_color_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(bg_color),
  )
}
