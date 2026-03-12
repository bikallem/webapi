fn storage_estimate_ffi(usage: JsValue, quota: JsValue) -> StorageEstimate = "webapi_StorageEstimate" "new"

fn storage_estimate_empty_ffi() -> StorageEstimate = "webapi_Dictionary" "empty"

fn storage_estimate_get_usage_ffi(obj: JsValue) -> JsValue = "webapi_StorageEstimate" "get_usage"

fn storage_estimate_get_quota_ffi(obj: JsValue) -> JsValue = "webapi_StorageEstimate" "get_quota"