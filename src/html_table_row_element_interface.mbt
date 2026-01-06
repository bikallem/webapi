// Do not edit. This file is generated.
// MoonBit type: HTMLTableRowElement
// Specifications: html.idl

///|
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
extern "js" fn html_table_row_element_new_ffi() -> HTMLTableRowElement = "() => new HTMLTableRowElement()"

///|
pub fn HTMLTableRowElement::new() -> HTMLTableRowElement {
  html_table_row_element_new_ffi()
}

///|
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
extern "js" fn html_table_row_element_row_index_ffi(obj : JsValue) -> Int = "(obj) => obj.rowIndex"

///|
impl THTMLTableRowElement with row_index(self : Self) -> Int {
  html_table_row_element_row_index_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_table_row_element_section_row_index_ffi(
  obj : JsValue,
) -> Int = "(obj) => obj.sectionRowIndex"

///|
impl THTMLTableRowElement with section_row_index(self : Self) -> Int {
  html_table_row_element_section_row_index_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_table_row_element_cells_ffi(
  obj : JsValue,
) -> HTMLCollection = "(obj) => obj.cells"

///|
impl THTMLTableRowElement with cells(self : Self) -> HTMLCollection {
  html_table_row_element_cells_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_table_row_element_insert_cell_ffi(
  obj : JsValue,
  index : JsValue,
) -> HTMLTableCellElement = "(obj, index) => obj.insertCell(index)"

///|
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
extern "js" fn html_table_row_element_delete_cell_ffi(
  obj : JsValue,
  index : JsValue,
) -> Unit = "(obj, index) => obj.deleteCell(index)"

///|
impl THTMLTableRowElement with delete_cell(self : Self, index : Int) -> Unit {
  html_table_row_element_delete_cell_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(index),
  )
}

///|
extern "js" fn html_table_row_element_align_ffi(obj : JsValue) -> String = "(obj) => obj.align"

///|
impl THTMLTableRowElement with align(self : Self) -> String {
  html_table_row_element_align_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_table_row_element_set_align_ffi(
  obj : JsValue,
  align : JsValue,
) -> Unit = "(obj, align) => { obj.align = align; }"

///|
impl THTMLTableRowElement with set_align(self : Self, align : String) -> Unit {
  html_table_row_element_set_align_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(align),
  )
}

///|
extern "js" fn html_table_row_element_ch_ffi(obj : JsValue) -> String = "(obj) => obj.ch"

///|
impl THTMLTableRowElement with ch(self : Self) -> String {
  html_table_row_element_ch_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_table_row_element_set_ch_ffi(
  obj : JsValue,
  ch : JsValue,
) -> Unit = "(obj, ch) => { obj.ch = ch; }"

///|
impl THTMLTableRowElement with set_ch(self : Self, ch : String) -> Unit {
  html_table_row_element_set_ch_ffi(TJsValue::to_js(self), TJsValue::to_js(ch))
}

///|
extern "js" fn html_table_row_element_ch_off_ffi(obj : JsValue) -> String = "(obj) => obj.chOff"

///|
impl THTMLTableRowElement with ch_off(self : Self) -> String {
  html_table_row_element_ch_off_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_table_row_element_set_ch_off_ffi(
  obj : JsValue,
  ch_off : JsValue,
) -> Unit = "(obj, chOff) => { obj.chOff = chOff; }"

///|
impl THTMLTableRowElement with set_ch_off(self : Self, ch_off : String) -> Unit {
  html_table_row_element_set_ch_off_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(ch_off),
  )
}

///|
extern "js" fn html_table_row_element_v_align_ffi(obj : JsValue) -> String = "(obj) => obj.vAlign"

///|
impl THTMLTableRowElement with v_align(self : Self) -> String {
  html_table_row_element_v_align_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_table_row_element_set_v_align_ffi(
  obj : JsValue,
  v_align : JsValue,
) -> Unit = "(obj, vAlign) => { obj.vAlign = vAlign; }"

///|
impl THTMLTableRowElement with set_v_align(self : Self, v_align : String) -> Unit {
  html_table_row_element_set_v_align_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(v_align),
  )
}

///|
extern "js" fn html_table_row_element_bg_color_ffi(obj : JsValue) -> String = "(obj) => obj.bgColor"

///|
impl THTMLTableRowElement with bg_color(self : Self) -> String {
  html_table_row_element_bg_color_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_table_row_element_set_bg_color_ffi(
  obj : JsValue,
  bg_color : JsValue,
) -> Unit = "(obj, bgColor) => { obj.bgColor = bgColor; }"

///|
impl THTMLTableRowElement with set_bg_color(self : Self, bg_color : String) -> Unit {
  html_table_row_element_set_bg_color_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(bg_color),
  )
}
