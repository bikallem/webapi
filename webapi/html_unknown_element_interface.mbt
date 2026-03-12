// Do not edit. This file is generated.
// MoonBit type: HTMLUnknownElement
// Specifications: html.idl

/// [HTMLUnknownElement](https://developer.mozilla.org/en-US/docs/Web/API/HTMLUnknownElement)
#external
pub type HTMLUnknownElement

pub impl TJsValue for HTMLUnknownElement with to_js(self: HTMLUnknownElement) -> JsValue = "%identity"

pub impl FromJsAny for HTMLUnknownElement with from_js_any(value : JsAny) -> HTMLUnknownElement = "%identity"

pub fn[T: THTMLUnknownElement] HTMLUnknownElement::into(self : HTMLUnknownElement) -> T = "%identity"

pub impl THTMLUnknownElement for HTMLUnknownElement

pub impl THTMLElement for HTMLUnknownElement

pub impl TElement for HTMLUnknownElement

pub impl TNode for HTMLUnknownElement

pub impl TEventTarget for HTMLUnknownElement

/// [HTMLUnknownElement](https://developer.mozilla.org/en-US/docs/Web/API/HTMLUnknownElement) interface.
pub trait THTMLUnknownElement: THTMLElement {

}

