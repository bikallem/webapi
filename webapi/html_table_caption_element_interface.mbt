// Do not edit. This file is generated.
// MoonBit type: HTMLTableCaptionElement
// Specifications: html.idl

///|
/// [HTMLTableCaptionElement](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableCaptionElement)
#external
pub type HTMLTableCaptionElement

///|
pub impl TJsValue for HTMLTableCaptionElement with to_js(
  self : HTMLTableCaptionElement,
) -> JsValue = "%identity"

///|
pub impl FromJsAny for HTMLTableCaptionElement with from_js_any(value : JsAny) -> HTMLTableCaptionElement = "%identity"

///|
pub fn[T : THTMLTableCaptionElement] HTMLTableCaptionElement::into(
  self : HTMLTableCaptionElement,
) -> T = "%identity"

///|
pub impl THTMLTableCaptionElement for HTMLTableCaptionElement

///|
pub impl THTMLElement for HTMLTableCaptionElement

///|
pub impl TElement for HTMLTableCaptionElement

///|
pub impl TNode for HTMLTableCaptionElement

///|
pub impl TEventTarget for HTMLTableCaptionElement

///|
pub fn HTMLTableCaptionElement::new() -> HTMLTableCaptionElement {
  html_table_caption_element_new_ffi()
}

///|
/// [HTMLTableCaptionElement](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableCaptionElement) interface.
pub trait THTMLTableCaptionElement: THTMLElement {
  align(self : Self) -> String = _
  set_align(self : Self, align : String) -> Unit = _
}

///|
/// [HTMLTableCaptionElement.align](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableCaptionElement/align)
impl THTMLTableCaptionElement with align(self : Self) -> String {
  html_table_caption_element_align_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLTableCaptionElement.align](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableCaptionElement/align)
impl THTMLTableCaptionElement with set_align(self : Self, align : String) -> Unit {
  html_table_caption_element_set_align_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(align),
  )
}
