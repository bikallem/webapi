// Do not edit. This file is generated.
// MoonBit type: SVGTSpanElement
// Specifications: SVG.idl

///|
/// [SVGTSpanElement](https://developer.mozilla.org/en-US/docs/Web/API/SVGTSpanElement)
#external
pub type SVGTSpanElement

///|
pub impl TJsValue for SVGTSpanElement with to_js(self : SVGTSpanElement) -> JsValue = "%identity"

///|
pub impl FromJsAny for SVGTSpanElement with from_js_any(value : JsAny) -> SVGTSpanElement = "%identity"

///|
/// Unchecked downcast — no runtime type check is performed.
/// Prefer `try_into()` for checked downcasts.
#deprecated("Use unsafe_into or try_into instead")
pub fn[T : TSVGTSpanElement] SVGTSpanElement::into(self : SVGTSpanElement) -> T = "%identity"

///|
/// Unchecked downcast — no runtime type check is performed.
/// WARNING: If the underlying JS value is not of type T, this will silently
/// produce a value with incorrect type, leading to undefined behavior.
pub fn[T : TSVGTSpanElement] SVGTSpanElement::unsafe_into(
  self : SVGTSpanElement,
) -> T = "%identity"

///|
pub impl HasConstructor for SVGTSpanElement with constructor_name() {
  "SVGTSpanElement"
}

///|
/// Checked downcast — returns None if the JS value is not an instance of T.
pub fn[T : TSVGTSpanElement + HasConstructor] SVGTSpanElement::try_into(
  self : SVGTSpanElement,
) -> T? {
  if js_instanceof(TJsValue::to_js(self), T::constructor_name()) {
    Some(self.unsafe_into())
  } else {
    None
  }
}

///|
pub impl TSVGTSpanElement for SVGTSpanElement

///|
pub impl TSVGTextPositioningElement for SVGTSpanElement

///|
pub impl TSVGTextContentElement for SVGTSpanElement

///|
pub impl TSVGGraphicsElement for SVGTSpanElement

///|
pub impl TSVGElement for SVGTSpanElement

///|
pub impl TElement for SVGTSpanElement

///|
pub impl TNode for SVGTSpanElement

///|
pub impl TEventTarget for SVGTSpanElement

///|
/// [SVGTSpanElement](https://developer.mozilla.org/en-US/docs/Web/API/SVGTSpanElement) interface.
pub trait TSVGTSpanElement: TSVGTextPositioningElement {}
