// Do not edit. This file is generated.
// MoonBit type: TrustedScriptURL
// Specifications: trusted-types.idl

///|
/// [TrustedScriptURL](https://developer.mozilla.org/en-US/docs/Web/API/TrustedScriptURL)
#external
pub type TrustedScriptURL

///|
pub impl TJsValue for TrustedScriptURL with to_js(self : TrustedScriptURL) -> JsValue = "%identity"

///|
pub impl FromJsAny for TrustedScriptURL with from_js_any(value : JsAny) -> TrustedScriptURL = "%identity"

///|
pub fn[T : TTrustedScriptURL] TrustedScriptURL::into(
  self : TrustedScriptURL,
) -> T = "%identity"

///|
pub impl TTrustedScriptURL for TrustedScriptURL

///|
/// [TrustedScriptURL](https://developer.mozilla.org/en-US/docs/Web/API/TrustedScriptURL) interface.
pub trait TTrustedScriptURL: TJsValue {
  to_json(self : Self) -> String = _
}

///|
/// [TrustedScriptURL.toJSON](https://developer.mozilla.org/en-US/docs/Web/API/TrustedScriptURL/toJSON)
impl TTrustedScriptURL with to_json(self : Self) -> String {
  trusted_script_url_to_json_ffi(TJsValue::to_js(self))
}

///|
#cfg(target="js")
extern "js" fn trusted_script_url_to_json_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.toJSON()"

///|
#cfg(target="js")
fn trusted_script_url_to_json_ffi(obj : JsValue) -> String {
  trusted_script_url_to_json_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn trusted_script_url_to_json_ffi_wasm(obj : JsValue) -> JsValue = "webapi_TrustedScriptURL" "toJSON"

///|
#cfg(target="wasm-gc")
fn trusted_script_url_to_json_ffi(obj : JsValue) -> String {
  jsvalue_to_string(trusted_script_url_to_json_ffi_wasm(obj))
}
