// Do not edit. This file is generated.
// MoonBit type: HTMLOrSVGScriptElement
// Specifications: html.idl

///|
/// [HTMLOrSVGScriptElement](https://developer.mozilla.org/en-US/docs/Web/API/HTMLOrSVGScriptElement)
#external
pub type HTMLOrSVGScriptElement

///|
pub impl TJsValue for HTMLOrSVGScriptElement with to_js(
  self : HTMLOrSVGScriptElement,
) -> JsValue = "%identity"

///|
pub impl FromJsAny for HTMLOrSVGScriptElement with from_js_any(value : JsAny) -> HTMLOrSVGScriptElement = "%identity"

///|
pub(open) trait THTMLOrSVGScriptElement: TJsValue {}

///|
pub fn[T : THTMLOrSVGScriptElement + FromJsAny] HTMLOrSVGScriptElement::into(
  self : HTMLOrSVGScriptElement,
) -> T {
  FromJsAny::from_js_any(jsvalue_to_jsany(TJsValue::to_js(self)))
}

///|
pub fn[T : THTMLOrSVGScriptElement] HTMLOrSVGScriptElement::from(
  value : T,
) -> HTMLOrSVGScriptElement = "%identity"

///|
pub impl THTMLOrSVGScriptElement for HTMLOrSVGScriptElement

///|
pub impl THTMLOrSVGScriptElement for HTMLScriptElement

///|
pub impl THTMLOrSVGScriptElement for SVGScriptElement
