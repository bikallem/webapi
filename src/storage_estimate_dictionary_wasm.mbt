///|
fn storage_estimate_ffi(usage : JsValue, quota : JsValue) -> StorageEstimate = "webapi_StorageEstimate" "new"

///|
fn storage_estimate_empty_ffi() -> StorageEstimate = "webapi_Dictionary" "empty"
