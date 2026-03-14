// Do not edit. This file is generated.
// MoonBit type: SVGDefsElement
// Specifications: SVG.idl

///|
/// [SVGDefsElement](https://developer.mozilla.org/en-US/docs/Web/API/SVGDefsElement)
#external
pub type SVGDefsElement

///|
pub impl TJsValue for SVGDefsElement with to_js(self : SVGDefsElement) -> JsValue = "%identity"

///|
pub impl FromJsAny for SVGDefsElement with from_js_any(value : JsAny) -> SVGDefsElement = "%identity"

///|
/// Unchecked downcast — no runtime type check is performed.
/// Prefer `try_into()` for checked downcasts.
#deprecated("Use unsafe_into or try_into instead")
pub fn[T : TSVGDefsElement] SVGDefsElement::into(self : SVGDefsElement) -> T = "%identity"

///|
/// Unchecked downcast — no runtime type check is performed.
/// WARNING: If the underlying JS value is not of type T, this will silently
/// produce a value with incorrect type, leading to undefined behavior.
pub fn[T : TSVGDefsElement] SVGDefsElement::unsafe_into(
  self : SVGDefsElement,
) -> T = "%identity"

///|
pub impl HasConstructor for SVGDefsElement with constructor_name() {
  "SVGDefsElement"
}

///|
/// Checked downcast — returns None if the JS value is not an instance of T.
pub fn[T : TSVGDefsElement + HasConstructor] SVGDefsElement::try_into(
  self : SVGDefsElement,
) -> T? {
  if js_instanceof(TJsValue::to_js(self), T::constructor_name()) {
    Some(self.unsafe_into())
  } else {
    None
  }
}

///|
pub impl TSVGDefsElement for SVGDefsElement

///|
pub impl TSVGGraphicsElement for SVGDefsElement

///|
pub impl TSVGElement for SVGDefsElement

///|
pub impl TElement for SVGDefsElement

///|
pub impl TNode for SVGDefsElement

///|
pub impl TEventTarget for SVGDefsElement

///|
/// [SVGDefsElement](https://developer.mozilla.org/en-US/docs/Web/API/SVGDefsElement) interface.
pub trait TSVGDefsElement: TSVGGraphicsElement {}
