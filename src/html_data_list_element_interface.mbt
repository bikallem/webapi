// Do not edit. This file is generated.
// MoonBit type: HTMLDataListElement
// Specifications: html.idl

/// [HTMLDataListElement](https://developer.mozilla.org/en-US/docs/Web/API/HTMLDataListElement)
#external
pub type HTMLDataListElement

pub impl TJsValue for HTMLDataListElement with to_js(self: HTMLDataListElement) -> JsValue = "%identity"

pub fn[T: THTMLDataListElement] HTMLDataListElement::into(self : HTMLDataListElement) -> T = "%identity"

pub impl THTMLDataListElement for HTMLDataListElement

pub impl THTMLElement for HTMLDataListElement

pub impl TElement for HTMLDataListElement

pub impl TNode for HTMLDataListElement

pub impl TEventTarget for HTMLDataListElement

pub fn HTMLDataListElement::new() -> HTMLDataListElement {
  html_data_list_element_new_ffi()
}

/// [HTMLDataListElement](https://developer.mozilla.org/en-US/docs/Web/API/HTMLDataListElement) interface.
pub trait THTMLDataListElement: THTMLElement {
  options(self : Self) -> HTMLCollection = _
}

/// [HTMLDataListElement.options](https://developer.mozilla.org/en-US/docs/Web/API/HTMLDataListElement/options)
impl THTMLDataListElement with options(self : Self) -> HTMLCollection {
  html_data_list_element_options_ffi(TJsValue::to_js(self))
}