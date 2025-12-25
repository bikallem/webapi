// Do not edit. This file is generated.
// MoonBit type: QuotaExceededError
// Specifications: webidl.idl

///|
#external
pub type QuotaExceededError

///|
pub impl TJsValue for QuotaExceededError with to_js(self : QuotaExceededError) -> JsValue = "%identity"

///|
pub fn[T : TQuotaExceededError] QuotaExceededError::into(
  self : QuotaExceededError,
) -> T = "%identity"

///|
pub impl TQuotaExceededError for QuotaExceededError

///|
pub impl TDOMException for QuotaExceededError

///|
extern "js" fn quota_exceeded_error_new_ffi(
  message : JsValue,
  options : JsValue,
) -> QuotaExceededError = "(message, options) => new QuotaExceededError(message, options)"

///|
pub fn QuotaExceededError::new(
  message? : String = "",
  options? : QuotaExceededErrorOptions = QuotaExceededErrorOptions::empty(),
) -> QuotaExceededError {
  quota_exceeded_error_new_ffi(
    TJsValue::to_js(message),
    TJsValue::to_js(options),
  )
}

///|
pub trait TQuotaExceededError: TDOMException {
  quota(self : Self) -> Double = _
  requested(self : Self) -> Double = _
}

///|
extern "js" fn quota_exceeded_error_quota_ffi(obj : JsValue) -> Double = "(obj) => obj.quota"

///|
impl TQuotaExceededError with quota(self : Self) -> Double {
  quota_exceeded_error_quota_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn quota_exceeded_error_requested_ffi(obj : JsValue) -> Double = "(obj) => obj.requested"

///|
impl TQuotaExceededError with requested(self : Self) -> Double {
  quota_exceeded_error_requested_ffi(TJsValue::to_js(self))
}
