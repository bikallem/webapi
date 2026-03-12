extern "js" fn shared_worker_global_scope_name_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.name"

///|
fn shared_worker_global_scope_name_ffi(obj: JsValue) -> String {
  shared_worker_global_scope_name_ffi_js(obj).unsafe_cast()
}

extern "js" fn shared_worker_global_scope_close_ffi(obj: JsValue) -> Unit = "(obj) => obj.close()"

extern "js" fn shared_worker_global_scope_onconnect_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.onconnect"

///|
fn shared_worker_global_scope_onconnect_ffi(obj: JsValue) -> EventHandler {
  shared_worker_global_scope_onconnect_ffi_js(obj).unsafe_cast()
}

extern "js" fn shared_worker_global_scope_set_onconnect_ffi(obj: JsValue, onconnect: JsValue) -> Unit = "(obj, onconnect) => { obj.onconnect = onconnect; }"