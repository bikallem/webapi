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
  f : (String, JsValue) -> String,
) -> CreateScriptCallback {
  create_script_callback_ffi(js_of(f)).unsafe_cast()
}
