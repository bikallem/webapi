extern "js" fn quota_exceeded_error_new_ffi(message: JsValue, options: JsValue) -> QuotaExceededError = "(message, options) => new QuotaExceededError(message, options)"

extern "js" fn quota_exceeded_error_quota_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.quota"

///|
fn quota_exceeded_error_quota_ffi(obj: JsValue) -> Double {
  quota_exceeded_error_quota_ffi_js(obj).unsafe_cast()
}

extern "js" fn quota_exceeded_error_requested_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.requested"

///|
fn quota_exceeded_error_requested_ffi(obj: JsValue) -> Double {
  quota_exceeded_error_requested_ffi_js(obj).unsafe_cast()
}