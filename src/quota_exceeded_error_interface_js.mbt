extern "js" fn quota_exceeded_error_new_ffi(message: JsValue, options: JsValue) -> QuotaExceededError = "(message, options) => new QuotaExceededError(message, options)"

extern "js" fn quota_exceeded_error_quota_ffi(obj: JsValue) -> JsValue = "(obj) => obj.quota"

extern "js" fn quota_exceeded_error_requested_ffi(obj: JsValue) -> JsValue = "(obj) => obj.requested"