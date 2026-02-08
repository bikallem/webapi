// Do not edit. This file is generated.
// MoonBit type: HTMLTitleElement
// Specifications: html.idl

/// [HTMLTitleElement](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTitleElement)
#external
pub type HTMLTitleElement

pub impl TJsValue for HTMLTitleElement with to_js(self: HTMLTitleElement) -> JsValue = "%identity"

pub fn[T: THTMLTitleElement] HTMLTitleElement::into(self : HTMLTitleElement) -> T = "%identity"

pub impl THTMLTitleElement for HTMLTitleElement

pub impl THTMLElement for HTMLTitleElement

pub impl TElement for HTMLTitleElement

pub impl TNode for HTMLTitleElement

pub impl TEventTarget for HTMLTitleElement

pub fn HTMLTitleElement::new() -> HTMLTitleElement {
  html_title_element_new_ffi()
}

/// [HTMLTitleElement](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTitleElement) interface.
pub trait THTMLTitleElement: THTMLElement {
  text(self : Self) -> String = _
  set_text(self : Self, text : String) -> Unit = _
}

/// [HTMLTitleElement.text](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTitleElement/text)
impl THTMLTitleElement with text(self : Self) -> String {
  html_title_element_text_ffi(TJsValue::to_js(self)).unsafe_cast()
}

/// [HTMLTitleElement.text](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTitleElement/text)
impl THTMLTitleElement with set_text(self : Self, 
text : String) -> Unit {
  html_title_element_set_text_ffi(TJsValue::to_js(self), TJsValue::to_js(text))
}