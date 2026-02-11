// Do not edit. This file is generated.
// MoonBit type: CreateScriptCallback
// Specifications: trusted-types.idl

///|
/// [CreateScriptCallback](https://developer.mozilla.org/en-US/docs/Web/API/CreateScriptCallback)
#external
pub type CreateScriptCallback

///|
pub impl TJsValue for CreateScriptCallback with to_js(
  self : CreateScriptCallback,
) -> JsValue = "%identity"

///|
pub fn CreateScriptCallback::new(
  callback : (String, JsValue) -> String,
) -> CreateScriptCallback {
  create_script_callback_ffi(callback)
}
