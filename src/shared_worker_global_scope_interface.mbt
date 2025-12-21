///|
#external
pub type SharedWorkerGlobalScope

///|
pub impl TJsValue for SharedWorkerGlobalScope with to_js(
  self : SharedWorkerGlobalScope,
) -> JsValue = "%identity"

///|
pub fn[T : TSharedWorkerGlobalScope] SharedWorkerGlobalScope::into(
  self : SharedWorkerGlobalScope,
) -> T = "%identity"

///|
pub impl TSharedWorkerGlobalScope for SharedWorkerGlobalScope

///|
pub impl TWorkerGlobalScope for SharedWorkerGlobalScope

///|
pub impl TEventTarget for SharedWorkerGlobalScope

///|
pub trait TSharedWorkerGlobalScope: TWorkerGlobalScope {
  close(self : Self) -> Unit = _
}

///|
extern "js" fn shared_worker_global_scope_close_ffi(obj : JsValue) -> Unit = "(obj) => obj.close(obj)"

///|
impl TSharedWorkerGlobalScope with close(self : Self) -> Unit {
  shared_worker_global_scope_close_ffi(TJsValue::to_js(self))
}
