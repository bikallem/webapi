// Do not edit. This file is generated.
// MoonBit type: CreateScriptURLCallback
// Specifications: trusted-types.idl

///|
/// [CreateScriptURLCallback](https://developer.mozilla.org/en-US/docs/Web/API/CreateScriptURLCallback)
#external
pub type CreateScriptURLCallback

///|
pub impl TJsValue for CreateScriptURLCallback with to_js(
  self : CreateScriptURLCallback,
) -> JsValue = "%identity"

///|
pub impl FromJsAny for CreateScriptURLCallback with from_js_any(value : JsAny) -> CreateScriptURLCallback = "%identity"

///|
pub fn CreateScriptURLCallback::new(
  callback : (String, JsValue) -> String,
) -> CreateScriptURLCallback {
  create_script_url_callback_ffi(callback)
}
