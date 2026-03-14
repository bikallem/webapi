// Do not edit. This file is generated.
// MoonBit type: QuotaExceededError
// Specifications: webidl.idl

///|
/// [QuotaExceededError](https://developer.mozilla.org/en-US/docs/Web/API/QuotaExceededError)
#external
pub type QuotaExceededError

///|
pub impl TJsValue for QuotaExceededError with to_js(self : QuotaExceededError) -> JsValue = "%identity"

///|
pub impl FromJsAny for QuotaExceededError with from_js_any(value : JsAny) -> QuotaExceededError = "%identity"

///|
pub fn[T : TQuotaExceededError] QuotaExceededError::into(
  self : QuotaExceededError,
) -> T = "%identity"

///|
pub impl TQuotaExceededError for QuotaExceededError

///|
pub impl TDOMException for QuotaExceededError

///|
pub fn QuotaExceededError::new(
  message? : String,
  options? : QuotaExceededErrorOptions,
) -> QuotaExceededError {
  quota_exceeded_error_new_ffi(opt_to_js(message), opt_to_js(options))
}

///|
/// [QuotaExceededError](https://developer.mozilla.org/en-US/docs/Web/API/QuotaExceededError) interface.
pub trait TQuotaExceededError: TDOMException {
  quota(self : Self) -> Double = _
  requested(self : Self) -> Double = _
}

///|
/// [QuotaExceededError.quota](https://developer.mozilla.org/en-US/docs/Web/API/QuotaExceededError/quota)
impl TQuotaExceededError with quota(self : Self) -> Double {
  quota_exceeded_error_quota_ffi(TJsValue::to_js(self))
}

///|
/// [QuotaExceededError.requested](https://developer.mozilla.org/en-US/docs/Web/API/QuotaExceededError/requested)
impl TQuotaExceededError with requested(self : Self) -> Double {
  quota_exceeded_error_requested_ffi(TJsValue::to_js(self))
}

///|
#cfg(target="js")
extern "js" fn quota_exceeded_error_new_ffi(
  message : JsValue,
  options : JsValue,
) -> QuotaExceededError = "(message, options) => new QuotaExceededError(message, options)"

///|
#cfg(target="js")
extern "js" fn quota_exceeded_error_quota_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.quota"

///|
#cfg(target="js")
fn quota_exceeded_error_quota_ffi(obj : JsValue) -> Double {
  quota_exceeded_error_quota_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn quota_exceeded_error_requested_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.requested"

///|
#cfg(target="js")
fn quota_exceeded_error_requested_ffi(obj : JsValue) -> Double {
  quota_exceeded_error_requested_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn quota_exceeded_error_new_ffi(
  message : JsValue,
  options : JsValue,
) -> QuotaExceededError = "webapi_QuotaExceededError" "new"

///|
#cfg(target="wasm-gc")
fn quota_exceeded_error_quota_ffi(obj : JsValue) -> Double = "webapi_QuotaExceededError" "get_quota"

///|
#cfg(target="wasm-gc")
fn quota_exceeded_error_requested_ffi(obj : JsValue) -> Double = "webapi_QuotaExceededError" "get_requested"
