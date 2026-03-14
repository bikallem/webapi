// Do not edit. This file is generated.
// MoonBit type: TransformerFlushCallback
// Specifications: streams.idl

/// [TransformerFlushCallback](https://developer.mozilla.org/en-US/docs/Web/API/TransformerFlushCallback)
#external
pub type TransformerFlushCallback

pub impl TJsValue for TransformerFlushCallback with to_js(self: TransformerFlushCallback) -> JsValue = "%identity"

pub impl FromJsAny for TransformerFlushCallback with from_js_any(value : JsAny) -> TransformerFlushCallback = "%identity"

pub fn TransformerFlushCallback::new(callback : (TransformStreamDefaultController) -> JsPromise[JsValue]) -> TransformerFlushCallback { transformer_flush_callback_ffi(callback) }

#cfg(target="js")
extern "js" fn transformer_flush_callback_ffi(callback : (TransformStreamDefaultController) -> JsPromise[JsValue]) -> TransformerFlushCallback = "(callback) => callback"

#cfg(target="wasm-gc")
fn transformer_flush_callback_ffi(callback : (TransformStreamDefaultController) -> JsPromise[JsValue]) -> TransformerFlushCallback = "webapi_TransformerFlushCallback" "new"