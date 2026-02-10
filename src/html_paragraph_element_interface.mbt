// Do not edit. This file is generated.
// MoonBit type: HTMLParagraphElement
// Specifications: html.idl

///|
/// [HTMLParagraphElement](https://developer.mozilla.org/en-US/docs/Web/API/HTMLParagraphElement)
#external
pub type HTMLParagraphElement

///|
pub impl TJsValue for HTMLParagraphElement with to_js(
  self : HTMLParagraphElement,
) -> JsValue = "%identity"

///|
pub fn[T : THTMLParagraphElement] HTMLParagraphElement::into(
  self : HTMLParagraphElement,
) -> T = "%identity"

///|
pub impl THTMLParagraphElement for HTMLParagraphElement

///|
pub impl THTMLElement for HTMLParagraphElement

///|
pub impl TElement for HTMLParagraphElement

///|
pub impl TNode for HTMLParagraphElement

///|
pub impl TEventTarget for HTMLParagraphElement

///|
pub fn HTMLParagraphElement::new() -> HTMLParagraphElement {
  html_paragraph_element_new_ffi()
}

///|
/// [HTMLParagraphElement](https://developer.mozilla.org/en-US/docs/Web/API/HTMLParagraphElement) interface.
pub trait THTMLParagraphElement: THTMLElement {
  align(self : Self) -> String = _
  set_align(self : Self, align : String) -> Unit = _
}

///|
/// [HTMLParagraphElement.align](https://developer.mozilla.org/en-US/docs/Web/API/HTMLParagraphElement/align)
impl THTMLParagraphElement with align(self : Self) -> String {
  html_paragraph_element_align_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLParagraphElement.align](https://developer.mozilla.org/en-US/docs/Web/API/HTMLParagraphElement/align)
impl THTMLParagraphElement with set_align(self : Self, align : String) -> Unit {
  html_paragraph_element_set_align_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(align),
  )
}
