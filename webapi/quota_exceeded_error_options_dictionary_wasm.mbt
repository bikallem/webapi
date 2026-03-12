fn quota_exceeded_error_options_ffi(quota: JsValue, requested: JsValue) -> QuotaExceededErrorOptions = "webapi_QuotaExceededErrorOptions" "new"

fn quota_exceeded_error_options_empty_ffi() -> QuotaExceededErrorOptions = "webapi_Dictionary" "empty"

fn quota_exceeded_error_options_get_quota_ffi(obj: JsValue) -> JsValue = "webapi_QuotaExceededErrorOptions" "get_quota"

fn quota_exceeded_error_options_get_requested_ffi(obj: JsValue) -> JsValue = "webapi_QuotaExceededErrorOptions" "get_requested"