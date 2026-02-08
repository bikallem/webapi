///|
extern "js" fn dedicated_worker_global_scope_name_ffi(obj : JsValue) -> JsValue = "(obj) => obj.name"

///|
extern "js" fn dedicated_worker_global_scope_post_message_ffi(
  obj : JsValue,
  message : JsValue,
  transfer : JsValue,
) -> Unit = "(obj, message, transfer) => obj.postMessage(message, transfer)"

///|
extern "js" fn dedicated_worker_global_scope_post_message_2_ffi(
  obj : JsValue,
  message : JsValue,
  options : JsValue,
) -> Unit = "(obj, message, options) => obj.postMessage_2(message, options)"

///|
extern "js" fn dedicated_worker_global_scope_close_ffi(obj : JsValue) -> Unit = "(obj) => obj.close()"

///|
extern "js" fn dedicated_worker_global_scope_request_animation_frame_ffi(
  obj : JsValue,
  callback : JsValue,
) -> JsValue = "(obj, callback) => obj.requestAnimationFrame(callback)"

///|
extern "js" fn dedicated_worker_global_scope_cancel_animation_frame_ffi(
  obj : JsValue,
  handle : JsValue,
) -> Unit = "(obj, handle) => obj.cancelAnimationFrame(handle)"

///|
extern "js" fn dedicated_worker_global_scope_onmessage_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.onmessage"

///|
extern "js" fn dedicated_worker_global_scope_set_onmessage_ffi(
  obj : JsValue,
  onmessage : JsValue,
) -> Unit = "(obj, onmessage) => { obj.onmessage = onmessage; }"

///|
extern "js" fn dedicated_worker_global_scope_onmessageerror_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.onmessageerror"

///|
extern "js" fn dedicated_worker_global_scope_set_onmessageerror_ffi(
  obj : JsValue,
  onmessageerror : JsValue,
) -> Unit = "(obj, onmessageerror) => { obj.onmessageerror = onmessageerror; }"
