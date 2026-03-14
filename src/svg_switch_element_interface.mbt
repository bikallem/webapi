// Do not edit. This file is generated.
// MoonBit type: SVGSwitchElement
// Specifications: SVG.idl

///|
/// [SVGSwitchElement](https://developer.mozilla.org/en-US/docs/Web/API/SVGSwitchElement)
#external
pub type SVGSwitchElement

///|
pub impl TJsValue for SVGSwitchElement with to_js(self : SVGSwitchElement) -> JsValue = "%identity"

///|
pub impl FromJsAny for SVGSwitchElement with from_js_any(value : JsAny) -> SVGSwitchElement = "%identity"

///|
/// Unchecked downcast — no runtime type check is performed.
/// Prefer `try_into()` for checked downcasts.
#deprecated("Use unsafe_into or try_into instead")
pub fn[T : TSVGSwitchElement] SVGSwitchElement::into(
  self : SVGSwitchElement,
) -> T = "%identity"

///|
/// Unchecked downcast — no runtime type check is performed.
/// WARNING: If the underlying JS value is not of type T, this will silently
/// produce a value with incorrect type, leading to undefined behavior.
pub fn[T : TSVGSwitchElement] SVGSwitchElement::unsafe_into(
  self : SVGSwitchElement,
) -> T = "%identity"

///|
pub impl HasConstructor for SVGSwitchElement with constructor_name() {
  "SVGSwitchElement"
}

///|
/// Checked downcast — returns None if the JS value is not an instance of T.
pub fn[T : TSVGSwitchElement + HasConstructor] SVGSwitchElement::try_into(
  self : SVGSwitchElement,
) -> T? {
  if js_instanceof(TJsValue::to_js(self), T::constructor_name()) {
    Some(self.unsafe_into())
  } else {
    None
  }
}

///|
pub impl TSVGSwitchElement for SVGSwitchElement

///|
pub impl TSVGGraphicsElement for SVGSwitchElement

///|
pub impl TSVGElement for SVGSwitchElement

///|
pub impl TElement for SVGSwitchElement

///|
pub impl TNode for SVGSwitchElement

///|
pub impl TEventTarget for SVGSwitchElement

///|
/// [SVGSwitchElement](https://developer.mozilla.org/en-US/docs/Web/API/SVGSwitchElement) interface.
pub trait TSVGSwitchElement: TSVGGraphicsElement {}
