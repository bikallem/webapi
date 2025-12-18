// Auto-generated MoonBit bindings for HTMLTableColElement interface
// Do not edit manually

#external
pub type HTMLTableColElement

pub impl TJsValue for HTMLTableColElement with to_js(self: HTMLTableColElement) -> JsValue = "%identity"


pub fn[T: THTMLTableColElement] HTMLTableColElement::into(self : HTMLTableColElement) -> T = "%identity"
pub impl THTMLTableColElement for HTMLTableColElement

pub fn HTMLTableColElement::new() -> HTMLTableColElement = "webapi_HTMLTableColElement" "new"

pub trait THTMLTableColElement: TJsValue + TTHTMLElement {
  span(self: Self) -> UInt = _
  set_span(self: Self, value : UInt) -> Unit = _
  align(self: Self) -> String = _
  set_align(self: Self, value : String) -> Unit = _
  ch(self: Self) -> String = _
  set_ch(self: Self, value : String) -> Unit = _
  ch_off(self: Self) -> String = _
  set_ch_off(self: Self, value : String) -> Unit = _
  v_align(self: Self) -> String = _
  set_v_align(self: Self, value : String) -> Unit = _
  width(self: Self) -> String = _
  set_width(self: Self, value : String) -> Unit = _
}

///|
fn html_table_col_element_span_ffi(obj : JsValue) -> UInt = "webapi_HTMLTableColElement" "span"

///|
impl THTMLTableColElement with span(self : Self) -> UInt {
  html_table_col_element_span_ffi(self.to_js())
}

///|
fn html_table_col_element_set_span_ffi(obj : JsValue, value : UInt) -> Unit = "webapi_HTMLTableColElement" "set_span"

///|
impl THTMLTableColElement with set_span(self : Self, value : UInt) -> Unit {
  html_table_col_element_set_span_ffi(self.to_js(), value)
}

///|
fn html_table_col_element_align_ffi(obj : JsValue) -> String = "webapi_HTMLTableColElement" "align"

///|
impl THTMLTableColElement with align(self : Self) -> String {
  html_table_col_element_align_ffi(self.to_js())
}

///|
fn html_table_col_element_set_align_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLTableColElement" "set_align"

///|
impl THTMLTableColElement with set_align(self : Self, value : String) -> Unit {
  html_table_col_element_set_align_ffi(self.to_js(), value)
}

///|
fn html_table_col_element_ch_ffi(obj : JsValue) -> String = "webapi_HTMLTableColElement" "ch"

///|
impl THTMLTableColElement with ch(self : Self) -> String {
  html_table_col_element_ch_ffi(self.to_js())
}

///|
fn html_table_col_element_set_ch_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLTableColElement" "set_ch"

///|
impl THTMLTableColElement with set_ch(self : Self, value : String) -> Unit {
  html_table_col_element_set_ch_ffi(self.to_js(), value)
}

///|
fn html_table_col_element_ch_off_ffi(obj : JsValue) -> String = "webapi_HTMLTableColElement" "chOff"

///|
impl THTMLTableColElement with ch_off(self : Self) -> String {
  html_table_col_element_ch_off_ffi(self.to_js())
}

///|
fn html_table_col_element_set_ch_off_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLTableColElement" "set_chOff"

///|
impl THTMLTableColElement with set_ch_off(self : Self, value : String) -> Unit {
  html_table_col_element_set_ch_off_ffi(self.to_js(), value)
}

///|
fn html_table_col_element_v_align_ffi(obj : JsValue) -> String = "webapi_HTMLTableColElement" "vAlign"

///|
impl THTMLTableColElement with v_align(self : Self) -> String {
  html_table_col_element_v_align_ffi(self.to_js())
}

///|
fn html_table_col_element_set_v_align_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLTableColElement" "set_vAlign"

///|
impl THTMLTableColElement with set_v_align(self : Self, value : String) -> Unit {
  html_table_col_element_set_v_align_ffi(self.to_js(), value)
}

///|
fn html_table_col_element_width_ffi(obj : JsValue) -> String = "webapi_HTMLTableColElement" "width"

///|
impl THTMLTableColElement with width(self : Self) -> String {
  html_table_col_element_width_ffi(self.to_js())
}

///|
fn html_table_col_element_set_width_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLTableColElement" "set_width"

///|
impl THTMLTableColElement with set_width(self : Self, value : String) -> Unit {
  html_table_col_element_set_width_ffi(self.to_js(), value)
}