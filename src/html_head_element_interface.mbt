// Do not edit. This file is generated.
// MoonBit type: HTMLHeadElement
// Specifications: html.idl

///|
/// [HTMLHeadElement](https://developer.mozilla.org/en-US/docs/Web/API/HTMLHeadElement)
#external
pub type HTMLHeadElement

///|
pub impl TJsValue for HTMLHeadElement with to_js(self : HTMLHeadElement) -> JsValue = "%identity"

///|
pub impl FromJsAny for HTMLHeadElement with from_js_any(value : JsAny) -> HTMLHeadElement = "%identity"

///|
pub fn[T : THTMLHeadElement] HTMLHeadElement::into(self : HTMLHeadElement) -> T = "%identity"

///|
pub impl THTMLHeadElement for HTMLHeadElement

///|
pub impl THTMLElement for HTMLHeadElement

///|
pub impl TElement for HTMLHeadElement

///|
pub impl TNode for HTMLHeadElement

///|
pub impl TEventTarget for HTMLHeadElement

///|
pub fn HTMLHeadElement::new() -> HTMLHeadElement {
  html_head_element_new_ffi()
}

///|
/// [HTMLHeadElement](https://developer.mozilla.org/en-US/docs/Web/API/HTMLHeadElement) interface.
pub trait THTMLHeadElement: THTMLElement {}
