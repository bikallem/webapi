// Do not edit. This file is generated.
// MoonBit type: SVGUnitTypes
// Specifications: SVG.idl

///|
/// [SVGUnitTypes](https://developer.mozilla.org/en-US/docs/Web/API/SVGUnitTypes)
#external
pub type SVGUnitTypes

///|
pub impl TJsValue for SVGUnitTypes with to_js(self : SVGUnitTypes) -> JsValue = "%identity"

///|
pub impl FromJsAny for SVGUnitTypes with from_js_any(value : JsAny) -> SVGUnitTypes = "%identity"

///|
/// Unchecked downcast — no runtime type check is performed.
/// Prefer `try_into()` for checked downcasts.
#deprecated("Use unsafe_into or try_into instead")
pub fn[T : TSVGUnitTypes] SVGUnitTypes::into(self : SVGUnitTypes) -> T = "%identity"

///|
/// Unchecked downcast — no runtime type check is performed.
/// WARNING: If the underlying JS value is not of type T, this will silently
/// produce a value with incorrect type, leading to undefined behavior.
pub fn[T : TSVGUnitTypes] SVGUnitTypes::unsafe_into(self : SVGUnitTypes) -> T = "%identity"

///|
pub impl HasConstructor for SVGUnitTypes with constructor_name() {
  "SVGUnitTypes"
}

///|
/// Checked downcast — returns None if the JS value is not an instance of T.
pub fn[T : TSVGUnitTypes + HasConstructor] SVGUnitTypes::try_into(
  self : SVGUnitTypes,
) -> T? {
  if js_instanceof(TJsValue::to_js(self), T::constructor_name()) {
    Some(self.unsafe_into())
  } else {
    None
  }
}

///|
pub impl TSVGUnitTypes for SVGUnitTypes

///|
pub const SVG_UNIT_TYPES_SVG_UNIT_TYPE_UNKNOWN : UInt = 0

///|
pub const SVG_UNIT_TYPES_SVG_UNIT_TYPE_USERSPACEONUSE : UInt = 1

///|
pub const SVG_UNIT_TYPES_SVG_UNIT_TYPE_OBJECTBOUNDINGBOX : UInt = 2

///|
/// [SVGUnitTypes](https://developer.mozilla.org/en-US/docs/Web/API/SVGUnitTypes) interface.
pub trait TSVGUnitTypes: TJsValue {}
