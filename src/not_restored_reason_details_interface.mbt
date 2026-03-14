// Do not edit. This file is generated.
// MoonBit type: NotRestoredReasonDetails
// Specifications: html.idl

/// [NotRestoredReasonDetails](https://developer.mozilla.org/en-US/docs/Web/API/NotRestoredReasonDetails)
#external
pub type NotRestoredReasonDetails

pub impl TJsValue for NotRestoredReasonDetails with to_js(self: NotRestoredReasonDetails) -> JsValue = "%identity"

pub impl FromJsAny for NotRestoredReasonDetails with from_js_any(value : JsAny) -> NotRestoredReasonDetails = "%identity"

/// Unchecked downcast — no runtime type check is performed.
/// Prefer `try_into()` for checked downcasts.
#deprecated("Use unsafe_into or try_into instead")
pub fn[T: TNotRestoredReasonDetails] NotRestoredReasonDetails::into(self : NotRestoredReasonDetails) -> T = "%identity"

/// Unchecked downcast — no runtime type check is performed.
/// WARNING: If the underlying JS value is not of type T, this will silently
/// produce a value with incorrect type, leading to undefined behavior.
pub fn[T: TNotRestoredReasonDetails] NotRestoredReasonDetails::unsafe_into(self : NotRestoredReasonDetails) -> T = "%identity"

pub impl HasConstructor for NotRestoredReasonDetails with constructor_name() { "NotRestoredReasonDetails" }

/// Checked downcast — returns None if the JS value is not an instance of T.
pub fn[T : TNotRestoredReasonDetails + HasConstructor] NotRestoredReasonDetails::try_into(self : NotRestoredReasonDetails) -> T? {
  if js_instanceof(TJsValue::to_js(self), T::constructor_name()) {
    Some(self.unsafe_into())
  } else {
    None
  }
}

pub impl TNotRestoredReasonDetails for NotRestoredReasonDetails

/// [NotRestoredReasonDetails](https://developer.mozilla.org/en-US/docs/Web/API/NotRestoredReasonDetails) interface.
pub trait TNotRestoredReasonDetails: TJsValue {
  reason(self : Self) -> String = _
  to_json(self : Self) -> JsValue = _
}

/// [NotRestoredReasonDetails.reason](https://developer.mozilla.org/en-US/docs/Web/API/NotRestoredReasonDetails/reason)
impl TNotRestoredReasonDetails with reason(self : Self) -> String {
  not_restored_reason_details_reason_ffi(TJsValue::to_js(self))
}

/// [NotRestoredReasonDetails.toJSON](https://developer.mozilla.org/en-US/docs/Web/API/NotRestoredReasonDetails/toJSON)
impl TNotRestoredReasonDetails with to_json(self : Self) -> JsValue {
  not_restored_reason_details_to_json_ffi(TJsValue::to_js(self))
}

#cfg(target="js")
extern "js" fn not_restored_reason_details_reason_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.reason"

///|
#cfg(target="js")
fn not_restored_reason_details_reason_ffi(obj: JsValue) -> String {
  not_restored_reason_details_reason_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn not_restored_reason_details_to_json_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.toJSON()"

///|
#cfg(target="js")
fn not_restored_reason_details_to_json_ffi(obj: JsValue) -> JsValue {
  not_restored_reason_details_to_json_ffi_js(obj).unsafe_cast()
}

#cfg(target="wasm-gc")
fn not_restored_reason_details_reason_ffi_wasm(obj: JsValue) -> JsValue = "webapi_NotRestoredReasonDetails" "get_reason"

///|
#cfg(target="wasm-gc")
fn not_restored_reason_details_reason_ffi(obj: JsValue) -> String {
  jsvalue_to_string(not_restored_reason_details_reason_ffi_wasm(obj))
}

#cfg(target="wasm-gc")
fn not_restored_reason_details_to_json_ffi(obj: JsValue) -> JsValue = "webapi_NotRestoredReasonDetails" "toJSON"