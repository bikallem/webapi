// Do not edit. This file is generated.
// MoonBit type: UnderlyingSinkCloseCallback
// Specifications: streams.idl

///|
/// [UnderlyingSinkCloseCallback](https://developer.mozilla.org/en-US/docs/Web/API/UnderlyingSinkCloseCallback)
#external
pub type UnderlyingSinkCloseCallback

///|
pub impl TJsValue for UnderlyingSinkCloseCallback with to_js(
  self : UnderlyingSinkCloseCallback,
) -> JsValue = "%identity"

///|
pub impl FromJsAny for UnderlyingSinkCloseCallback with from_js_any(
  value : JsAny,
) -> UnderlyingSinkCloseCallback = "%identity"

///|
pub fn UnderlyingSinkCloseCallback::new(
  callback : () -> JsPromise[JsValue],
) -> UnderlyingSinkCloseCallback {
  underlying_sink_close_callback_ffi(callback)
}
