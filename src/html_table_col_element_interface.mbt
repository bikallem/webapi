// Do not edit. This file is generated.
// MoonBit type: HTMLTableColElement
// Specifications: html.idl

///|
/// [HTMLTableColElement](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableColElement)
#external
pub type HTMLTableColElement

///|
pub impl TJsValue for HTMLTableColElement with to_js(self : HTMLTableColElement) -> JsValue = "%identity"

///|
pub impl FromJsAny for HTMLTableColElement with from_js_any(value : JsAny) -> HTMLTableColElement = "%identity"

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
pub fn HTMLTableColElement::new() -> HTMLTableColElement {
  html_table_col_element_new_ffi()
}

///|
/// [HTMLTableColElement](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableColElement) interface.
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
/// [HTMLTableColElement.span](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableColElement/span)
impl THTMLTableColElement with span(self : Self) -> UInt {
  html_table_col_element_span_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLTableColElement.span](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableColElement/span)
impl THTMLTableColElement with set_span(self : Self, span : UInt) -> Unit {
  html_table_col_element_set_span_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(span),
  )
}

///|
/// [HTMLTableColElement.align](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableColElement/align)
impl THTMLTableColElement with align(self : Self) -> String {
  html_table_col_element_align_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLTableColElement.align](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableColElement/align)
impl THTMLTableColElement with set_align(self : Self, align : String) -> Unit {
  html_table_col_element_set_align_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(align),
  )
}

///|
/// [HTMLTableColElement.ch](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableColElement/ch)
impl THTMLTableColElement with ch(self : Self) -> String {
  html_table_col_element_ch_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLTableColElement.ch](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableColElement/ch)
impl THTMLTableColElement with set_ch(self : Self, ch : String) -> Unit {
  html_table_col_element_set_ch_ffi(TJsValue::to_js(self), TJsValue::to_js(ch))
}

///|
/// [HTMLTableColElement.chOff](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableColElement/chOff)
impl THTMLTableColElement with ch_off(self : Self) -> String {
  html_table_col_element_ch_off_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLTableColElement.chOff](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableColElement/chOff)
impl THTMLTableColElement with set_ch_off(self : Self, ch_off : String) -> Unit {
  html_table_col_element_set_ch_off_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(ch_off),
  )
}

///|
/// [HTMLTableColElement.vAlign](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableColElement/vAlign)
impl THTMLTableColElement with v_align(self : Self) -> String {
  html_table_col_element_v_align_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLTableColElement.vAlign](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableColElement/vAlign)
impl THTMLTableColElement with set_v_align(self : Self, v_align : String) -> Unit {
  html_table_col_element_set_v_align_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(v_align),
  )
}

///|
/// [HTMLTableColElement.width](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableColElement/width)
impl THTMLTableColElement with width(self : Self) -> String {
  html_table_col_element_width_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLTableColElement.width](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableColElement/width)
impl THTMLTableColElement with set_width(self : Self, width : String) -> Unit {
  html_table_col_element_set_width_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(width),
  )
}

///|
#cfg(target="js")
extern "js" fn html_table_col_element_new_ffi() -> HTMLTableColElement = "() => new HTMLTableColElement()"

///|
#cfg(target="js")
extern "js" fn html_table_col_element_span_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.span"

///|
#cfg(target="js")
fn html_table_col_element_span_ffi(obj : JsValue) -> UInt {
  html_table_col_element_span_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_table_col_element_set_span_ffi(
  obj : JsValue,
  span : JsValue,
) -> Unit = "(obj, span) => { obj.span = span; }"

///|
#cfg(target="js")
extern "js" fn html_table_col_element_align_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.align"

///|
#cfg(target="js")
fn html_table_col_element_align_ffi(obj : JsValue) -> String {
  html_table_col_element_align_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_table_col_element_set_align_ffi(
  obj : JsValue,
  align : JsValue,
) -> Unit = "(obj, align) => { obj.align = align; }"

///|
#cfg(target="js")
extern "js" fn html_table_col_element_ch_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.ch"

///|
#cfg(target="js")
fn html_table_col_element_ch_ffi(obj : JsValue) -> String {
  html_table_col_element_ch_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_table_col_element_set_ch_ffi(
  obj : JsValue,
  ch : JsValue,
) -> Unit = "(obj, ch) => { obj.ch = ch; }"

///|
#cfg(target="js")
extern "js" fn html_table_col_element_ch_off_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.chOff"

///|
#cfg(target="js")
fn html_table_col_element_ch_off_ffi(obj : JsValue) -> String {
  html_table_col_element_ch_off_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_table_col_element_set_ch_off_ffi(
  obj : JsValue,
  ch_off : JsValue,
) -> Unit = "(obj, chOff) => { obj.chOff = chOff; }"

///|
#cfg(target="js")
extern "js" fn html_table_col_element_v_align_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.vAlign"

///|
#cfg(target="js")
fn html_table_col_element_v_align_ffi(obj : JsValue) -> String {
  html_table_col_element_v_align_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_table_col_element_set_v_align_ffi(
  obj : JsValue,
  v_align : JsValue,
) -> Unit = "(obj, vAlign) => { obj.vAlign = vAlign; }"

///|
#cfg(target="js")
extern "js" fn html_table_col_element_width_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.width"

///|
#cfg(target="js")
fn html_table_col_element_width_ffi(obj : JsValue) -> String {
  html_table_col_element_width_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_table_col_element_set_width_ffi(
  obj : JsValue,
  width : JsValue,
) -> Unit = "(obj, width) => { obj.width = width; }"

///|
#cfg(target="wasm-gc")
fn html_table_col_element_new_ffi() -> HTMLTableColElement = "webapi_HTMLTableColElement" "new"

///|
#cfg(target="wasm-gc")
fn html_table_col_element_span_ffi(obj : JsValue) -> UInt = "webapi_HTMLTableColElement" "get_span"

///|
#cfg(target="wasm-gc")
fn html_table_col_element_set_span_ffi(obj : JsValue, span : JsValue) -> Unit = "webapi_HTMLTableColElement" "set_span"

///|
#cfg(target="wasm-gc")
fn html_table_col_element_align_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLTableColElement" "get_align"

///|
#cfg(target="wasm-gc")
fn html_table_col_element_align_ffi(obj : JsValue) -> String {
  jsvalue_to_string(html_table_col_element_align_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn html_table_col_element_set_align_ffi(obj : JsValue, align : JsValue) -> Unit = "webapi_HTMLTableColElement" "set_align"

///|
#cfg(target="wasm-gc")
fn html_table_col_element_ch_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLTableColElement" "get_ch"

///|
#cfg(target="wasm-gc")
fn html_table_col_element_ch_ffi(obj : JsValue) -> String {
  jsvalue_to_string(html_table_col_element_ch_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn html_table_col_element_set_ch_ffi(obj : JsValue, ch : JsValue) -> Unit = "webapi_HTMLTableColElement" "set_ch"

///|
#cfg(target="wasm-gc")
fn html_table_col_element_ch_off_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLTableColElement" "get_chOff"

///|
#cfg(target="wasm-gc")
fn html_table_col_element_ch_off_ffi(obj : JsValue) -> String {
  jsvalue_to_string(html_table_col_element_ch_off_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn html_table_col_element_set_ch_off_ffi(
  obj : JsValue,
  ch_off : JsValue,
) -> Unit = "webapi_HTMLTableColElement" "set_chOff"

///|
#cfg(target="wasm-gc")
fn html_table_col_element_v_align_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLTableColElement" "get_vAlign"

///|
#cfg(target="wasm-gc")
fn html_table_col_element_v_align_ffi(obj : JsValue) -> String {
  jsvalue_to_string(html_table_col_element_v_align_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn html_table_col_element_set_v_align_ffi(
  obj : JsValue,
  v_align : JsValue,
) -> Unit = "webapi_HTMLTableColElement" "set_vAlign"

///|
#cfg(target="wasm-gc")
fn html_table_col_element_width_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLTableColElement" "get_width"

///|
#cfg(target="wasm-gc")
fn html_table_col_element_width_ffi(obj : JsValue) -> String {
  jsvalue_to_string(html_table_col_element_width_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn html_table_col_element_set_width_ffi(obj : JsValue, width : JsValue) -> Unit = "webapi_HTMLTableColElement" "set_width"
