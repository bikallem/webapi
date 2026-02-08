// Do not edit. This file is generated.
// MoonBit type: HTMLDataElement
// Specifications: html.idl

/// [HTMLDataElement](https://developer.mozilla.org/en-US/docs/Web/API/HTMLDataElement)
#external
pub type HTMLDataElement

pub impl TJsValue for HTMLDataElement with to_js(self: HTMLDataElement) -> JsValue = "%identity"

pub fn[T: THTMLDataElement] HTMLDataElement::into(self : HTMLDataElement) -> T = "%identity"

pub impl THTMLDataElement for HTMLDataElement

pub impl THTMLElement for HTMLDataElement

pub impl TElement for HTMLDataElement

pub impl TNode for HTMLDataElement

pub impl TEventTarget for HTMLDataElement

pub fn HTMLDataElement::new() -> HTMLDataElement {
  html_data_element_new_ffi()
}

/// [HTMLDataElement](https://developer.mozilla.org/en-US/docs/Web/API/HTMLDataElement) interface.
pub trait THTMLDataElement: THTMLElement {
  value(self : Self) -> String = _
  set_value(self : Self, value : String) -> Unit = _
}

/// [HTMLDataElement.value](https://developer.mozilla.org/en-US/docs/Web/API/HTMLDataElement/value)
impl THTMLDataElement with value(self : Self) -> String {
  html_data_element_value_ffi(TJsValue::to_js(self)).unsafe_cast()
}

/// [HTMLDataElement.value](https://developer.mozilla.org/en-US/docs/Web/API/HTMLDataElement/value)
impl THTMLDataElement with set_value(self : Self, 
value : String) -> Unit {
  html_data_element_set_value_ffi(TJsValue::to_js(self), TJsValue::to_js(value))
}