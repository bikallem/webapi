// Do not edit. This file is generated.
// MoonBit type: VibratePattern
// Specifications: vibration.idl

///|
/// [VibratePattern](https://developer.mozilla.org/en-US/docs/Web/API/VibratePattern)
#external
pub type VibratePattern

///|
pub impl TJsValue for VibratePattern with to_js(self : VibratePattern) -> JsValue = "%identity"

///|
pub impl FromJsAny for VibratePattern with from_js_any(value : JsAny) -> VibratePattern = "%identity"

///|
pub(open) trait TVibratePattern {
  to_js(self : Self) -> JsValue
}

///|
pub fn[T : TVibratePattern + FromJsAny] VibratePattern::into(
  self : VibratePattern,
) -> T {
  FromJsAny::from_js_any(jsvalue_to_jsany(TJsValue::to_js(self)))
}

///|
pub fn[T : TVibratePattern] VibratePattern::from(value : T) -> VibratePattern = "%identity"

///|
pub impl TVibratePattern for VibratePattern with to_js(self : VibratePattern) -> JsValue = "%identity"

///|
pub impl TVibratePattern for UInt with to_js(self : UInt) -> JsValue {
  TJsValue::to_js(self)
}

///|
pub impl TVibratePattern for Array[UInt] with to_js(self : Array[UInt]) -> JsValue = "%identity"
