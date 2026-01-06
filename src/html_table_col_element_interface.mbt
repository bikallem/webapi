// Do not edit. This file is generated.
// MoonBit type: HTMLTableColElement
// Specifications: html.idl

///|
#external
pub type HTMLTableColElement

///|
pub impl TJsValue for HTMLTableColElement with to_js(self : HTMLTableColElement) -> JsValue = "%identity"

///|
pub fn[T : THTMLTableColElement] HTMLTableColElement::into(
  self : HTMLTableColElement,
) -> T = "%identity"

///|
pub impl THTMLTableColElement for HTMLTableColElement

///|
pub impl THTMLElement for HTMLTableColElement

///|
pub impl TElement for HTMLTableColElement

///|
pub impl TNode for HTMLTableColElement

///|
pub impl TEventTarget for HTMLTableColElement

///|
extern "js" fn html_table_col_element_new_ffi() -> HTMLTableColElement = "() => new HTMLTableColElement()"

///|
pub fn HTMLTableColElement::new() -> HTMLTableColElement {
  html_table_col_element_new_ffi()
}

///|
pub trait THTMLTableColElement: THTMLElement {
  span(self : Self) -> UInt = _
  set_span(self : Self, span : UInt) -> Unit = _
  align(self : Self) -> String = _
  set_align(self : Self, align : String) -> Unit = _
  ch(self : Self) -> String = _
  set_ch(self : Self, ch : String) -> Unit = _
  ch_off(self : Self) -> String = _
  set_ch_off(self : Self, ch_off : String) -> Unit = _
  v_align(self : Self) -> String = _
  set_v_align(self : Self, v_align : String) -> Unit = _
  width(self : Self) -> String = _
  set_width(self : Self, width : String) -> Unit = _
}

///|
extern "js" fn html_table_col_element_span_ffi(obj : JsValue) -> UInt = "(obj) => obj.span"

///|
impl THTMLTableColElement with span(self : Self) -> UInt {
  html_table_col_element_span_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_table_col_element_set_span_ffi(
  obj : JsValue,
  span : JsValue,
) -> Unit = "(obj, span) => { obj.span = span; }"

///|
impl THTMLTableColElement with set_span(self : Self, span : UInt) -> Unit {
  html_table_col_element_set_span_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(span),
  )
}

///|
extern "js" fn html_table_col_element_align_ffi(obj : JsValue) -> String = "(obj) => obj.align"

///|
impl THTMLTableColElement with align(self : Self) -> String {
  html_table_col_element_align_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_table_col_element_set_align_ffi(
  obj : JsValue,
  align : JsValue,
) -> Unit = "(obj, align) => { obj.align = align; }"

///|
impl THTMLTableColElement with set_align(self : Self, align : String) -> Unit {
  html_table_col_element_set_align_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(align),
  )
}

///|
extern "js" fn html_table_col_element_ch_ffi(obj : JsValue) -> String = "(obj) => obj.ch"

///|
impl THTMLTableColElement with ch(self : Self) -> String {
  html_table_col_element_ch_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_table_col_element_set_ch_ffi(
  obj : JsValue,
  ch : JsValue,
) -> Unit = "(obj, ch) => { obj.ch = ch; }"

///|
impl THTMLTableColElement with set_ch(self : Self, ch : String) -> Unit {
  html_table_col_element_set_ch_ffi(TJsValue::to_js(self), TJsValue::to_js(ch))
}

///|
extern "js" fn html_table_col_element_ch_off_ffi(obj : JsValue) -> String = "(obj) => obj.chOff"

///|
impl THTMLTableColElement with ch_off(self : Self) -> String {
  html_table_col_element_ch_off_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_table_col_element_set_ch_off_ffi(
  obj : JsValue,
  ch_off : JsValue,
) -> Unit = "(obj, chOff) => { obj.chOff = chOff; }"

///|
impl THTMLTableColElement with set_ch_off(self : Self, ch_off : String) -> Unit {
  html_table_col_element_set_ch_off_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(ch_off),
  )
}

///|
extern "js" fn html_table_col_element_v_align_ffi(obj : JsValue) -> String = "(obj) => obj.vAlign"

///|
impl THTMLTableColElement with v_align(self : Self) -> String {
  html_table_col_element_v_align_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_table_col_element_set_v_align_ffi(
  obj : JsValue,
  v_align : JsValue,
) -> Unit = "(obj, vAlign) => { obj.vAlign = vAlign; }"

///|
impl THTMLTableColElement with set_v_align(self : Self, v_align : String) -> Unit {
  html_table_col_element_set_v_align_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(v_align),
  )
}

///|
extern "js" fn html_table_col_element_width_ffi(obj : JsValue) -> String = "(obj) => obj.width"

///|
impl THTMLTableColElement with width(self : Self) -> String {
  html_table_col_element_width_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_table_col_element_set_width_ffi(
  obj : JsValue,
  width : JsValue,
) -> Unit = "(obj, width) => { obj.width = width; }"

///|
impl THTMLTableColElement with set_width(self : Self, width : String) -> Unit {
  html_table_col_element_set_width_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(width),
  )
}
