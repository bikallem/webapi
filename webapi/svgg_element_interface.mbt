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
/// Unchecked downcast — no runtime type check is performed.
/// Prefer `try_into()` for checked downcasts.
#deprecated("Use unsafe_into or try_into instead")
pub fn[T : TSVGGElement] SVGGElement::into(self : SVGGElement) -> T = "%identity"

///|
/// Unchecked downcast — no runtime type check is performed.
/// WARNING: If the underlying JS value is not of type T, this will silently
/// produce a value with incorrect type, leading to undefined behavior.
pub fn[T : TSVGGElement] SVGGElement::unsafe_into(self : SVGGElement) -> T = "%identity"

///|
pub impl HasConstructor for SVGGElement with constructor_name() {
  "SVGGElement"
}

///|
/// Checked downcast — returns None if the JS value is not an instance of T.
pub fn[T : TSVGGElement + HasConstructor] SVGGElement::try_into(
  self : SVGGElement,
) -> T? {
  if js_instanceof(TJsValue::to_js(self), T::constructor_name()) {
    Some(self.unsafe_into())
  } else {
    None
  }
}

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
