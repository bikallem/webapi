// Do not edit. This file is generated.
// MoonBit type: TrustedScriptURL
// Specifications: trusted-types.idl

///|
#external
pub type TrustedScriptURL

///|
pub impl TJsValue for TrustedScriptURL with to_js(self : TrustedScriptURL) -> JsValue = "%identity"

///|
pub fn[T : TTrustedScriptURL] TrustedScriptURL::into(
  self : TrustedScriptURL,
) -> T = "%identity"

///|
pub impl TTrustedScriptURL for TrustedScriptURL

///|
pub trait TTrustedScriptURL: TJsValue {
  to_json(self : Self) -> String = _
}

///|
extern "js" fn trusted_script_url_to_json_ffi(obj : JsValue) -> String = "(obj) => obj.toJSON(obj)"

///|
impl TTrustedScriptURL with to_json(self : Self) -> String {
  trusted_script_url_to_json_ffi(TJsValue::to_js(self))
}
