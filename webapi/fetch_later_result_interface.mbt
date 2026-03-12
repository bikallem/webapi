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
pub fn[T : TFetchLaterResult] FetchLaterResult::into(
  self : FetchLaterResult,
) -> T = "%identity"

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
