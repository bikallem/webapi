// Do not edit. This file is generated.
// MoonBit type: HTMLTableRowElement
// Specifications: html.idl

///|
/// [HTMLTableRowElement](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableRowElement)
#external
pub type HTMLTableRowElement

///|
pub impl TJsValue for HTMLTableRowElement with to_js(self : HTMLTableRowElement) -> JsValue = "%identity"

///|
pub fn[T : THTMLTableRowElement] HTMLTableRowElement::into(
  self : HTMLTableRowElement,
) -> T = "%identity"

///|
pub impl THTMLTableRowElement for HTMLTableRowElement

///|
pub impl THTMLElement for HTMLTableRowElement

///|
pub impl TElement for HTMLTableRowElement

///|
pub impl TNode for HTMLTableRowElement

///|
pub impl TEventTarget for HTMLTableRowElement

///|
pub fn HTMLTableRowElement::new() -> HTMLTableRowElement {
  html_table_row_element_new_ffi()
}

///|
/// [HTMLTableRowElement](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableRowElement) interface.
pub trait THTMLTableRowElement: THTMLElement {
  row_index(self : Self) -> Int = _
  section_row_index(self : Self) -> Int = _
  cells(self : Self) -> HTMLCollection = _
  insert_cell(self : Self, index? : Int) -> HTMLTableCellElement = _
  delete_cell(self : Self, index : Int) -> Unit = _
  align(self : Self) -> String = _
  set_align(self : Self, align : String) -> Unit = _
  ch(self : Self) -> String = _
  set_ch(self : Self, ch : String) -> Unit = _
  ch_off(self : Self) -> String = _
  set_ch_off(self : Self, ch_off : String) -> Unit = _
  v_align(self : Self) -> String = _
  set_v_align(self : Self, v_align : String) -> Unit = _
  bg_color(self : Self) -> String = _
  set_bg_color(self : Self, bg_color : String) -> Unit = _
}

///|
/// [HTMLTableRowElement.rowIndex](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableRowElement/rowIndex)
impl THTMLTableRowElement with row_index(self : Self) -> Int {
  html_table_row_element_row_index_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLTableRowElement.sectionRowIndex](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableRowElement/sectionRowIndex)
impl THTMLTableRowElement with section_row_index(self : Self) -> Int {
  html_table_row_element_section_row_index_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLTableRowElement.cells](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableRowElement/cells)
impl THTMLTableRowElement with cells(self : Self) -> HTMLCollection {
  html_table_row_element_cells_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLTableRowElement.insertCell](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableRowElement/insertCell)
impl THTMLTableRowElement with insert_cell(
  self : Self,
  index? : Int = (-1 : Int),
) -> HTMLTableCellElement {
  html_table_row_element_insert_cell_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(index),
  )
}

///|
/// [HTMLTableRowElement.deleteCell](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableRowElement/deleteCell)
impl THTMLTableRowElement with delete_cell(self : Self, index : Int) -> Unit {
  html_table_row_element_delete_cell_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(index),
  )
}

///|
/// [HTMLTableRowElement.align](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableRowElement/align)
impl THTMLTableRowElement with align(self : Self) -> String {
  html_table_row_element_align_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLTableRowElement.align](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableRowElement/align)
impl THTMLTableRowElement with set_align(self : Self, align : String) -> Unit {
  html_table_row_element_set_align_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(align),
  )
}

///|
/// [HTMLTableRowElement.ch](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableRowElement/ch)
impl THTMLTableRowElement with ch(self : Self) -> String {
  html_table_row_element_ch_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLTableRowElement.ch](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableRowElement/ch)
impl THTMLTableRowElement with set_ch(self : Self, ch : String) -> Unit {
  html_table_row_element_set_ch_ffi(TJsValue::to_js(self), TJsValue::to_js(ch))
}

///|
/// [HTMLTableRowElement.chOff](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableRowElement/chOff)
impl THTMLTableRowElement with ch_off(self : Self) -> String {
  html_table_row_element_ch_off_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLTableRowElement.chOff](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableRowElement/chOff)
impl THTMLTableRowElement with set_ch_off(self : Self, ch_off : String) -> Unit {
  html_table_row_element_set_ch_off_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(ch_off),
  )
}

///|
/// [HTMLTableRowElement.vAlign](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableRowElement/vAlign)
impl THTMLTableRowElement with v_align(self : Self) -> String {
  html_table_row_element_v_align_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLTableRowElement.vAlign](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableRowElement/vAlign)
impl THTMLTableRowElement with set_v_align(self : Self, v_align : String) -> Unit {
  html_table_row_element_set_v_align_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(v_align),
  )
}

///|
/// [HTMLTableRowElement.bgColor](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableRowElement/bgColor)
impl THTMLTableRowElement with bg_color(self : Self) -> String {
  html_table_row_element_bg_color_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLTableRowElement.bgColor](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableRowElement/bgColor)
impl THTMLTableRowElement with set_bg_color(self : Self, bg_color : String) -> Unit {
  html_table_row_element_set_bg_color_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(bg_color),
  )
}
