fn quota_exceeded_error_new_ffi(message: JsValue, options: JsValue) -> QuotaExceededError = "webapi_QuotaExceededError" "new"

fn quota_exceeded_error_quota_ffi(obj: JsValue) -> Double = "webapi_QuotaExceededError" "get_quota"

fn quota_exceeded_error_requested_ffi(obj: JsValue) -> Double = "webapi_QuotaExceededError" "get_requested"