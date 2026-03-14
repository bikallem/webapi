// Do not edit. This file is generated.
// MoonBit type: UnderlyingSourcePullCallback
// Specifications: streams.idl

///|
/// [UnderlyingSourcePullCallback](https://developer.mozilla.org/en-US/docs/Web/API/UnderlyingSourcePullCallback)
#external
pub type UnderlyingSourcePullCallback

///|
pub impl TJsValue for UnderlyingSourcePullCallback with to_js(
  self : UnderlyingSourcePullCallback,
) -> JsValue = "%identity"

///|
pub impl FromJsAny for UnderlyingSourcePullCallback with from_js_any(
  value : JsAny,
) -> UnderlyingSourcePullCallback = "%identity"

///|
pub fn UnderlyingSourcePullCallback::new(
  callback : (ReadableStreamController) -> JsPromise[JsValue],
) -> UnderlyingSourcePullCallback {
  underlying_source_pull_callback_ffi(callback)
}

///|
#cfg(target="js")
extern "js" fn underlying_source_pull_callback_ffi(
  callback : (ReadableStreamController) -> JsPromise[JsValue],
) -> UnderlyingSourcePullCallback = "(callback) => callback"

///|
#cfg(target="wasm-gc")
fn underlying_source_pull_callback_ffi(
  callback : (ReadableStreamController) -> JsPromise[JsValue],
) -> UnderlyingSourcePullCallback = "webapi_UnderlyingSourcePullCallback" "new"
