// Do not edit. This file is generated.
// MoonBit type: HTMLOrSVGImageElement
// Specifications: html.idl

///|
/// [HTMLOrSVGImageElement](https://developer.mozilla.org/en-US/docs/Web/API/HTMLOrSVGImageElement)
#external
pub type HTMLOrSVGImageElement

///|
pub impl TJsValue for HTMLOrSVGImageElement with to_js(
  self : HTMLOrSVGImageElement,
) -> JsValue = "%identity"

///|
pub impl FromJsAny for HTMLOrSVGImageElement with from_js_any(value : JsAny) -> HTMLOrSVGImageElement = "%identity"

///|
pub(open) trait THTMLOrSVGImageElement {
  to_js(self : Self) -> JsValue
}

///|
pub fn[T : THTMLOrSVGImageElement + FromJsAny] HTMLOrSVGImageElement::into(
  self : HTMLOrSVGImageElement,
) -> T {
  FromJsAny::from_js_any(jsvalue_to_jsany(TJsValue::to_js(self)))
}

///|
pub fn[T : THTMLOrSVGImageElement] HTMLOrSVGImageElement::from(
  value : T,
) -> HTMLOrSVGImageElement = "%identity"

///|
pub impl THTMLOrSVGImageElement for HTMLOrSVGImageElement with to_js(
  self : HTMLOrSVGImageElement,
) -> JsValue = "%identity"

///|
pub impl THTMLOrSVGImageElement for HTMLImageElement with to_js(
  self : HTMLImageElement,
) -> JsValue = "%identity"

///|
pub impl THTMLOrSVGImageElement for SVGImageElement with to_js(
  self : SVGImageElement,
) -> JsValue = "%identity"
