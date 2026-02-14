// Do not edit. This file is generated.
// MoonBit type: SVGGElement
// Specifications: SVG.idl

///|
/// [SVGGElement](https://developer.mozilla.org/en-US/docs/Web/API/SVGGElement)
#external
pub type SVGGElement

///|
pub impl TJsValue for SVGGElement with to_js(self : SVGGElement) -> JsValue = "%identity"

///|
pub impl FromJsAny for SVGGElement with from_js_any(value : JsAny) -> SVGGElement = "%identity"

///|
pub fn[T : TSVGGElement] SVGGElement::into(self : SVGGElement) -> T = "%identity"

///|
pub impl TSVGGElement for SVGGElement

///|
pub impl TSVGGraphicsElement for SVGGElement

///|
pub impl TSVGElement for SVGGElement

///|
pub impl TElement for SVGGElement

///|
pub impl TNode for SVGGElement

///|
pub impl TEventTarget for SVGGElement

///|
/// [SVGGElement](https://developer.mozilla.org/en-US/docs/Web/API/SVGGElement) interface.
pub trait TSVGGElement: TSVGGraphicsElement {}
