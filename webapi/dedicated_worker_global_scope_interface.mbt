// Do not edit. This file is generated.
// MoonBit type: DedicatedWorkerGlobalScope
// Specifications: html.idl

/// [DedicatedWorkerGlobalScope](https://developer.mozilla.org/en-US/docs/Web/API/DedicatedWorkerGlobalScope)
#external
pub type DedicatedWorkerGlobalScope

pub impl TJsValue for DedicatedWorkerGlobalScope with to_js(self: DedicatedWorkerGlobalScope) -> JsValue = "%identity"

pub impl FromJsAny for DedicatedWorkerGlobalScope with from_js_any(value : JsAny) -> DedicatedWorkerGlobalScope = "%identity"

pub fn[T: TDedicatedWorkerGlobalScope] DedicatedWorkerGlobalScope::into(self : DedicatedWorkerGlobalScope) -> T = "%identity"

pub impl TDedicatedWorkerGlobalScope for DedicatedWorkerGlobalScope

pub impl TWorkerGlobalScope for DedicatedWorkerGlobalScope

pub impl TEventTarget for DedicatedWorkerGlobalScope

/// [DedicatedWorkerGlobalScope](https://developer.mozilla.org/en-US/docs/Web/API/DedicatedWorkerGlobalScope) interface.
pub trait TDedicatedWorkerGlobalScope: TWorkerGlobalScope {
  name(self : Self) -> String = _
  post_message(self : Self, message : JsValue, transfer : Array[JsValue]) -> Unit = _
  post_message_with_options(self : Self, message : JsValue, options? : StructuredSerializeOptions) -> Unit = _
  close(self : Self) -> Unit = _
  request_animation_frame(self : Self, callback : (DOMHighResTimeStamp) -> Unit) -> UInt = _
  cancel_animation_frame(self : Self, handle : UInt) -> Unit = _
  onmessage(self : Self) -> EventHandler = _
  set_onmessage(self : Self, onmessage : (Event) -> JsValue) -> Unit = _
  onmessageerror(self : Self) -> EventHandler = _
  set_onmessageerror(self : Self, onmessageerror : (Event) -> JsValue) -> Unit = _
}

/// [DedicatedWorkerGlobalScope.name](https://developer.mozilla.org/en-US/docs/Web/API/DedicatedWorkerGlobalScope/name)
impl TDedicatedWorkerGlobalScope with name(self : Self) -> String {
  dedicated_worker_global_scope_name_ffi(TJsValue::to_js(self))
}

/// [DedicatedWorkerGlobalScope.postMessage](https://developer.mozilla.org/en-US/docs/Web/API/DedicatedWorkerGlobalScope/postMessage)
impl TDedicatedWorkerGlobalScope with post_message(self : Self, 
message : JsValue, 
transfer : Array[JsValue]) -> Unit {
  dedicated_worker_global_scope_post_message_ffi(TJsValue::to_js(self), TJsValue::to_js(message), TJsValue::to_js(transfer))
}

/// [DedicatedWorkerGlobalScope.postMessage](https://developer.mozilla.org/en-US/docs/Web/API/DedicatedWorkerGlobalScope/postMessage)
impl TDedicatedWorkerGlobalScope with post_message_with_options(self : Self, 
message : JsValue, 
options? : StructuredSerializeOptions) -> Unit {
  dedicated_worker_global_scope_post_message_with_options_ffi(TJsValue::to_js(self), TJsValue::to_js(message), opt_to_js(options))
}

/// [DedicatedWorkerGlobalScope.close](https://developer.mozilla.org/en-US/docs/Web/API/DedicatedWorkerGlobalScope/close)
impl TDedicatedWorkerGlobalScope with close(self : Self) -> Unit {
  dedicated_worker_global_scope_close_ffi(TJsValue::to_js(self))
}

/// [DedicatedWorkerGlobalScope.requestAnimationFrame](https://developer.mozilla.org/en-US/docs/Web/API/DedicatedWorkerGlobalScope/requestAnimationFrame)
impl TDedicatedWorkerGlobalScope with request_animation_frame(self : Self, 
callback : (DOMHighResTimeStamp) -> Unit) -> UInt {
  dedicated_worker_global_scope_request_animation_frame_ffi(TJsValue::to_js(self), TJsValue::to_js(frame_request_callback_ffi(callback)))
}

/// [DedicatedWorkerGlobalScope.cancelAnimationFrame](https://developer.mozilla.org/en-US/docs/Web/API/DedicatedWorkerGlobalScope/cancelAnimationFrame)
impl TDedicatedWorkerGlobalScope with cancel_animation_frame(self : Self, 
handle : UInt) -> Unit {
  dedicated_worker_global_scope_cancel_animation_frame_ffi(TJsValue::to_js(self), TJsValue::to_js(handle))
}

/// [DedicatedWorkerGlobalScope.onmessage](https://developer.mozilla.org/en-US/docs/Web/API/DedicatedWorkerGlobalScope/onmessage)
impl TDedicatedWorkerGlobalScope with onmessage(self : Self) -> EventHandler {
  dedicated_worker_global_scope_onmessage_ffi(TJsValue::to_js(self))
}

/// [DedicatedWorkerGlobalScope.onmessage](https://developer.mozilla.org/en-US/docs/Web/API/DedicatedWorkerGlobalScope/onmessage)
impl TDedicatedWorkerGlobalScope with set_onmessage(self : Self, 
onmessage : (Event) -> JsValue) -> Unit {
  dedicated_worker_global_scope_set_onmessage_ffi(TJsValue::to_js(self), TJsValue::to_js(event_handler_non_null_ffi(onmessage)))
}

/// [DedicatedWorkerGlobalScope.onmessageerror](https://developer.mozilla.org/en-US/docs/Web/API/DedicatedWorkerGlobalScope/onmessageerror)
impl TDedicatedWorkerGlobalScope with onmessageerror(self : Self) -> EventHandler {
  dedicated_worker_global_scope_onmessageerror_ffi(TJsValue::to_js(self))
}

/// [DedicatedWorkerGlobalScope.onmessageerror](https://developer.mozilla.org/en-US/docs/Web/API/DedicatedWorkerGlobalScope/onmessageerror)
impl TDedicatedWorkerGlobalScope with set_onmessageerror(self : Self, 
onmessageerror : (Event) -> JsValue) -> Unit {
  dedicated_worker_global_scope_set_onmessageerror_ffi(TJsValue::to_js(self), TJsValue::to_js(event_handler_non_null_ffi(onmessageerror)))
}