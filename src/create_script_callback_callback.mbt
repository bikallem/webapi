// Do not edit. This file is generated.
// MoonBit type: CreateScriptCallback
// Specifications: trusted-types.idl

///|
#external
pub type CreateScriptCallback

///|
pub impl TJsValue for CreateScriptCallback with to_js(
  self : CreateScriptCallback,
) -> JsValue = "%identity"

///|
extern "js" fn create_script_callback_ffi(
  f : (String, JsValue) -> String,
) -> CreateScriptCallback = "(f) => f"

///|
pub fn CreateScriptCallback::new(
  f : (String, JsValue) -> String,
) -> CreateScriptCallback {
  create_script_callback_ffi(f)
}
