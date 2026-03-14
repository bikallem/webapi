// Do not edit. This file is generated.
// MoonBit type: SVGDescElement
// Specifications: SVG.idl

///|
/// [SVGDescElement](https://developer.mozilla.org/en-US/docs/Web/API/SVGDescElement)
#external
pub type SVGDescElement

///|
pub impl TJsValue for SVGDescElement with to_js(self : SVGDescElement) -> JsValue = "%identity"

///|
pub impl FromJsAny for SVGDescElement with from_js_any(value : JsAny) -> SVGDescElement = "%identity"

///|
/// Unchecked downcast — no runtime type check is performed.
/// Prefer `try_into()` for checked downcasts.
#deprecated("Use unsafe_into or try_into instead")
pub fn[T : TSVGDescElement] SVGDescElement::into(self : SVGDescElement) -> T = "%identity"

///|
/// Unchecked downcast — no runtime type check is performed.
/// WARNING: If the underlying JS value is not of type T, this will silently
/// produce a value with incorrect type, leading to undefined behavior.
pub fn[T : TSVGDescElement] SVGDescElement::unsafe_into(
  self : SVGDescElement,
) -> T = "%identity"

///|
pub impl HasConstructor for SVGDescElement with constructor_name() {
  "SVGDescElement"
}

///|
/// Checked downcast — returns None if the JS value is not an instance of T.
pub fn[T : TSVGDescElement + HasConstructor] SVGDescElement::try_into(
  self : SVGDescElement,
) -> T? {
  if js_instanceof(TJsValue::to_js(self), T::constructor_name()) {
    Some(self.unsafe_into())
  } else {
    None
  }
}

///|
pub impl TSVGDescElement for SVGDescElement

///|
pub impl TSVGElement for SVGDescElement

///|
pub impl TElement for SVGDescElement

///|
pub impl TNode for SVGDescElement

///|
pub impl TEventTarget for SVGDescElement

///|
/// [SVGDescElement](https://developer.mozilla.org/en-US/docs/Web/API/SVGDescElement) interface.
pub trait TSVGDescElement: TSVGElement {}
