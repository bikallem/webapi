// Do not edit. This file is generated.
// MoonBit type: WorkletGlobalScope
// Specifications: html.idl

///|
/// [WorkletGlobalScope](https://developer.mozilla.org/en-US/docs/Web/API/WorkletGlobalScope)
#external
pub type WorkletGlobalScope

///|
pub impl TJsValue for WorkletGlobalScope with to_js(self : WorkletGlobalScope) -> JsValue = "%identity"

///|
pub impl FromJsAny for WorkletGlobalScope with from_js_any(value : JsAny) -> WorkletGlobalScope = "%identity"

///|
/// Unchecked downcast — no runtime type check is performed.
/// Prefer `try_into()` for checked downcasts.
#deprecated("Use unsafe_into or try_into instead")
pub fn[T : TWorkletGlobalScope] WorkletGlobalScope::into(
  self : WorkletGlobalScope,
) -> T = "%identity"

///|
/// Unchecked downcast — no runtime type check is performed.
/// WARNING: If the underlying JS value is not of type T, this will silently
/// produce a value with incorrect type, leading to undefined behavior.
pub fn[T : TWorkletGlobalScope] WorkletGlobalScope::unsafe_into(
  self : WorkletGlobalScope,
) -> T = "%identity"

///|
pub impl HasConstructor for WorkletGlobalScope with constructor_name() {
  "WorkletGlobalScope"
}

///|
/// Checked downcast — returns None if the JS value is not an instance of T.
pub fn[T : TWorkletGlobalScope + HasConstructor] WorkletGlobalScope::try_into(
  self : WorkletGlobalScope,
) -> T? {
  if js_instanceof(TJsValue::to_js(self), T::constructor_name()) {
    Some(self.unsafe_into())
  } else {
    None
  }
}

///|
pub impl TWorkletGlobalScope for WorkletGlobalScope

///|
/// [WorkletGlobalScope](https://developer.mozilla.org/en-US/docs/Web/API/WorkletGlobalScope) interface.
pub trait TWorkletGlobalScope: TJsValue {}
