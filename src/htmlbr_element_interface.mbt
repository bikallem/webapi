// Do not edit. This file is generated.
// MoonBit type: HTMLBRElement
// Specifications: html.idl

///|
#external
pub type HTMLBRElement

///|
pub impl TJsValue for HTMLBRElement with to_js(self : HTMLBRElement) -> JsValue = "%identity"

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
extern "js" fn htmlbr_element_new_ffi() -> HTMLBRElement = "() => new HTMLBRElement()"

///|
pub fn HTMLBRElement::new() -> HTMLBRElement {
  htmlbr_element_new_ffi()
}

///|
pub trait THTMLBRElement: THTMLElement {
  clear(self : Self) -> String = _
  set_clear(self : Self, clear : String) -> Unit = _
}

///|
extern "js" fn htmlbr_element_clear_ffi(obj : JsValue) -> String = "(obj) => obj.clear"

///|
impl THTMLBRElement with clear(self : Self) -> String {
  htmlbr_element_clear_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn htmlbr_element_set_clear_ffi(
  obj : JsValue,
  clear : JsValue,
) -> Unit = "(obj, clear) => { obj.clear = clear; }"

///|
impl THTMLBRElement with set_clear(self : Self, clear : String) -> Unit {
  htmlbr_element_set_clear_ffi(TJsValue::to_js(self), TJsValue::to_js(clear))
}
