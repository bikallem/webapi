// Do not edit. This file is generated.
// MoonBit type: FetchLaterResult
// Specifications: fetch.idl

///|
#external
pub type FetchLaterResult

///|
pub impl TJsValue for FetchLaterResult with to_js(self : FetchLaterResult) -> JsValue = "%identity"

///|
pub fn[T : TFetchLaterResult] FetchLaterResult::into(
  self : FetchLaterResult,
) -> T = "%identity"

///|
pub impl TFetchLaterResult for FetchLaterResult

///|
pub trait TFetchLaterResult: TJsValue {
  activated(self : Self) -> Bool = _
}

///|
extern "js" fn fetch_later_result_activated_ffi(obj : JsValue) -> Bool = "(obj) => obj.activated"

///|
impl TFetchLaterResult with activated(self : Self) -> Bool {
  fetch_later_result_activated_ffi(TJsValue::to_js(self))
}
