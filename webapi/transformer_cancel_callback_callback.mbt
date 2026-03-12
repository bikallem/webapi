// Do not edit. This file is generated.
// MoonBit type: TransformerCancelCallback
// Specifications: streams.idl

///|
/// [TransformerCancelCallback](https://developer.mozilla.org/en-US/docs/Web/API/TransformerCancelCallback)
#external
pub type TransformerCancelCallback

///|
pub impl TJsValue for TransformerCancelCallback with to_js(
  self : TransformerCancelCallback,
) -> JsValue = "%identity"

///|
pub impl FromJsAny for TransformerCancelCallback with from_js_any(value : JsAny) -> TransformerCancelCallback = "%identity"

///|
pub fn TransformerCancelCallback::new(
  callback : (JsValue) -> JsPromise[JsValue],
) -> TransformerCancelCallback {
  transformer_cancel_callback_ffi(callback)
}

///|
#cfg(target="js")
extern "js" fn transformer_cancel_callback_ffi(
  callback : (JsValue) -> JsPromise[JsValue],
) -> TransformerCancelCallback = "(callback) => callback"

///|
#cfg(target="wasm-gc")
fn transformer_cancel_callback_ffi(
  callback : (JsValue) -> JsPromise[JsValue],
) -> TransformerCancelCallback = "webapi_TransformerCancelCallback" "new"
