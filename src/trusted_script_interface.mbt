// Do not edit. This file is generated.
// MoonBit type: TrustedScript
// Specifications: trusted-types.idl

///|
#external
pub type TrustedScript

///|
pub impl TJsValue for TrustedScript with to_js(self : TrustedScript) -> JsValue = "%identity"

///|
pub fn[T : TTrustedScript] TrustedScript::into(self : TrustedScript) -> T = "%identity"

///|
pub impl TTrustedScript for TrustedScript

///|
pub trait TTrustedScript: TJsValue {
  to_json(self : Self) -> String = _
}

///|
extern "js" fn trusted_script_to_json_ffi(obj : JsValue) -> String = "(obj) => obj.toJSON()"

///|
impl TTrustedScript with to_json(self : Self) -> String {
  trusted_script_to_json_ffi(TJsValue::to_js(self))
}
