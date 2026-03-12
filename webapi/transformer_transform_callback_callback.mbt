// Do not edit. This file is generated.
// MoonBit type: TransformerTransformCallback
// Specifications: streams.idl

/// [TransformerTransformCallback](https://developer.mozilla.org/en-US/docs/Web/API/TransformerTransformCallback)
#external
pub type TransformerTransformCallback

pub impl TJsValue for TransformerTransformCallback with to_js(self: TransformerTransformCallback) -> JsValue = "%identity"

pub impl FromJsAny for TransformerTransformCallback with from_js_any(value : JsAny) -> TransformerTransformCallback = "%identity"

pub fn TransformerTransformCallback::new(callback : (JsValue, TransformStreamDefaultController) -> JsPromise[JsValue]) -> TransformerTransformCallback { transformer_transform_callback_ffi(callback) }