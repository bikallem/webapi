// Do not edit. This file is generated.
// MoonBit type: UnderlyingSinkAbortCallback
// Specifications: streams.idl

/// [UnderlyingSinkAbortCallback](https://developer.mozilla.org/en-US/docs/Web/API/UnderlyingSinkAbortCallback)
#external
pub type UnderlyingSinkAbortCallback

pub impl TJsValue for UnderlyingSinkAbortCallback with to_js(self: UnderlyingSinkAbortCallback) -> JsValue = "%identity"

pub impl FromJsAny for UnderlyingSinkAbortCallback with from_js_any(value : JsAny) -> UnderlyingSinkAbortCallback = "%identity"

pub fn UnderlyingSinkAbortCallback::new(callback : (JsValue) -> JsPromise[JsValue]) -> UnderlyingSinkAbortCallback { underlying_sink_abort_callback_ffi(callback) }

#cfg(target="js")
extern "js" fn underlying_sink_abort_callback_ffi(callback : (JsValue) -> JsPromise[JsValue]) -> UnderlyingSinkAbortCallback = "(callback) => callback"

#cfg(target="wasm-gc")
fn underlying_sink_abort_callback_ffi(callback : (JsValue) -> JsPromise[JsValue]) -> UnderlyingSinkAbortCallback = "webapi_UnderlyingSinkAbortCallback" "new"