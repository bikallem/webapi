// Do not edit. This file is generated.
// MoonBit type: HTMLTableSectionElement
// Specifications: html.idl

///|
/// [HTMLTableSectionElement](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableSectionElement)
#external
pub type HTMLTableSectionElement

///|
pub impl TJsValue for HTMLTableSectionElement with to_js(
  self : HTMLTableSectionElement,
) -> JsValue = "%identity"

///|
pub fn[T : THTMLTableSectionElement] HTMLTableSectionElement::into(
  self : HTMLTableSectionElement,
) -> T = "%identity"

///|
pub impl THTMLTableSectionElement for HTMLTableSectionElement

///|
pub impl THTMLElement for HTMLTableSectionElement

///|
pub impl TElement for HTMLTableSectionElement

///|
pub impl TNode for HTMLTableSectionElement

///|
pub impl TEventTarget for HTMLTableSectionElement

///|
extern "js" fn html_table_section_element_new_ffi() -> HTMLTableSectionElement = "() => new HTMLTableSectionElement()"

///|
pub fn HTMLTableSectionElement::new() -> HTMLTableSectionElement {
  html_table_section_element_new_ffi()
}

///|
/// [HTMLTableSectionElement](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableSectionElement) interface.
pub trait THTMLTableSectionElement: THTMLElement {
  rows(self : Self) -> HTMLCollection = _
  insert_row(self : Self, index? : Int) -> HTMLTableRowElement = _
  delete_row(self : Self, index : Int) -> Unit = _
  align(self : Self) -> String = _
  set_align(self : Self, align : String) -> Unit = _
  ch(self : Self) -> String = _
  set_ch(self : Self, ch : String) -> Unit = _
  ch_off(self : Self) -> String = _
  set_ch_off(self : Self, ch_off : String) -> Unit = _
  v_align(self : Self) -> String = _
  set_v_align(self : Self, v_align : String) -> Unit = _
}

///|
extern "js" fn html_table_section_element_rows_ffi(
  obj : JsValue,
) -> HTMLCollection = "(obj) => obj.rows"

///|
/// [HTMLTableSectionElement.rows](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableSectionElement/rows)
impl THTMLTableSectionElement with rows(self : Self) -> HTMLCollection {
  html_table_section_element_rows_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_table_section_element_insert_row_ffi(
  obj : JsValue,
  index : JsValue,
) -> HTMLTableRowElement = "(obj, index) => obj.insertRow(index)"

///|
/// [HTMLTableSectionElement.insertRow](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableSectionElement/insertRow)
impl THTMLTableSectionElement with insert_row(
  self : Self,
  index? : Int = (-1 : Int),
) -> HTMLTableRowElement {
  html_table_section_element_insert_row_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(index),
  )
}

///|
extern "js" fn html_table_section_element_delete_row_ffi(
  obj : JsValue,
  index : JsValue,
) -> Unit = "(obj, index) => obj.deleteRow(index)"

///|
/// [HTMLTableSectionElement.deleteRow](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableSectionElement/deleteRow)
impl THTMLTableSectionElement with delete_row(self : Self, index : Int) -> Unit {
  html_table_section_element_delete_row_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(index),
  )
}

///|
extern "js" fn html_table_section_element_align_ffi(obj : JsValue) -> String = "(obj) => obj.align"

///|
/// [HTMLTableSectionElement.align](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableSectionElement/align)
impl THTMLTableSectionElement with align(self : Self) -> String {
  html_table_section_element_align_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_table_section_element_set_align_ffi(
  obj : JsValue,
  align : JsValue,
) -> Unit = "(obj, align) => { obj.align = align; }"

///|
/// [HTMLTableSectionElement.align](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableSectionElement/align)
impl THTMLTableSectionElement with set_align(self : Self, align : String) -> Unit {
  html_table_section_element_set_align_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(align),
  )
}

///|
extern "js" fn html_table_section_element_ch_ffi(obj : JsValue) -> String = "(obj) => obj.ch"

///|
/// [HTMLTableSectionElement.ch](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableSectionElement/ch)
impl THTMLTableSectionElement with ch(self : Self) -> String {
  html_table_section_element_ch_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_table_section_element_set_ch_ffi(
  obj : JsValue,
  ch : JsValue,
) -> Unit = "(obj, ch) => { obj.ch = ch; }"

///|
/// [HTMLTableSectionElement.ch](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableSectionElement/ch)
impl THTMLTableSectionElement with set_ch(self : Self, ch : String) -> Unit {
  html_table_section_element_set_ch_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(ch),
  )
}

///|
extern "js" fn html_table_section_element_ch_off_ffi(obj : JsValue) -> String = "(obj) => obj.chOff"

///|
/// [HTMLTableSectionElement.chOff](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableSectionElement/chOff)
impl THTMLTableSectionElement with ch_off(self : Self) -> String {
  html_table_section_element_ch_off_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_table_section_element_set_ch_off_ffi(
  obj : JsValue,
  ch_off : JsValue,
) -> Unit = "(obj, chOff) => { obj.chOff = chOff; }"

///|
/// [HTMLTableSectionElement.chOff](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableSectionElement/chOff)
impl THTMLTableSectionElement with set_ch_off(self : Self, ch_off : String) -> Unit {
  html_table_section_element_set_ch_off_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(ch_off),
  )
}

///|
extern "js" fn html_table_section_element_v_align_ffi(obj : JsValue) -> String = "(obj) => obj.vAlign"

///|
/// [HTMLTableSectionElement.vAlign](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableSectionElement/vAlign)
impl THTMLTableSectionElement with v_align(self : Self) -> String {
  html_table_section_element_v_align_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_table_section_element_set_v_align_ffi(
  obj : JsValue,
  v_align : JsValue,
) -> Unit = "(obj, vAlign) => { obj.vAlign = vAlign; }"

///|
/// [HTMLTableSectionElement.vAlign](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableSectionElement/vAlign)
impl THTMLTableSectionElement with set_v_align(self : Self, v_align : String) -> Unit {
  html_table_section_element_set_v_align_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(v_align),
  )
}
