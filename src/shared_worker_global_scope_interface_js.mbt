///|
extern "js" fn shared_worker_global_scope_name_ffi(obj : JsValue) -> JsValue = "(obj) => obj.name"

///|
extern "js" fn shared_worker_global_scope_close_ffi(obj : JsValue) -> Unit = "(obj) => obj.close()"

///|
extern "js" fn shared_worker_global_scope_onconnect_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.onconnect"

///|
extern "js" fn shared_worker_global_scope_set_onconnect_ffi(
  obj : JsValue,
  onconnect : JsValue,
) -> Unit = "(obj, onconnect) => { obj.onconnect = onconnect; }"
