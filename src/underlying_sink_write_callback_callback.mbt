// Do not edit. This file is generated.
// MoonBit type: UnderlyingSinkWriteCallback
// Specifications: streams.idl

///|
/// [UnderlyingSinkWriteCallback](https://developer.mozilla.org/en-US/docs/Web/API/UnderlyingSinkWriteCallback)
#external
pub type UnderlyingSinkWriteCallback

///|
pub impl TJsValue for UnderlyingSinkWriteCallback with to_js(
  self : UnderlyingSinkWriteCallback,
) -> JsValue = "%identity"

///|
pub impl FromJsAny for UnderlyingSinkWriteCallback with from_js_any(
  value : JsAny,
) -> UnderlyingSinkWriteCallback = "%identity"

///|
pub fn UnderlyingSinkWriteCallback::new(
  callback : (JsValue, WritableStreamDefaultController) -> JsPromise[JsValue],
) -> UnderlyingSinkWriteCallback {
  underlying_sink_write_callback_ffi(callback)
}

///|
#cfg(target="js")
extern "js" fn underlying_sink_write_callback_ffi(
  callback : (JsValue, WritableStreamDefaultController) -> JsPromise[JsValue],
) -> UnderlyingSinkWriteCallback = "(callback) => callback"

///|
#cfg(target="wasm-gc")
fn underlying_sink_write_callback_ffi(
  callback : (JsValue, WritableStreamDefaultController) -> JsPromise[JsValue],
) -> UnderlyingSinkWriteCallback = "webapi_UnderlyingSinkWriteCallback" "new"
