// Do not edit. This file is generated.
// MoonBit type: HTMLTimeElement
// Specifications: html.idl

/// [HTMLTimeElement](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTimeElement)
#external
pub type HTMLTimeElement

pub impl TJsValue for HTMLTimeElement with to_js(self: HTMLTimeElement) -> JsValue = "%identity"

pub fn[T: THTMLTimeElement] HTMLTimeElement::into(self : HTMLTimeElement) -> T = "%identity"

pub impl THTMLTimeElement for HTMLTimeElement

pub impl THTMLElement for HTMLTimeElement

pub impl TElement for HTMLTimeElement

pub impl TNode for HTMLTimeElement

pub impl TEventTarget for HTMLTimeElement

pub fn HTMLTimeElement::new() -> HTMLTimeElement {
  html_time_element_new_ffi()
}

/// [HTMLTimeElement](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTimeElement) interface.
pub trait THTMLTimeElement: THTMLElement {
  date_time(self : Self) -> String = _
  set_date_time(self : Self, date_time : String) -> Unit = _
}

/// [HTMLTimeElement.dateTime](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTimeElement/dateTime)
impl THTMLTimeElement with date_time(self : Self) -> String {
  html_time_element_date_time_ffi(TJsValue::to_js(self)).unsafe_cast()
}

/// [HTMLTimeElement.dateTime](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTimeElement/dateTime)
impl THTMLTimeElement with set_date_time(self : Self, 
date_time : String) -> Unit {
  html_time_element_set_date_time_ffi(TJsValue::to_js(self), TJsValue::to_js(date_time))
}