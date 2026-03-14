// Do not edit. This file is generated.
// MoonBit type: SVGTextElement
// Specifications: SVG.idl

/// [SVGTextElement](https://developer.mozilla.org/en-US/docs/Web/API/SVGTextElement)
#external
pub type SVGTextElement

pub impl TJsValue for SVGTextElement with to_js(self: SVGTextElement) -> JsValue = "%identity"

pub impl FromJsAny for SVGTextElement with from_js_any(value : JsAny) -> SVGTextElement = "%identity"

/// Unchecked downcast — no runtime type check is performed.
/// Prefer `try_into()` for checked downcasts.
#deprecated("Use unsafe_into or try_into instead")
pub fn[T: TSVGTextElement] SVGTextElement::into(self : SVGTextElement) -> T = "%identity"

/// Unchecked downcast — no runtime type check is performed.
/// WARNING: If the underlying JS value is not of type T, this will silently
/// produce a value with incorrect type, leading to undefined behavior.
pub fn[T: TSVGTextElement] SVGTextElement::unsafe_into(self : SVGTextElement) -> T = "%identity"

pub impl HasConstructor for SVGTextElement with constructor_name() { "SVGTextElement" }

/// Checked downcast — returns None if the JS value is not an instance of T.
pub fn[T : TSVGTextElement + HasConstructor] SVGTextElement::try_into(self : SVGTextElement) -> T? {
  if js_instanceof(TJsValue::to_js(self), T::constructor_name()) {
    Some(self.unsafe_into())
  } else {
    None
  }
}

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

