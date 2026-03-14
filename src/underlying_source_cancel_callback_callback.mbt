// Do not edit. This file is generated.
// MoonBit type: UnderlyingSourceCancelCallback
// Specifications: streams.idl

/// [UnderlyingSourceCancelCallback](https://developer.mozilla.org/en-US/docs/Web/API/UnderlyingSourceCancelCallback)
#external
pub type UnderlyingSourceCancelCallback

pub impl TJsValue for UnderlyingSourceCancelCallback with to_js(self: UnderlyingSourceCancelCallback) -> JsValue = "%identity"

pub impl FromJsAny for UnderlyingSourceCancelCallback with from_js_any(value : JsAny) -> UnderlyingSourceCancelCallback = "%identity"

pub fn UnderlyingSourceCancelCallback::new(callback : (JsValue) -> JsPromise[JsValue]) -> UnderlyingSourceCancelCallback { underlying_source_cancel_callback_ffi(callback) }

#cfg(target="js")
extern "js" fn underlying_source_cancel_callback_ffi(callback : (JsValue) -> JsPromise[JsValue]) -> UnderlyingSourceCancelCallback = "(callback) => callback"

#cfg(target="wasm-gc")
fn underlying_source_cancel_callback_ffi(callback : (JsValue) -> JsPromise[JsValue]) -> UnderlyingSourceCancelCallback = "webapi_UnderlyingSourceCancelCallback" "new"