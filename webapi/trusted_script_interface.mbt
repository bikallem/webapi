// Do not edit. This file is generated.
// MoonBit type: TrustedScript
// Specifications: trusted-types.idl

///|
/// [TrustedScript](https://developer.mozilla.org/en-US/docs/Web/API/TrustedScript)
#external
pub type TrustedScript

///|
pub impl TJsValue for TrustedScript with to_js(self : TrustedScript) -> JsValue = "%identity"

///|
pub impl FromJsAny for TrustedScript with from_js_any(value : JsAny) -> TrustedScript = "%identity"

///|
/// Unchecked downcast — no runtime type check is performed.
/// Prefer `try_into()` for checked downcasts.
#deprecated("Use unsafe_into or try_into instead")
pub fn[T : TTrustedScript] TrustedScript::into(self : TrustedScript) -> T = "%identity"

///|
/// Unchecked downcast — no runtime type check is performed.
/// WARNING: If the underlying JS value is not of type T, this will silently
/// produce a value with incorrect type, leading to undefined behavior.
pub fn[T : TTrustedScript] TrustedScript::unsafe_into(
  self : TrustedScript,
) -> T = "%identity"

///|
pub impl HasConstructor for TrustedScript with constructor_name() {
  "TrustedScript"
}

///|
/// Checked downcast — returns None if the JS value is not an instance of T.
pub fn[T : TTrustedScript + HasConstructor] TrustedScript::try_into(
  self : TrustedScript,
) -> T? {
  if js_instanceof(TJsValue::to_js(self), T::constructor_name()) {
    Some(self.unsafe_into())
  } else {
    None
  }
}

///|
pub impl TTrustedScript for TrustedScript

///|
/// [TrustedScript](https://developer.mozilla.org/en-US/docs/Web/API/TrustedScript) interface.
pub trait TTrustedScript: TJsValue {
  to_json(self : Self) -> String = _
}

///|
/// [TrustedScript.toJSON](https://developer.mozilla.org/en-US/docs/Web/API/TrustedScript/toJSON)
impl TTrustedScript with to_json(self : Self) -> String {
  trusted_script_to_json_ffi(TJsValue::to_js(self))
}

///|
#cfg(target="js")
extern "js" fn trusted_script_to_json_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.toJSON()"

///|
#cfg(target="js")
fn trusted_script_to_json_ffi(obj : JsValue) -> String {
  trusted_script_to_json_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn trusted_script_to_json_ffi_wasm(obj : JsValue) -> JsValue = "webapi_TrustedScript" "toJSON"

///|
#cfg(target="wasm-gc")
fn trusted_script_to_json_ffi(obj : JsValue) -> String {
  jsvalue_to_string(trusted_script_to_json_ffi_wasm(obj))
}
