// Auto-generated MoonBit bindings for HTMLTableRowElement interface
// Do not edit manually

#external
pub type HTMLTableRowElement

pub impl TJsValue for HTMLTableRowElement with to_js(self: HTMLTableRowElement) -> JsValue = "%identity"


pub fn[T: THTMLTableRowElement] HTMLTableRowElement::into(self : HTMLTableRowElement) -> T = "%identity"
pub impl THTMLTableRowElement for HTMLTableRowElement

pub fn HTMLTableRowElement::new() -> HTMLTableRowElement = "webapi_HTMLTableRowElement" "new"

pub trait THTMLTableRowElement: TJsValue + TTHTMLElement {
  row_index(self: Self) -> Int = _
  section_row_index(self: Self) -> Int = _
  cells(self: Self) -> &THTMLCollection = _
  insert_cell(self: Self, index? : Int) -> &THTMLTableCellElement = _
  delete_cell(self: Self, index : Int) -> Unit = _
  align(self: Self) -> String = _
  set_align(self: Self, value : String) -> Unit = _
  ch(self: Self) -> String = _
  set_ch(self: Self, value : String) -> Unit = _
  ch_off(self: Self) -> String = _
  set_ch_off(self: Self, value : String) -> Unit = _
  v_align(self: Self) -> String = _
  set_v_align(self: Self, value : String) -> Unit = _
  bg_color(self: Self) -> String = _
  set_bg_color(self: Self, value : String) -> Unit = _
}

///|
fn html_table_row_element_row_index_ffi(obj : JsValue) -> Int = "webapi_HTMLTableRowElement" "rowIndex"

///|
impl THTMLTableRowElement with row_index(self : Self) -> Int {
  html_table_row_element_row_index_ffi(self.to_js())
}

///|
fn html_table_row_element_section_row_index_ffi(obj : JsValue) -> Int = "webapi_HTMLTableRowElement" "sectionRowIndex"

///|
impl THTMLTableRowElement with section_row_index(self : Self) -> Int {
  html_table_row_element_section_row_index_ffi(self.to_js())
}

///|
fn html_table_row_element_cells_ffi(obj : JsValue) -> JsValue = "webapi_HTMLTableRowElement" "cells"

///|
impl THTMLTableRowElement with cells(self : Self) -> &THTMLCollection {
  html_table_row_element_cells_ffi(self.to_js()).unsafe_cast()
}

///|
fn html_table_row_element_align_ffi(obj : JsValue) -> String = "webapi_HTMLTableRowElement" "align"

///|
impl THTMLTableRowElement with align(self : Self) -> String {
  html_table_row_element_align_ffi(self.to_js())
}

///|
fn html_table_row_element_set_align_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLTableRowElement" "set_align"

///|
impl THTMLTableRowElement with set_align(self : Self, value : String) -> Unit {
  html_table_row_element_set_align_ffi(self.to_js(), value)
}

///|
fn html_table_row_element_ch_ffi(obj : JsValue) -> String = "webapi_HTMLTableRowElement" "ch"

///|
impl THTMLTableRowElement with ch(self : Self) -> String {
  html_table_row_element_ch_ffi(self.to_js())
}

///|
fn html_table_row_element_set_ch_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLTableRowElement" "set_ch"

///|
impl THTMLTableRowElement with set_ch(self : Self, value : String) -> Unit {
  html_table_row_element_set_ch_ffi(self.to_js(), value)
}

///|
fn html_table_row_element_ch_off_ffi(obj : JsValue) -> String = "webapi_HTMLTableRowElement" "chOff"

///|
impl THTMLTableRowElement with ch_off(self : Self) -> String {
  html_table_row_element_ch_off_ffi(self.to_js())
}

///|
fn html_table_row_element_set_ch_off_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLTableRowElement" "set_chOff"

///|
impl THTMLTableRowElement with set_ch_off(self : Self, value : String) -> Unit {
  html_table_row_element_set_ch_off_ffi(self.to_js(), value)
}

///|
fn html_table_row_element_v_align_ffi(obj : JsValue) -> String = "webapi_HTMLTableRowElement" "vAlign"

///|
impl THTMLTableRowElement with v_align(self : Self) -> String {
  html_table_row_element_v_align_ffi(self.to_js())
}

///|
fn html_table_row_element_set_v_align_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLTableRowElement" "set_vAlign"

///|
impl THTMLTableRowElement with set_v_align(self : Self, value : String) -> Unit {
  html_table_row_element_set_v_align_ffi(self.to_js(), value)
}

///|
fn html_table_row_element_bg_color_ffi(obj : JsValue) -> String = "webapi_HTMLTableRowElement" "bgColor"

///|
impl THTMLTableRowElement with bg_color(self : Self) -> String {
  html_table_row_element_bg_color_ffi(self.to_js())
}

///|
fn html_table_row_element_set_bg_color_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLTableRowElement" "set_bgColor"

///|
impl THTMLTableRowElement with set_bg_color(self : Self, value : String) -> Unit {
  html_table_row_element_set_bg_color_ffi(self.to_js(), value)
}

///|
fn html_table_row_element_insert_cell_ffi(obj : JsValue, index : JsValue) -> JsValue = "webapi_HTMLTableRowElement" "insertCell"

///|
impl THTMLTableRowElement with insert_cell(self : Self, index? : Int) -> &THTMLTableCellElement {
  html_table_row_element_insert_cell_ffi(self.to_js(), TJsValue::to_js(index)).unsafe_cast()
}

///|
fn html_table_row_element_delete_cell_ffi(obj : JsValue, index : JsValue) -> Unit = "webapi_HTMLTableRowElement" "deleteCell"

///|
impl THTMLTableRowElement with delete_cell(self : Self, index : Int) -> Unit {
  html_table_row_element_delete_cell_ffi(self.to_js(), TJsValue::to_js(index))
}