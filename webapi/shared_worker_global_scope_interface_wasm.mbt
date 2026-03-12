///|
fn shared_worker_global_scope_name_ffi_wasm(obj : JsValue) -> JsValue = "webapi_SharedWorkerGlobalScope" "get_name"

///|
fn shared_worker_global_scope_name_ffi(obj : JsValue) -> String {
  jsvalue_to_string(shared_worker_global_scope_name_ffi_wasm(obj))
}

///|
fn shared_worker_global_scope_close_ffi(obj : JsValue) -> Unit = "webapi_SharedWorkerGlobalScope" "close"

///|
fn shared_worker_global_scope_onconnect_ffi_wasm(obj : JsValue) -> JsValue = "webapi_SharedWorkerGlobalScope" "get_onconnect"

///|
fn shared_worker_global_scope_onconnect_ffi(obj : JsValue) -> EventHandler {
  shared_worker_global_scope_onconnect_ffi_wasm(obj).unsafe_cast()
}

///|
fn shared_worker_global_scope_set_onconnect_ffi(
  obj : JsValue,
  onconnect : JsValue,
) -> Unit = "webapi_SharedWorkerGlobalScope" "set_onconnect"
