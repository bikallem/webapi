// Do not edit. This file is generated.
// MoonBit type: TrustedHTML
// Specifications: trusted-types.idl

///|
/// [TrustedHTML](https://developer.mozilla.org/en-US/docs/Web/API/TrustedHTML)
#external
pub type TrustedHTML

///|
pub impl TJsValue for TrustedHTML with to_js(self : TrustedHTML) -> JsValue = "%identity"

///|
pub impl FromJsAny for TrustedHTML with from_js_any(value : JsAny) -> TrustedHTML = "%identity"

///|
/// Unchecked downcast — no runtime type check is performed.
/// Prefer `try_into()` for checked downcasts.
#deprecated("Use unsafe_into or try_into instead")
pub fn[T : TTrustedHTML] TrustedHTML::into(self : TrustedHTML) -> T = "%identity"

///|
/// Unchecked downcast — no runtime type check is performed.
/// WARNING: If the underlying JS value is not of type T, this will silently
/// produce a value with incorrect type, leading to undefined behavior.
pub fn[T : TTrustedHTML] TrustedHTML::unsafe_into(self : TrustedHTML) -> T = "%identity"

///|
pub impl HasConstructor for TrustedHTML with constructor_name() {
  "TrustedHTML"
}

///|
/// Checked downcast — returns None if the JS value is not an instance of T.
pub fn[T : TTrustedHTML + HasConstructor] TrustedHTML::try_into(
  self : TrustedHTML,
) -> T? {
  if js_instanceof(TJsValue::to_js(self), T::constructor_name()) {
    Some(self.unsafe_into())
  } else {
    None
  }
}

///|
pub impl TTrustedHTML for TrustedHTML

///|
/// [TrustedHTML](https://developer.mozilla.org/en-US/docs/Web/API/TrustedHTML) interface.
pub trait TTrustedHTML: TJsValue {
  to_json(self : Self) -> String = _
}

///|
/// [TrustedHTML.toJSON](https://developer.mozilla.org/en-US/docs/Web/API/TrustedHTML/toJSON)
impl TTrustedHTML with to_json(self : Self) -> String {
  trusted_html_to_json_ffi(TJsValue::to_js(self))
}

///|
#cfg(target="js")
extern "js" fn trusted_html_to_json_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.toJSON()"

///|
#cfg(target="js")
fn trusted_html_to_json_ffi(obj : JsValue) -> String {
  trusted_html_to_json_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn trusted_html_to_json_ffi_wasm(obj : JsValue) -> JsValue = "webapi_TrustedHTML" "toJSON"

///|
#cfg(target="wasm-gc")
fn trusted_html_to_json_ffi(obj : JsValue) -> String {
  jsvalue_to_string(trusted_html_to_json_ffi_wasm(obj))
}
