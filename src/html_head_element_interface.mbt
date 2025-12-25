// Do not edit. This file is generated.
// MoonBit type: HTMLHeadElement
// Specifications: html.idl

///|
#external
pub type HTMLHeadElement

///|
pub impl TJsValue for HTMLHeadElement with to_js(self : HTMLHeadElement) -> JsValue = "%identity"

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
extern "js" fn html_head_element_new_ffi() -> HTMLHeadElement = "() => new HTMLHeadElement()"

///|
pub fn HTMLHeadElement::new() -> HTMLHeadElement {
  html_head_element_new_ffi()
}

///|
pub trait THTMLHeadElement: THTMLElement {}
