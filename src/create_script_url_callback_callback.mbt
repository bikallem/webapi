// Do not edit. This file is generated.
// MoonBit type: CreateScriptURLCallback
// Specifications: trusted-types.idl

///|
#external
pub type CreateScriptURLCallback

///|
pub impl TJsValue for CreateScriptURLCallback with to_js(
  self : CreateScriptURLCallback,
) -> JsValue = "%identity"

///|
extern "js" fn create_script_url_callback_ffi(
  f : (String, JsValue) -> String,
) -> CreateScriptURLCallback = "(f) => f"

///|
pub fn CreateScriptURLCallback::new(
  f : (String, JsValue) -> String,
) -> CreateScriptURLCallback {
  create_script_url_callback_ffi(f)
}
