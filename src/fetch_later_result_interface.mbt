// Do not edit. This file is generated.
// MoonBit type: FetchLaterResult
// Specifications: fetch.idl

///|
/// [FetchLaterResult](https://developer.mozilla.org/en-US/docs/Web/API/FetchLaterResult)
#external
pub type FetchLaterResult

///|
pub impl TJsValue for FetchLaterResult with to_js(self : FetchLaterResult) -> JsValue = "%identity"

///|
pub impl FromJsAny for FetchLaterResult with from_js_any(value : JsAny) -> FetchLaterResult = "%identity"

///|
/// Unchecked downcast — no runtime type check is performed.
/// Prefer `try_into()` for checked downcasts.
#deprecated("Use unsafe_into or try_into instead")
pub fn[T : TFetchLaterResult] FetchLaterResult::into(
  self : FetchLaterResult,
) -> T = "%identity"

///|
/// Unchecked downcast — no runtime type check is performed.
/// WARNING: If the underlying JS value is not of type T, this will silently
/// produce a value with incorrect type, leading to undefined behavior.
pub fn[T : TFetchLaterResult] FetchLaterResult::unsafe_into(
  self : FetchLaterResult,
) -> T = "%identity"

///|
pub impl HasConstructor for FetchLaterResult with constructor_name() {
  "FetchLaterResult"
}

///|
/// Checked downcast — returns None if the JS value is not an instance of T.
pub fn[T : TFetchLaterResult + HasConstructor] FetchLaterResult::try_into(
  self : FetchLaterResult,
) -> T? {
  if js_instanceof(TJsValue::to_js(self), T::constructor_name()) {
    Some(self.unsafe_into())
  } else {
    None
  }
}

///|
pub impl TFetchLaterResult for FetchLaterResult

///|
/// [FetchLaterResult](https://developer.mozilla.org/en-US/docs/Web/API/FetchLaterResult) interface.
pub trait TFetchLaterResult: TJsValue {
  activated(self : Self) -> Bool = _
}

///|
/// [FetchLaterResult.activated](https://developer.mozilla.org/en-US/docs/Web/API/FetchLaterResult/activated)
impl TFetchLaterResult with activated(self : Self) -> Bool {
  fetch_later_result_activated_ffi(TJsValue::to_js(self))
}

///|
#cfg(target="js")
extern "js" fn fetch_later_result_activated_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.activated"

///|
#cfg(target="js")
fn fetch_later_result_activated_ffi(obj : JsValue) -> Bool {
  fetch_later_result_activated_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn fetch_later_result_activated_ffi(obj : JsValue) -> Bool = "webapi_FetchLaterResult" "get_activated"
