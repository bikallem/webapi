// Auto-generated MoonBit bindings for HTMLTableSectionElement interface
// Do not edit manually

#external
pub type HTMLTableSectionElement

pub impl TJsValue for HTMLTableSectionElement with to_js(self: HTMLTableSectionElement) -> JsValue = "%identity"


pub fn[T: THTMLTableSectionElement] HTMLTableSectionElement::into(self : HTMLTableSectionElement) -> T = "%identity"
pub impl THTMLTableSectionElement for HTMLTableSectionElement

pub fn HTMLTableSectionElement::new() -> HTMLTableSectionElement = "webapi_HTMLTableSectionElement" "new"

pub trait THTMLTableSectionElement: TJsValue + TTHTMLElement {
  rows(self: Self) -> &THTMLCollection = _
  insert_row(self: Self, index? : Int) -> &THTMLTableRowElement = _
  delete_row(self: Self, index : Int) -> Unit = _
  align(self: Self) -> String = _
  set_align(self: Self, value : String) -> Unit = _
  ch(self: Self) -> String = _
  set_ch(self: Self, value : String) -> Unit = _
  ch_off(self: Self) -> String = _
  set_ch_off(self: Self, value : String) -> Unit = _
  v_align(self: Self) -> String = _
  set_v_align(self: Self, value : String) -> Unit = _
}

///|
fn html_table_section_element_rows_ffi(obj : JsValue) -> JsValue = "webapi_HTMLTableSectionElement" "rows"

///|
impl THTMLTableSectionElement with rows(self : Self) -> &THTMLCollection {
  html_table_section_element_rows_ffi(self.to_js()).unsafe_cast()
}

///|
fn html_table_section_element_align_ffi(obj : JsValue) -> String = "webapi_HTMLTableSectionElement" "align"

///|
impl THTMLTableSectionElement with align(self : Self) -> String {
  html_table_section_element_align_ffi(self.to_js())
}

///|
fn html_table_section_element_set_align_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLTableSectionElement" "set_align"

///|
impl THTMLTableSectionElement with set_align(self : Self, value : String) -> Unit {
  html_table_section_element_set_align_ffi(self.to_js(), value)
}

///|
fn html_table_section_element_ch_ffi(obj : JsValue) -> String = "webapi_HTMLTableSectionElement" "ch"

///|
impl THTMLTableSectionElement with ch(self : Self) -> String {
  html_table_section_element_ch_ffi(self.to_js())
}

///|
fn html_table_section_element_set_ch_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLTableSectionElement" "set_ch"

///|
impl THTMLTableSectionElement with set_ch(self : Self, value : String) -> Unit {
  html_table_section_element_set_ch_ffi(self.to_js(), value)
}

///|
fn html_table_section_element_ch_off_ffi(obj : JsValue) -> String = "webapi_HTMLTableSectionElement" "chOff"

///|
impl THTMLTableSectionElement with ch_off(self : Self) -> String {
  html_table_section_element_ch_off_ffi(self.to_js())
}

///|
fn html_table_section_element_set_ch_off_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLTableSectionElement" "set_chOff"

///|
impl THTMLTableSectionElement with set_ch_off(self : Self, value : String) -> Unit {
  html_table_section_element_set_ch_off_ffi(self.to_js(), value)
}

///|
fn html_table_section_element_v_align_ffi(obj : JsValue) -> String = "webapi_HTMLTableSectionElement" "vAlign"

///|
impl THTMLTableSectionElement with v_align(self : Self) -> String {
  html_table_section_element_v_align_ffi(self.to_js())
}

///|
fn html_table_section_element_set_v_align_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLTableSectionElement" "set_vAlign"

///|
impl THTMLTableSectionElement with set_v_align(self : Self, value : String) -> Unit {
  html_table_section_element_set_v_align_ffi(self.to_js(), value)
}

///|
fn html_table_section_element_insert_row_ffi(obj : JsValue, index : JsValue) -> JsValue = "webapi_HTMLTableSectionElement" "insertRow"

///|
impl THTMLTableSectionElement with insert_row(self : Self, index? : Int) -> &THTMLTableRowElement {
  html_table_section_element_insert_row_ffi(self.to_js(), TJsValue::to_js(index)).unsafe_cast()
}

///|
fn html_table_section_element_delete_row_ffi(obj : JsValue, index : JsValue) -> Unit = "webapi_HTMLTableSectionElement" "deleteRow"

///|
impl THTMLTableSectionElement with delete_row(self : Self, index : Int) -> Unit {
  html_table_section_element_delete_row_ffi(self.to_js(), TJsValue::to_js(index))
}