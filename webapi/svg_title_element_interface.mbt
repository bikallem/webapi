// Do not edit. This file is generated.
// MoonBit type: SVGTitleElement
// Specifications: SVG.idl

///|
/// [SVGTitleElement](https://developer.mozilla.org/en-US/docs/Web/API/SVGTitleElement)
#external
pub type SVGTitleElement

///|
pub impl TJsValue for SVGTitleElement with to_js(self : SVGTitleElement) -> JsValue = "%identity"

///|
pub impl FromJsAny for SVGTitleElement with from_js_any(value : JsAny) -> SVGTitleElement = "%identity"

///|
pub fn[T : TSVGTitleElement] SVGTitleElement::into(self : SVGTitleElement) -> T = "%identity"

///|
pub impl TSVGTitleElement for SVGTitleElement

///|
pub impl TSVGElement for SVGTitleElement

///|
pub impl TElement for SVGTitleElement

///|
pub impl TNode for SVGTitleElement

///|
pub impl TEventTarget for SVGTitleElement

///|
/// [SVGTitleElement](https://developer.mozilla.org/en-US/docs/Web/API/SVGTitleElement) interface.
pub trait TSVGTitleElement: TSVGElement {}
