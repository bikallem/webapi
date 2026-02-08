///|
fn shared_worker_new_ffi(
  script_url : JsValue,
  options : JsValue,
) -> SharedWorker = "webapi_SharedWorker" "new"

///|
fn shared_worker_port_ffi(obj : JsValue) -> JsValue = "webapi_SharedWorker" "get_port"

///|
fn shared_worker_onerror_ffi(obj : JsValue) -> JsValue = "webapi_SharedWorker" "get_onerror"

///|
fn shared_worker_set_onerror_ffi(obj : JsValue, onerror : JsValue) -> Unit = "webapi_SharedWorker" "set_onerror"
