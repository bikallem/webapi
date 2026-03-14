// Do not edit. This file is generated.
// MoonBit type: SharedWorkerGlobalScope
// Specifications: html.idl

/// [SharedWorkerGlobalScope](https://developer.mozilla.org/en-US/docs/Web/API/SharedWorkerGlobalScope)
#external
pub type SharedWorkerGlobalScope

pub impl TJsValue for SharedWorkerGlobalScope with to_js(self: SharedWorkerGlobalScope) -> JsValue = "%identity"

pub impl FromJsAny for SharedWorkerGlobalScope with from_js_any(value : JsAny) -> SharedWorkerGlobalScope = "%identity"

/// Unchecked downcast — no runtime type check is performed.
/// Prefer `try_into()` for checked downcasts.
#deprecated("Use unsafe_into or try_into instead")
pub fn[T: TSharedWorkerGlobalScope] SharedWorkerGlobalScope::into(self : SharedWorkerGlobalScope) -> T = "%identity"

/// Unchecked downcast — no runtime type check is performed.
/// WARNING: If the underlying JS value is not of type T, this will silently
/// produce a value with incorrect type, leading to undefined behavior.
pub fn[T: TSharedWorkerGlobalScope] SharedWorkerGlobalScope::unsafe_into(self : SharedWorkerGlobalScope) -> T = "%identity"

pub impl HasConstructor for SharedWorkerGlobalScope with constructor_name() { "SharedWorkerGlobalScope" }

/// Checked downcast — returns None if the JS value is not an instance of T.
pub fn[T : TSharedWorkerGlobalScope + HasConstructor] SharedWorkerGlobalScope::try_into(self : SharedWorkerGlobalScope) -> T? {
  if js_instanceof(TJsValue::to_js(self), T::constructor_name()) {
    Some(self.unsafe_into())
  } else {
    None
  }
}

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

#cfg(target="js")
extern "js" fn shared_worker_global_scope_name_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.name"

///|
#cfg(target="js")
fn shared_worker_global_scope_name_ffi(obj: JsValue) -> String {
  shared_worker_global_scope_name_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn shared_worker_global_scope_close_ffi(obj: JsValue) -> Unit = "(obj) => obj.close()"

#cfg(target="js")
extern "js" fn shared_worker_global_scope_onconnect_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.onconnect"

///|
#cfg(target="js")
fn shared_worker_global_scope_onconnect_ffi(obj: JsValue) -> EventHandler {
  shared_worker_global_scope_onconnect_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn shared_worker_global_scope_set_onconnect_ffi(obj: JsValue, onconnect: JsValue) -> Unit = "(obj, onconnect) => { obj.onconnect = onconnect; }"

#cfg(target="wasm-gc")
fn shared_worker_global_scope_name_ffi_wasm(obj: JsValue) -> JsValue = "webapi_SharedWorkerGlobalScope" "get_name"

///|
#cfg(target="wasm-gc")
fn shared_worker_global_scope_name_ffi(obj: JsValue) -> String {
  jsvalue_to_string(shared_worker_global_scope_name_ffi_wasm(obj))
}

#cfg(target="wasm-gc")
fn shared_worker_global_scope_close_ffi(obj: JsValue) -> Unit = "webapi_SharedWorkerGlobalScope" "close"

#cfg(target="wasm-gc")
fn shared_worker_global_scope_onconnect_ffi_wasm(obj: JsValue) -> JsValue = "webapi_SharedWorkerGlobalScope" "get_onconnect"

///|
#cfg(target="wasm-gc")
fn shared_worker_global_scope_onconnect_ffi(obj: JsValue) -> EventHandler {
  shared_worker_global_scope_onconnect_ffi_wasm(obj).unsafe_cast()
}

#cfg(target="wasm-gc")
fn shared_worker_global_scope_set_onconnect_ffi(obj: JsValue, onconnect: JsValue) -> Unit = "webapi_SharedWorkerGlobalScope" "set_onconnect"