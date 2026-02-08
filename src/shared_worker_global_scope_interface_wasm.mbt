fn shared_worker_global_scope_name_ffi(obj: JsValue) -> JsValue = "webapi_SharedWorkerGlobalScope" "get_name"

fn shared_worker_global_scope_close_ffi(obj: JsValue) -> Unit = "webapi_SharedWorkerGlobalScope" "close"

fn shared_worker_global_scope_onconnect_ffi(obj: JsValue) -> JsValue = "webapi_SharedWorkerGlobalScope" "get_onconnect"

fn shared_worker_global_scope_set_onconnect_ffi(obj: JsValue, onconnect: JsValue) -> Unit = "webapi_SharedWorkerGlobalScope" "set_onconnect"