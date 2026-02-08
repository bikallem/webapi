// Do not edit. This file is generated.
// MoonBit type: HTMLPreElement
// Specifications: html.idl

///|
/// [HTMLPreElement](https://developer.mozilla.org/en-US/docs/Web/API/HTMLPreElement)
#external
pub type HTMLPreElement

///|
pub impl TJsValue for HTMLPreElement with to_js(self : HTMLPreElement) -> JsValue = "%identity"

///|
pub fn[T : THTMLPreElement] HTMLPreElement::into(self : HTMLPreElement) -> T = "%identity"

///|
pub impl THTMLPreElement for HTMLPreElement

///|
pub impl THTMLElement for HTMLPreElement

///|
pub impl TElement for HTMLPreElement

///|
pub impl TNode for HTMLPreElement

///|
pub impl TEventTarget for HTMLPreElement

///|
pub fn HTMLPreElement::new() -> HTMLPreElement {
  html_pre_element_new_ffi()
}

///|
/// [HTMLPreElement](https://developer.mozilla.org/en-US/docs/Web/API/HTMLPreElement) interface.
pub trait THTMLPreElement: THTMLElement {
  width(self : Self) -> Int = _
  set_width(self : Self, width : Int) -> Unit = _
}

///|
/// [HTMLPreElement.width](https://developer.mozilla.org/en-US/docs/Web/API/HTMLPreElement/width)
impl THTMLPreElement with width(self : Self) -> Int {
  html_pre_element_width_ffi(TJsValue::to_js(self)).unsafe_cast()
}

///|
/// [HTMLPreElement.width](https://developer.mozilla.org/en-US/docs/Web/API/HTMLPreElement/width)
impl THTMLPreElement with set_width(self : Self, width : Int) -> Unit {
  html_pre_element_set_width_ffi(TJsValue::to_js(self), TJsValue::to_js(width))
}
