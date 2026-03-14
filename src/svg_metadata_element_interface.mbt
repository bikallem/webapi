// Do not edit. This file is generated.
// MoonBit type: SVGMetadataElement
// Specifications: SVG.idl

/// [SVGMetadataElement](https://developer.mozilla.org/en-US/docs/Web/API/SVGMetadataElement)
#external
pub type SVGMetadataElement

pub impl TJsValue for SVGMetadataElement with to_js(self: SVGMetadataElement) -> JsValue = "%identity"

pub impl FromJsAny for SVGMetadataElement with from_js_any(value : JsAny) -> SVGMetadataElement = "%identity"

/// Unchecked downcast — no runtime type check is performed.
/// Prefer `try_into()` for checked downcasts.
#deprecated("Use unsafe_into or try_into instead")
pub fn[T: TSVGMetadataElement] SVGMetadataElement::into(self : SVGMetadataElement) -> T = "%identity"

/// Unchecked downcast — no runtime type check is performed.
/// WARNING: If the underlying JS value is not of type T, this will silently
/// produce a value with incorrect type, leading to undefined behavior.
pub fn[T: TSVGMetadataElement] SVGMetadataElement::unsafe_into(self : SVGMetadataElement) -> T = "%identity"

pub impl HasConstructor for SVGMetadataElement with constructor_name() { "SVGMetadataElement" }

/// Checked downcast — returns None if the JS value is not an instance of T.
pub fn[T : TSVGMetadataElement + HasConstructor] SVGMetadataElement::try_into(self : SVGMetadataElement) -> T? {
  if js_instanceof(TJsValue::to_js(self), T::constructor_name()) {
    Some(self.unsafe_into())
  } else {
    None
  }
}

pub impl TSVGMetadataElement for SVGMetadataElement

pub impl TSVGElement for SVGMetadataElement

pub impl TElement for SVGMetadataElement

pub impl TNode for SVGMetadataElement

pub impl TEventTarget for SVGMetadataElement

/// [SVGMetadataElement](https://developer.mozilla.org/en-US/docs/Web/API/SVGMetadataElement) interface.
pub trait TSVGMetadataElement: TSVGElement {

}

