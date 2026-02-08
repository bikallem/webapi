// Do not edit. This file is generated.
// MoonBit type: HTMLSelectedContentElement
// Specifications: html.idl

/// [HTMLSelectedContentElement](https://developer.mozilla.org/en-US/docs/Web/API/HTMLSelectedContentElement)
#external
pub type HTMLSelectedContentElement

pub impl TJsValue for HTMLSelectedContentElement with to_js(self: HTMLSelectedContentElement) -> JsValue = "%identity"

pub fn[T: THTMLSelectedContentElement] HTMLSelectedContentElement::into(self : HTMLSelectedContentElement) -> T = "%identity"

pub impl THTMLSelectedContentElement for HTMLSelectedContentElement

pub impl THTMLElement for HTMLSelectedContentElement

pub impl TElement for HTMLSelectedContentElement

pub impl TNode for HTMLSelectedContentElement

pub impl TEventTarget for HTMLSelectedContentElement

pub fn HTMLSelectedContentElement::new() -> HTMLSelectedContentElement {
  html_selected_content_element_new_ffi()
}

/// [HTMLSelectedContentElement](https://developer.mozilla.org/en-US/docs/Web/API/HTMLSelectedContentElement) interface.
pub trait THTMLSelectedContentElement: THTMLElement {

}

