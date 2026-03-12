// Do not edit. This file is generated.
// MoonBit type: SharedWorkerGlobalScope
// Specifications: html.idl

/// [SharedWorkerGlobalScope](https://developer.mozilla.org/en-US/docs/Web/API/SharedWorkerGlobalScope)
#external
pub type SharedWorkerGlobalScope

pub impl TJsValue for SharedWorkerGlobalScope with to_js(self: SharedWorkerGlobalScope) -> JsValue = "%identity"

pub impl FromJsAny for SharedWorkerGlobalScope with from_js_any(value : JsAny) -> SharedWorkerGlobalScope = "%identity"

pub fn[T: TSharedWorkerGlobalScope] SharedWorkerGlobalScope::into(self : SharedWorkerGlobalScope) -> T = "%identity"

pub impl TSharedWorkerGlobalScope for SharedWorkerGlobalScope

pub impl TWorkerGlobalScope for SharedWorkerGlobalScope

pub impl TEventTarget for SharedWorkerGlobalScope

/// [SharedWorkerGlobalScope](https://developer.mozilla.org/en-US/docs/Web/API/SharedWorkerGlobalScope) interface.
pub trait TSharedWorkerGlobalScope: TWorkerGlobalScope {
  name(self : Self) -> String = _
  close(self : Self) -> Unit = _
  onconnect(self : Self) -> EventHandler = _
  set_onconnect(self : Self, onconnect : (Event) -> JsValue) -> Unit = _
}

/// [SharedWorkerGlobalScope.name](https://developer.mozilla.org/en-US/docs/Web/API/SharedWorkerGlobalScope/name)
impl TSharedWorkerGlobalScope with name(self : Self) -> String {
  shared_worker_global_scope_name_ffi(TJsValue::to_js(self))
}

/// [SharedWorkerGlobalScope.close](https://developer.mozilla.org/en-US/docs/Web/API/SharedWorkerGlobalScope/close)
impl TSharedWorkerGlobalScope with close(self : Self) -> Unit {
  shared_worker_global_scope_close_ffi(TJsValue::to_js(self))
}

/// [SharedWorkerGlobalScope.onconnect](https://developer.mozilla.org/en-US/docs/Web/API/SharedWorkerGlobalScope/onconnect)
impl TSharedWorkerGlobalScope with onconnect(self : Self) -> EventHandler {
  shared_worker_global_scope_onconnect_ffi(TJsValue::to_js(self))
}

/// [SharedWorkerGlobalScope.onconnect](https://developer.mozilla.org/en-US/docs/Web/API/SharedWorkerGlobalScope/onconnect)
impl TSharedWorkerGlobalScope with set_onconnect(self : Self, 
onconnect : (Event) -> JsValue) -> Unit {
  shared_worker_global_scope_set_onconnect_ffi(TJsValue::to_js(self), TJsValue::to_js(event_handler_non_null_ffi(onconnect)))
}