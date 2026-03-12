// Do not edit. This file is generated.
// MoonBit type: SVGTextElement
// Specifications: SVG.idl

/// [SVGTextElement](https://developer.mozilla.org/en-US/docs/Web/API/SVGTextElement)
#external
pub type SVGTextElement

pub impl TJsValue for SVGTextElement with to_js(self: SVGTextElement) -> JsValue = "%identity"

pub impl FromJsAny for SVGTextElement with from_js_any(value : JsAny) -> SVGTextElement = "%identity"

pub fn[T: TSVGTextElement] SVGTextElement::into(self : SVGTextElement) -> T = "%identity"

pub impl TSVGTextElement for SVGTextElement

pub impl TSVGTextPositioningElement for SVGTextElement

pub impl TSVGTextContentElement for SVGTextElement

pub impl TSVGGraphicsElement for SVGTextElement

pub impl TSVGElement for SVGTextElement

pub impl TElement for SVGTextElement

pub impl TNode for SVGTextElement

pub impl TEventTarget for SVGTextElement

/// [SVGTextElement](https://developer.mozilla.org/en-US/docs/Web/API/SVGTextElement) interface.
pub trait TSVGTextElement: TSVGTextPositioningElement {

}

