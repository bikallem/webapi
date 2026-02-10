// Do not edit. This file is generated.
// MoonBit type: DedicatedWorkerGlobalScope
// Specifications: html.idl

/// [DedicatedWorkerGlobalScope](https://developer.mozilla.org/en-US/docs/Web/API/DedicatedWorkerGlobalScope)
#external
pub type DedicatedWorkerGlobalScope

pub impl TJsValue for DedicatedWorkerGlobalScope with to_js(self: DedicatedWorkerGlobalScope) -> JsValue = "%identity"

pub fn[T: TDedicatedWorkerGlobalScope] DedicatedWorkerGlobalScope::into(self : DedicatedWorkerGlobalScope) -> T = "%identity"

pub impl TDedicatedWorkerGlobalScope for DedicatedWorkerGlobalScope

pub impl TWorkerGlobalScope for DedicatedWorkerGlobalScope

pub impl TEventTarget for DedicatedWorkerGlobalScope

/// [DedicatedWorkerGlobalScope](https://developer.mozilla.org/en-US/docs/Web/API/DedicatedWorkerGlobalScope) interface.
pub trait TDedicatedWorkerGlobalScope: TWorkerGlobalScope {
  name(self : Self) -> String = _
  post_message(self : Self, message : JsValue, transfer : Array[JsValue]) -> Unit = _
  post_message_2(self : Self, message : JsValue, options? : StructuredSerializeOptions) -> Unit = _
  close(self : Self) -> Unit = _
  request_animation_frame(self : Self, callback : FrameRequestCallback) -> UInt = _
  cancel_animation_frame(self : Self, handle : UInt) -> Unit = _
  onmessage(self : Self) -> EventHandler = _
  set_onmessage(self : Self, onmessage : EventHandler) -> Unit = _
  onmessageerror(self : Self) -> EventHandler = _
  set_onmessageerror(self : Self, onmessageerror : EventHandler) -> Unit = _
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

/// [DedicatedWorkerGlobalScope.postMessage_2](https://developer.mozilla.org/en-US/docs/Web/API/DedicatedWorkerGlobalScope/postMessage_2)
impl TDedicatedWorkerGlobalScope with post_message_2(self : Self, 
message : JsValue, 
options? : StructuredSerializeOptions = StructuredSerializeOptions::empty()) -> Unit {
  dedicated_worker_global_scope_post_message_2_ffi(TJsValue::to_js(self), TJsValue::to_js(message), TJsValue::to_js(options))
}

/// [DedicatedWorkerGlobalScope.close](https://developer.mozilla.org/en-US/docs/Web/API/DedicatedWorkerGlobalScope/close)
impl TDedicatedWorkerGlobalScope with close(self : Self) -> Unit {
  dedicated_worker_global_scope_close_ffi(TJsValue::to_js(self))
}

/// [DedicatedWorkerGlobalScope.requestAnimationFrame](https://developer.mozilla.org/en-US/docs/Web/API/DedicatedWorkerGlobalScope/requestAnimationFrame)
impl TDedicatedWorkerGlobalScope with request_animation_frame(self : Self, 
callback : FrameRequestCallback) -> UInt {
  dedicated_worker_global_scope_request_animation_frame_ffi(TJsValue::to_js(self), TJsValue::to_js(callback))
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
onmessage : EventHandler) -> Unit {
  dedicated_worker_global_scope_set_onmessage_ffi(TJsValue::to_js(self), TJsValue::to_js(onmessage))
}

/// [DedicatedWorkerGlobalScope.onmessageerror](https://developer.mozilla.org/en-US/docs/Web/API/DedicatedWorkerGlobalScope/onmessageerror)
impl TDedicatedWorkerGlobalScope with onmessageerror(self : Self) -> EventHandler {
  dedicated_worker_global_scope_onmessageerror_ffi(TJsValue::to_js(self))
}

/// [DedicatedWorkerGlobalScope.onmessageerror](https://developer.mozilla.org/en-US/docs/Web/API/DedicatedWorkerGlobalScope/onmessageerror)
impl TDedicatedWorkerGlobalScope with set_onmessageerror(self : Self, 
onmessageerror : EventHandler) -> Unit {
  dedicated_worker_global_scope_set_onmessageerror_ffi(TJsValue::to_js(self), TJsValue::to_js(onmessageerror))
}