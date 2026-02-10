///|
fn storage_manager_persisted_ffi_wasm(obj : JsValue) -> JsValue = "webapi_StorageManager" "persisted"

///|
fn storage_manager_persisted_ffi(obj : JsValue) -> @js_async.Promise[Bool] {
  storage_manager_persisted_ffi_wasm(obj).unsafe_cast()
}

///|
fn storage_manager_persist_ffi_wasm(obj : JsValue) -> JsValue = "webapi_StorageManager" "persist"

///|
fn storage_manager_persist_ffi(obj : JsValue) -> @js_async.Promise[Bool] {
  storage_manager_persist_ffi_wasm(obj).unsafe_cast()
}

///|
fn storage_manager_estimate_ffi_wasm(obj : JsValue) -> JsValue = "webapi_StorageManager" "estimate"

///|
fn storage_manager_estimate_ffi(
  obj : JsValue,
) -> @js_async.Promise[StorageEstimate] {
  storage_manager_estimate_ffi_wasm(obj).unsafe_cast()
}
