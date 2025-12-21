///|
#external
pub type DedicatedWorkerGlobalScope

///|
pub impl TJsValue for DedicatedWorkerGlobalScope with to_js(
  self : DedicatedWorkerGlobalScope,
) -> JsValue = "%identity"

///|
pub fn[T : TDedicatedWorkerGlobalScope] DedicatedWorkerGlobalScope::into(
  self : DedicatedWorkerGlobalScope,
) -> T = "%identity"

///|
pub impl TDedicatedWorkerGlobalScope for DedicatedWorkerGlobalScope

///|
pub impl TWorkerGlobalScope for DedicatedWorkerGlobalScope

///|
pub impl TEventTarget for DedicatedWorkerGlobalScope

///|
pub trait TDedicatedWorkerGlobalScope: TWorkerGlobalScope {
  post_message(self : Self, message : JsValue, transfer : Array[JsValue]) -> Unit = _
  post_message_2(
    self : Self,
    message : JsValue,
    options? : StructuredSerializeOptions,
  ) -> Unit = _
  close(self : Self) -> Unit = _
  request_animation_frame(self : Self, callback : FrameRequestCallback) -> UInt = _
  cancel_animation_frame(self : Self, handle : UInt) -> Unit = _
}

///|
extern "js" fn dedicated_worker_global_scope_post_message_ffi(
  obj : JsValue,
  message : JsValue,
  transfer : JsValue,
) -> Unit = "(obj, message, transfer) => obj.postMessage(obj, message, transfer)"

///|
impl TDedicatedWorkerGlobalScope with post_message(
  self : Self,
  message : JsValue,
  transfer : Array[JsValue],
) -> Unit {
  dedicated_worker_global_scope_post_message_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(message),
    TJsValue::to_js(transfer),
  )
}

///|
extern "js" fn dedicated_worker_global_scope_post_message_2_ffi(
  obj : JsValue,
  message : JsValue,
  options : JsValue,
) -> Unit = "(obj, message, options) => obj.postMessage_2(obj, message, options)"

///|
impl TDedicatedWorkerGlobalScope with post_message_2(
  self : Self,
  message : JsValue,
  options? : StructuredSerializeOptions = StructuredSerializeOptions::empty(),
) -> Unit {
  dedicated_worker_global_scope_post_message_2_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(message),
    TJsValue::to_js(options),
  )
}

///|
extern "js" fn dedicated_worker_global_scope_close_ffi(obj : JsValue) -> Unit = "(obj) => obj.close(obj)"

///|
impl TDedicatedWorkerGlobalScope with close(self : Self) -> Unit {
  dedicated_worker_global_scope_close_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn dedicated_worker_global_scope_request_animation_frame_ffi(
  obj : JsValue,
  callback : JsValue,
) -> UInt = "(obj, callback) => obj.requestAnimationFrame(obj, callback)"

///|
impl TDedicatedWorkerGlobalScope with request_animation_frame(
  self : Self,
  callback : FrameRequestCallback,
) -> UInt {
  dedicated_worker_global_scope_request_animation_frame_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(callback),
  )
}

///|
extern "js" fn dedicated_worker_global_scope_cancel_animation_frame_ffi(
  obj : JsValue,
  handle : JsValue,
) -> Unit = "(obj, handle) => obj.cancelAnimationFrame(obj, handle)"

///|
impl TDedicatedWorkerGlobalScope with cancel_animation_frame(
  self : Self,
  handle : UInt,
) -> Unit {
  dedicated_worker_global_scope_cancel_animation_frame_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(handle),
  )
}
