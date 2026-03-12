// Do not edit. This file is generated.
// MoonBit type: HTMLBRElement
// Specifications: html.idl

///|
/// [HTMLBRElement](https://developer.mozilla.org/en-US/docs/Web/API/HTMLBRElement)
#external
pub type HTMLBRElement

///|
pub impl TJsValue for HTMLBRElement with to_js(self : HTMLBRElement) -> JsValue = "%identity"

///|
pub impl FromJsAny for HTMLBRElement with from_js_any(value : JsAny) -> HTMLBRElement = "%identity"

///|
pub fn[T : THTMLBRElement] HTMLBRElement::into(self : HTMLBRElement) -> T = "%identity"

///|
pub impl THTMLBRElement for HTMLBRElement

///|
pub impl THTMLElement for HTMLBRElement

///|
pub impl TElement for HTMLBRElement

///|
pub impl TNode for HTMLBRElement

///|
pub impl TEventTarget for HTMLBRElement

///|
pub fn HTMLBRElement::new() -> HTMLBRElement {
  htmlbr_element_new_ffi()
}

///|
/// [HTMLBRElement](https://developer.mozilla.org/en-US/docs/Web/API/HTMLBRElement) interface.
pub trait THTMLBRElement: THTMLElement {
  clear(self : Self) -> String = _
  set_clear(self : Self, clear : String) -> Unit = _
}

///|
/// [HTMLBRElement.clear](https://developer.mozilla.org/en-US/docs/Web/API/HTMLBRElement/clear)
impl THTMLBRElement with clear(self : Self) -> String {
  htmlbr_element_clear_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLBRElement.clear](https://developer.mozilla.org/en-US/docs/Web/API/HTMLBRElement/clear)
impl THTMLBRElement with set_clear(self : Self, clear : String) -> Unit {
  htmlbr_element_set_clear_ffi(TJsValue::to_js(self), TJsValue::to_js(clear))
}

///|
#cfg(target="js")
extern "js" fn htmlbr_element_new_ffi() -> HTMLBRElement = "() => new HTMLBRElement()"

///|
#cfg(target="js")
extern "js" fn htmlbr_element_clear_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.clear"

///|
#cfg(target="js")
fn htmlbr_element_clear_ffi(obj : JsValue) -> String {
  htmlbr_element_clear_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn htmlbr_element_set_clear_ffi(
  obj : JsValue,
  clear : JsValue,
) -> Unit = "(obj, clear) => { obj.clear = clear; }"

///|
#cfg(target="wasm-gc")
fn htmlbr_element_new_ffi() -> HTMLBRElement = "webapi_HTMLBRElement" "new"

///|
#cfg(target="wasm-gc")
fn htmlbr_element_clear_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLBRElement" "get_clear"

///|
#cfg(target="wasm-gc")
fn htmlbr_element_clear_ffi(obj : JsValue) -> String {
  jsvalue_to_string(htmlbr_element_clear_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn htmlbr_element_set_clear_ffi(obj : JsValue, clear : JsValue) -> Unit = "webapi_HTMLBRElement" "set_clear"
