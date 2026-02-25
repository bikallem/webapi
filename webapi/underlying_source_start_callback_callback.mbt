// Do not edit. This file is generated.
// MoonBit type: UnderlyingSourceStartCallback
// Specifications: streams.idl

///|
/// [UnderlyingSourceStartCallback](https://developer.mozilla.org/en-US/docs/Web/API/UnderlyingSourceStartCallback)
#external
pub type UnderlyingSourceStartCallback

///|
pub impl TJsValue for UnderlyingSourceStartCallback with to_js(
  self : UnderlyingSourceStartCallback,
) -> JsValue = "%identity"

///|
pub impl FromJsAny for UnderlyingSourceStartCallback with from_js_any(
  value : JsAny,
) -> UnderlyingSourceStartCallback = "%identity"

///|
pub fn UnderlyingSourceStartCallback::new(
  callback : (ReadableStreamController) -> JsValue,
) -> UnderlyingSourceStartCallback {
  underlying_source_start_callback_ffi(callback)
}
