// Do not edit. This file is generated.
// MoonBit type: HTMLDivElement
// Specifications: html.idl

/// [HTMLDivElement](https://developer.mozilla.org/en-US/docs/Web/API/HTMLDivElement)
#external
pub type HTMLDivElement

pub impl TJsValue for HTMLDivElement with to_js(self: HTMLDivElement) -> JsValue = "%identity"

pub fn[T: THTMLDivElement] HTMLDivElement::into(self : HTMLDivElement) -> T = "%identity"

pub impl THTMLDivElement for HTMLDivElement

pub impl THTMLElement for HTMLDivElement

pub impl TElement for HTMLDivElement

pub impl TNode for HTMLDivElement

pub impl TEventTarget for HTMLDivElement

pub fn HTMLDivElement::new() -> HTMLDivElement {
  html_div_element_new_ffi()
}

/// [HTMLDivElement](https://developer.mozilla.org/en-US/docs/Web/API/HTMLDivElement) interface.
pub trait THTMLDivElement: THTMLElement {
  align(self : Self) -> String = _
  set_align(self : Self, align : String) -> Unit = _
}

/// [HTMLDivElement.align](https://developer.mozilla.org/en-US/docs/Web/API/HTMLDivElement/align)
impl THTMLDivElement with align(self : Self) -> String {
  html_div_element_align_ffi(TJsValue::to_js(self)).unsafe_cast()
}

/// [HTMLDivElement.align](https://developer.mozilla.org/en-US/docs/Web/API/HTMLDivElement/align)
impl THTMLDivElement with set_align(self : Self, 
align : String) -> Unit {
  html_div_element_set_align_ffi(TJsValue::to_js(self), TJsValue::to_js(align))
}