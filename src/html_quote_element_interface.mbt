// Do not edit. This file is generated.
// MoonBit type: HTMLQuoteElement
// Specifications: html.idl

///|
/// [HTMLQuoteElement](https://developer.mozilla.org/en-US/docs/Web/API/HTMLQuoteElement)
#external
pub type HTMLQuoteElement

///|
pub impl TJsValue for HTMLQuoteElement with to_js(self : HTMLQuoteElement) -> JsValue = "%identity"

///|
pub fn[T : THTMLQuoteElement] HTMLQuoteElement::into(
  self : HTMLQuoteElement,
) -> T = "%identity"

///|
pub impl THTMLQuoteElement for HTMLQuoteElement

///|
pub impl THTMLElement for HTMLQuoteElement

///|
pub impl TElement for HTMLQuoteElement

///|
pub impl TNode for HTMLQuoteElement

///|
pub impl TEventTarget for HTMLQuoteElement

///|
pub fn HTMLQuoteElement::new() -> HTMLQuoteElement {
  html_quote_element_new_ffi()
}

///|
/// [HTMLQuoteElement](https://developer.mozilla.org/en-US/docs/Web/API/HTMLQuoteElement) interface.
pub trait THTMLQuoteElement: THTMLElement {
  cite(self : Self) -> String = _
  set_cite(self : Self, cite : String) -> Unit = _
}

///|
/// [HTMLQuoteElement.cite](https://developer.mozilla.org/en-US/docs/Web/API/HTMLQuoteElement/cite)
impl THTMLQuoteElement with cite(self : Self) -> String {
  html_quote_element_cite_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLQuoteElement.cite](https://developer.mozilla.org/en-US/docs/Web/API/HTMLQuoteElement/cite)
impl THTMLQuoteElement with set_cite(self : Self, cite : String) -> Unit {
  html_quote_element_set_cite_ffi(TJsValue::to_js(self), TJsValue::to_js(cite))
}
