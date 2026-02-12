///|
fn storage_manager_persisted_ffi_wasm(obj : JsValue) -> JsValue = "webapi_StorageManager" "persisted"

///|
fn storage_manager_persisted_ffi(obj : JsValue) -> JsPromise[Bool] {
  storage_manager_persisted_ffi_wasm(obj).unsafe_cast()
}

///|
fn storage_manager_persist_ffi_wasm(obj : JsValue) -> JsValue = "webapi_StorageManager" "persist"

///|
fn storage_manager_persist_ffi(obj : JsValue) -> JsPromise[Bool] {
  storage_manager_persist_ffi_wasm(obj).unsafe_cast()
}

///|
fn storage_manager_estimate_ffi_wasm(obj : JsValue) -> JsValue = "webapi_StorageManager" "estimate"

///|
fn storage_manager_estimate_ffi(obj : JsValue) -> JsPromise[StorageEstimate] {
  storage_manager_estimate_ffi_wasm(obj).unsafe_cast()
}
