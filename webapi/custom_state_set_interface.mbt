// Do not edit. This file is generated.
// MoonBit type: CustomStateSet
// Specifications: html.idl

///|
/// [CustomStateSet](https://developer.mozilla.org/en-US/docs/Web/API/CustomStateSet)
#external
pub type CustomStateSet

///|
pub impl TJsValue for CustomStateSet with to_js(self : CustomStateSet) -> JsValue = "%identity"

///|
pub impl FromJsAny for CustomStateSet with from_js_any(value : JsAny) -> CustomStateSet = "%identity"

///|
/// Unchecked downcast — no runtime type check is performed.
/// Prefer `try_into()` for checked downcasts.
#deprecated("Use unsafe_into or try_into instead")
pub fn[T : TCustomStateSet] CustomStateSet::into(self : CustomStateSet) -> T = "%identity"

///|
/// Unchecked downcast — no runtime type check is performed.
/// WARNING: If the underlying JS value is not of type T, this will silently
/// produce a value with incorrect type, leading to undefined behavior.
pub fn[T : TCustomStateSet] CustomStateSet::unsafe_into(
  self : CustomStateSet,
) -> T = "%identity"

///|
pub impl HasConstructor for CustomStateSet with constructor_name() {
  "CustomStateSet"
}

///|
/// Checked downcast — returns None if the JS value is not an instance of T.
pub fn[T : TCustomStateSet + HasConstructor] CustomStateSet::try_into(
  self : CustomStateSet,
) -> T? {
  if js_instanceof(TJsValue::to_js(self), T::constructor_name()) {
    Some(self.unsafe_into())
  } else {
    None
  }
}

///|
pub impl TCustomStateSet for CustomStateSet

///|
/// [CustomStateSet](https://developer.mozilla.org/en-US/docs/Web/API/CustomStateSet) interface.
pub trait TCustomStateSet: TJsValue {}
