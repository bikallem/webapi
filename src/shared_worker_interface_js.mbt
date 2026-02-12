///|
extern "js" fn shared_worker_new_ffi(
  script_url : JsValue,
  options : JsValue,
) -> SharedWorker = "(script_url, options) => new SharedWorker(script_url, options)"

///|
extern "js" fn shared_worker_port_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.port"

///|
fn shared_worker_port_ffi(obj : JsValue) -> MessagePort {
  shared_worker_port_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn shared_worker_onerror_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onerror"

///|
fn shared_worker_onerror_ffi(obj : JsValue) -> EventHandlerNonNull {
  shared_worker_onerror_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn shared_worker_set_onerror_ffi(
  obj : JsValue,
  onerror : JsValue,
) -> Unit = "(obj, onerror) => { obj.onerror = onerror; }"
