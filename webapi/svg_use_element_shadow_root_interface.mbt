// Do not edit. This file is generated.
// MoonBit type: SVGUseElementShadowRoot
// Specifications: SVG.idl

///|
/// [SVGUseElementShadowRoot](https://developer.mozilla.org/en-US/docs/Web/API/SVGUseElementShadowRoot)
#external
pub type SVGUseElementShadowRoot

///|
pub impl TJsValue for SVGUseElementShadowRoot with to_js(
  self : SVGUseElementShadowRoot,
) -> JsValue = "%identity"

///|
pub impl FromJsAny for SVGUseElementShadowRoot with from_js_any(value : JsAny) -> SVGUseElementShadowRoot = "%identity"

///|
/// Unchecked downcast — no runtime type check is performed.
/// Prefer `try_into()` for checked downcasts.
#deprecated("Use unsafe_into or try_into instead")
pub fn[T : TSVGUseElementShadowRoot] SVGUseElementShadowRoot::into(
  self : SVGUseElementShadowRoot,
) -> T = "%identity"

///|
/// Unchecked downcast — no runtime type check is performed.
/// WARNING: If the underlying JS value is not of type T, this will silently
/// produce a value with incorrect type, leading to undefined behavior.
pub fn[T : TSVGUseElementShadowRoot] SVGUseElementShadowRoot::unsafe_into(
  self : SVGUseElementShadowRoot,
) -> T = "%identity"

///|
pub impl HasConstructor for SVGUseElementShadowRoot with constructor_name() {
  "SVGUseElementShadowRoot"
}

///|
/// Checked downcast — returns None if the JS value is not an instance of T.
pub fn[T : TSVGUseElementShadowRoot + HasConstructor] SVGUseElementShadowRoot::try_into(
  self : SVGUseElementShadowRoot,
) -> T? {
  if js_instanceof(TJsValue::to_js(self), T::constructor_name()) {
    Some(self.unsafe_into())
  } else {
    None
  }
}

///|
pub impl TSVGUseElementShadowRoot for SVGUseElementShadowRoot

///|
pub impl TShadowRoot for SVGUseElementShadowRoot

///|
pub impl TDocumentFragment for SVGUseElementShadowRoot

///|
pub impl TNode for SVGUseElementShadowRoot

///|
pub impl TEventTarget for SVGUseElementShadowRoot

///|
/// [SVGUseElementShadowRoot](https://developer.mozilla.org/en-US/docs/Web/API/SVGUseElementShadowRoot) interface.
pub trait TSVGUseElementShadowRoot: TShadowRoot {}
