///|
extern "js" fn worker_new_ffi(
  script_url : JsValue,
  options : JsValue,
) -> Worker = "(script_url, options) => new Worker(script_url, options)"

///|
extern "js" fn worker_terminate_ffi(obj : JsValue) -> Unit = "(obj) => obj.terminate()"

///|
extern "js" fn worker_post_message_ffi(
  obj : JsValue,
  message : JsValue,
  transfer : JsValue,
) -> Unit = "(obj, message, transfer) => obj.postMessage(message, transfer)"

///|
extern "js" fn worker_post_message_2_ffi(
  obj : JsValue,
  message : JsValue,
  options : JsValue,
) -> Unit = "(obj, message, options) => obj.postMessage(message, options)"

///|
extern "js" fn worker_onerror_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onerror"

///|
fn worker_onerror_ffi(obj : JsValue) -> EventHandler {
  worker_onerror_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn worker_set_onerror_ffi(obj : JsValue, onerror : JsValue) -> Unit = "(obj, onerror) => { obj.onerror = onerror; }"

///|
extern "js" fn worker_onmessage_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onmessage"

///|
fn worker_onmessage_ffi(obj : JsValue) -> EventHandler {
  worker_onmessage_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn worker_set_onmessage_ffi(
  obj : JsValue,
  onmessage : JsValue,
) -> Unit = "(obj, onmessage) => { obj.onmessage = onmessage; }"

///|
extern "js" fn worker_onmessageerror_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onmessageerror"

///|
fn worker_onmessageerror_ffi(obj : JsValue) -> EventHandler {
  worker_onmessageerror_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn worker_set_onmessageerror_ffi(
  obj : JsValue,
  onmessageerror : JsValue,
) -> Unit = "(obj, onmessageerror) => { obj.onmessageerror = onmessageerror; }"
