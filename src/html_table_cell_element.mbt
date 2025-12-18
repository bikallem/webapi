// Auto-generated MoonBit bindings for HTMLTableCellElement interface
// Do not edit manually

#external
pub type HTMLTableCellElement

pub impl TJsValue for HTMLTableCellElement with to_js(self: HTMLTableCellElement) -> JsValue = "%identity"


pub fn[T: THTMLTableCellElement] HTMLTableCellElement::into(self : HTMLTableCellElement) -> T = "%identity"
pub impl THTMLTableCellElement for HTMLTableCellElement

pub fn HTMLTableCellElement::new() -> HTMLTableCellElement = "webapi_HTMLTableCellElement" "new"

pub trait THTMLTableCellElement: TJsValue + TTHTMLElement {
  col_span(self: Self) -> UInt = _
  set_col_span(self: Self, value : UInt) -> Unit = _
  row_span(self: Self) -> UInt = _
  set_row_span(self: Self, value : UInt) -> Unit = _
  headers(self: Self) -> String = _
  set_headers(self: Self, value : String) -> Unit = _
  cell_index(self: Self) -> Int = _
  scope(self: Self) -> String = _
  set_scope(self: Self, value : String) -> Unit = _
  abbr(self: Self) -> String = _
  set_abbr(self: Self, value : String) -> Unit = _
  align(self: Self) -> String = _
  set_align(self: Self, value : String) -> Unit = _
  axis(self: Self) -> String = _
  set_axis(self: Self, value : String) -> Unit = _
  height(self: Self) -> String = _
  set_height(self: Self, value : String) -> Unit = _
  width(self: Self) -> String = _
  set_width(self: Self, value : String) -> Unit = _
  ch(self: Self) -> String = _
  set_ch(self: Self, value : String) -> Unit = _
  ch_off(self: Self) -> String = _
  set_ch_off(self: Self, value : String) -> Unit = _
  no_wrap(self: Self) -> Bool = _
  set_no_wrap(self: Self, value : Bool) -> Unit = _
  v_align(self: Self) -> String = _
  set_v_align(self: Self, value : String) -> Unit = _
  bg_color(self: Self) -> String = _
  set_bg_color(self: Self, value : String) -> Unit = _
}

///|
fn html_table_cell_element_col_span_ffi(obj : JsValue) -> UInt = "webapi_HTMLTableCellElement" "colSpan"

///|
impl THTMLTableCellElement with col_span(self : Self) -> UInt {
  html_table_cell_element_col_span_ffi(self.to_js())
}

///|
fn html_table_cell_element_set_col_span_ffi(obj : JsValue, value : UInt) -> Unit = "webapi_HTMLTableCellElement" "set_colSpan"

///|
impl THTMLTableCellElement with set_col_span(self : Self, value : UInt) -> Unit {
  html_table_cell_element_set_col_span_ffi(self.to_js(), value)
}

///|
fn html_table_cell_element_row_span_ffi(obj : JsValue) -> UInt = "webapi_HTMLTableCellElement" "rowSpan"

///|
impl THTMLTableCellElement with row_span(self : Self) -> UInt {
  html_table_cell_element_row_span_ffi(self.to_js())
}

///|
fn html_table_cell_element_set_row_span_ffi(obj : JsValue, value : UInt) -> Unit = "webapi_HTMLTableCellElement" "set_rowSpan"

///|
impl THTMLTableCellElement with set_row_span(self : Self, value : UInt) -> Unit {
  html_table_cell_element_set_row_span_ffi(self.to_js(), value)
}

///|
fn html_table_cell_element_headers_ffi(obj : JsValue) -> String = "webapi_HTMLTableCellElement" "headers"

///|
impl THTMLTableCellElement with headers(self : Self) -> String {
  html_table_cell_element_headers_ffi(self.to_js())
}

///|
fn html_table_cell_element_set_headers_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLTableCellElement" "set_headers"

///|
impl THTMLTableCellElement with set_headers(self : Self, value : String) -> Unit {
  html_table_cell_element_set_headers_ffi(self.to_js(), value)
}

///|
fn html_table_cell_element_cell_index_ffi(obj : JsValue) -> Int = "webapi_HTMLTableCellElement" "cellIndex"

///|
impl THTMLTableCellElement with cell_index(self : Self) -> Int {
  html_table_cell_element_cell_index_ffi(self.to_js())
}

///|
fn html_table_cell_element_scope_ffi(obj : JsValue) -> String = "webapi_HTMLTableCellElement" "scope"

///|
impl THTMLTableCellElement with scope(self : Self) -> String {
  html_table_cell_element_scope_ffi(self.to_js())
}

///|
fn html_table_cell_element_set_scope_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLTableCellElement" "set_scope"

///|
impl THTMLTableCellElement with set_scope(self : Self, value : String) -> Unit {
  html_table_cell_element_set_scope_ffi(self.to_js(), value)
}

///|
fn html_table_cell_element_abbr_ffi(obj : JsValue) -> String = "webapi_HTMLTableCellElement" "abbr"

///|
impl THTMLTableCellElement with abbr(self : Self) -> String {
  html_table_cell_element_abbr_ffi(self.to_js())
}

///|
fn html_table_cell_element_set_abbr_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLTableCellElement" "set_abbr"

///|
impl THTMLTableCellElement with set_abbr(self : Self, value : String) -> Unit {
  html_table_cell_element_set_abbr_ffi(self.to_js(), value)
}

///|
fn html_table_cell_element_align_ffi(obj : JsValue) -> String = "webapi_HTMLTableCellElement" "align"

///|
impl THTMLTableCellElement with align(self : Self) -> String {
  html_table_cell_element_align_ffi(self.to_js())
}

///|
fn html_table_cell_element_set_align_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLTableCellElement" "set_align"

///|
impl THTMLTableCellElement with set_align(self : Self, value : String) -> Unit {
  html_table_cell_element_set_align_ffi(self.to_js(), value)
}

///|
fn html_table_cell_element_axis_ffi(obj : JsValue) -> String = "webapi_HTMLTableCellElement" "axis"

///|
impl THTMLTableCellElement with axis(self : Self) -> String {
  html_table_cell_element_axis_ffi(self.to_js())
}

///|
fn html_table_cell_element_set_axis_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLTableCellElement" "set_axis"

///|
impl THTMLTableCellElement with set_axis(self : Self, value : String) -> Unit {
  html_table_cell_element_set_axis_ffi(self.to_js(), value)
}

///|
fn html_table_cell_element_height_ffi(obj : JsValue) -> String = "webapi_HTMLTableCellElement" "height"

///|
impl THTMLTableCellElement with height(self : Self) -> String {
  html_table_cell_element_height_ffi(self.to_js())
}

///|
fn html_table_cell_element_set_height_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLTableCellElement" "set_height"

///|
impl THTMLTableCellElement with set_height(self : Self, value : String) -> Unit {
  html_table_cell_element_set_height_ffi(self.to_js(), value)
}

///|
fn html_table_cell_element_width_ffi(obj : JsValue) -> String = "webapi_HTMLTableCellElement" "width"

///|
impl THTMLTableCellElement with width(self : Self) -> String {
  html_table_cell_element_width_ffi(self.to_js())
}

///|
fn html_table_cell_element_set_width_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLTableCellElement" "set_width"

///|
impl THTMLTableCellElement with set_width(self : Self, value : String) -> Unit {
  html_table_cell_element_set_width_ffi(self.to_js(), value)
}

///|
fn html_table_cell_element_ch_ffi(obj : JsValue) -> String = "webapi_HTMLTableCellElement" "ch"

///|
impl THTMLTableCellElement with ch(self : Self) -> String {
  html_table_cell_element_ch_ffi(self.to_js())
}

///|
fn html_table_cell_element_set_ch_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLTableCellElement" "set_ch"

///|
impl THTMLTableCellElement with set_ch(self : Self, value : String) -> Unit {
  html_table_cell_element_set_ch_ffi(self.to_js(), value)
}

///|
fn html_table_cell_element_ch_off_ffi(obj : JsValue) -> String = "webapi_HTMLTableCellElement" "chOff"

///|
impl THTMLTableCellElement with ch_off(self : Self) -> String {
  html_table_cell_element_ch_off_ffi(self.to_js())
}

///|
fn html_table_cell_element_set_ch_off_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLTableCellElement" "set_chOff"

///|
impl THTMLTableCellElement with set_ch_off(self : Self, value : String) -> Unit {
  html_table_cell_element_set_ch_off_ffi(self.to_js(), value)
}

///|
fn html_table_cell_element_no_wrap_ffi(obj : JsValue) -> Bool = "webapi_HTMLTableCellElement" "noWrap"

///|
impl THTMLTableCellElement with no_wrap(self : Self) -> Bool {
  html_table_cell_element_no_wrap_ffi(self.to_js())
}

///|
fn html_table_cell_element_set_no_wrap_ffi(obj : JsValue, value : Bool) -> Unit = "webapi_HTMLTableCellElement" "set_noWrap"

///|
impl THTMLTableCellElement with set_no_wrap(self : Self, value : Bool) -> Unit {
  html_table_cell_element_set_no_wrap_ffi(self.to_js(), value)
}

///|
fn html_table_cell_element_v_align_ffi(obj : JsValue) -> String = "webapi_HTMLTableCellElement" "vAlign"

///|
impl THTMLTableCellElement with v_align(self : Self) -> String {
  html_table_cell_element_v_align_ffi(self.to_js())
}

///|
fn html_table_cell_element_set_v_align_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLTableCellElement" "set_vAlign"

///|
impl THTMLTableCellElement with set_v_align(self : Self, value : String) -> Unit {
  html_table_cell_element_set_v_align_ffi(self.to_js(), value)
}

///|
fn html_table_cell_element_bg_color_ffi(obj : JsValue) -> String = "webapi_HTMLTableCellElement" "bgColor"

///|
impl THTMLTableCellElement with bg_color(self : Self) -> String {
  html_table_cell_element_bg_color_ffi(self.to_js())
}

///|
fn html_table_cell_element_set_bg_color_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLTableCellElement" "set_bgColor"

///|
impl THTMLTableCellElement with set_bg_color(self : Self, value : String) -> Unit {
  html_table_cell_element_set_bg_color_ffi(self.to_js(), value)
}