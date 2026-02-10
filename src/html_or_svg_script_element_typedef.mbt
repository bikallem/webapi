// Do not edit. This file is generated.
// MoonBit type: HTMLOrSVGScriptElement
// Specifications: html.idl

/// [HTMLOrSVGScriptElement](https://developer.mozilla.org/en-US/docs/Web/API/HTMLOrSVGScriptElement)
#external
pub type HTMLOrSVGScriptElement

pub impl TJsValue for HTMLOrSVGScriptElement with to_js(self: HTMLOrSVGScriptElement) -> JsValue = "%identity"

pub(open) trait THTMLOrSVGScriptElement {
  to_js(self : Self) -> JsValue
}

pub fn[T: THTMLOrSVGScriptElement] HTMLOrSVGScriptElement::into(self : HTMLOrSVGScriptElement) -> T = "%identity"

pub impl THTMLOrSVGScriptElement for HTMLScriptElement with to_js(self : HTMLScriptElement) -> JsValue = "%identity"

pub impl THTMLOrSVGScriptElement for SVGScriptElement with to_js(self : SVGScriptElement) -> JsValue = "%identity"