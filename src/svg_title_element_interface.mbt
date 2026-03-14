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
/// Unchecked downcast — no runtime type check is performed.
/// Prefer `try_into()` for checked downcasts.
#deprecated("Use unsafe_into or try_into instead")
pub fn[T : TSVGTitleElement] SVGTitleElement::into(self : SVGTitleElement) -> T = "%identity"

///|
/// Unchecked downcast — no runtime type check is performed.
/// WARNING: If the underlying JS value is not of type T, this will silently
/// produce a value with incorrect type, leading to undefined behavior.
pub fn[T : TSVGTitleElement] SVGTitleElement::unsafe_into(
  self : SVGTitleElement,
) -> T = "%identity"

///|
pub impl HasConstructor for SVGTitleElement with constructor_name() {
  "SVGTitleElement"
}

///|
/// Checked downcast — returns None if the JS value is not an instance of T.
pub fn[T : TSVGTitleElement + HasConstructor] SVGTitleElement::try_into(
  self : SVGTitleElement,
) -> T? {
  if js_instanceof(TJsValue::to_js(self), T::constructor_name()) {
    Some(self.unsafe_into())
  } else {
    None
  }
}

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
