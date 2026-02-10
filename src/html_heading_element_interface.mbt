// Do not edit. This file is generated.
// MoonBit type: HTMLHeadingElement
// Specifications: html.idl

/// [HTMLHeadingElement](https://developer.mozilla.org/en-US/docs/Web/API/HTMLHeadingElement)
#external
pub type HTMLHeadingElement

pub impl TJsValue for HTMLHeadingElement with to_js(self: HTMLHeadingElement) -> JsValue = "%identity"

pub fn[T: THTMLHeadingElement] HTMLHeadingElement::into(self : HTMLHeadingElement) -> T = "%identity"

pub impl THTMLHeadingElement for HTMLHeadingElement

pub impl THTMLElement for HTMLHeadingElement

pub impl TElement for HTMLHeadingElement

pub impl TNode for HTMLHeadingElement

pub impl TEventTarget for HTMLHeadingElement

pub fn HTMLHeadingElement::new() -> HTMLHeadingElement {
  html_heading_element_new_ffi()
}

/// [HTMLHeadingElement](https://developer.mozilla.org/en-US/docs/Web/API/HTMLHeadingElement) interface.
pub trait THTMLHeadingElement: THTMLElement {
  align(self : Self) -> String = _
  set_align(self : Self, align : String) -> Unit = _
}

/// [HTMLHeadingElement.align](https://developer.mozilla.org/en-US/docs/Web/API/HTMLHeadingElement/align)
impl THTMLHeadingElement with align(self : Self) -> String {
  html_heading_element_align_ffi(TJsValue::to_js(self))
}

/// [HTMLHeadingElement.align](https://developer.mozilla.org/en-US/docs/Web/API/HTMLHeadingElement/align)
impl THTMLHeadingElement with set_align(self : Self, 
align : String) -> Unit {
  html_heading_element_set_align_ffi(TJsValue::to_js(self), TJsValue::to_js(align))
}