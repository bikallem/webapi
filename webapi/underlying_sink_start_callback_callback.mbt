// Do not edit. This file is generated.
// MoonBit type: UnderlyingSinkStartCallback
// Specifications: streams.idl

/// [UnderlyingSinkStartCallback](https://developer.mozilla.org/en-US/docs/Web/API/UnderlyingSinkStartCallback)
#external
pub type UnderlyingSinkStartCallback

pub impl TJsValue for UnderlyingSinkStartCallback with to_js(self: UnderlyingSinkStartCallback) -> JsValue = "%identity"

pub impl FromJsAny for UnderlyingSinkStartCallback with from_js_any(value : JsAny) -> UnderlyingSinkStartCallback = "%identity"

pub fn UnderlyingSinkStartCallback::new(callback : (WritableStreamDefaultController) -> JsValue) -> UnderlyingSinkStartCallback { underlying_sink_start_callback_ffi(callback) }