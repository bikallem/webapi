// Do not edit. This file is generated.
// MoonBit type: TransformerStartCallback
// Specifications: streams.idl

///|
/// [TransformerStartCallback](https://developer.mozilla.org/en-US/docs/Web/API/TransformerStartCallback)
#external
pub type TransformerStartCallback

///|
pub impl TJsValue for TransformerStartCallback with to_js(
  self : TransformerStartCallback,
) -> JsValue = "%identity"

///|
pub impl FromJsAny for TransformerStartCallback with from_js_any(value : JsAny) -> TransformerStartCallback = "%identity"

///|
pub fn TransformerStartCallback::new(
  callback : (TransformStreamDefaultController) -> JsValue,
) -> TransformerStartCallback {
  transformer_start_callback_ffi(callback)
}
