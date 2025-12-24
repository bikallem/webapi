///|
#external
pub type SharedWorker

///|
pub impl TJsValue for SharedWorker with to_js(self : SharedWorker) -> JsValue = "%identity"

///|
pub fn[T : TSharedWorker] SharedWorker::into(self : SharedWorker) -> T = "%identity"

///|
pub impl TSharedWorker for SharedWorker

///|
pub impl TEventTarget for SharedWorker

///|
pub(open) trait TSharedWorkerNewScriptURL {
  to_js(self : Self) -> JsValue
}

///|
pub impl TSharedWorkerNewScriptURL for TrustedScriptURL with to_js(
  self : TrustedScriptURL,
) -> JsValue = "%identity"

///|
pub impl TSharedWorkerNewScriptURL for String with to_js(self : String) -> JsValue = "%identity"

///|
pub(open) trait TSharedWorkerNewOptions {
  to_js(self : Self) -> JsValue
}

///|
pub impl TSharedWorkerNewOptions for String with to_js(self : String) -> JsValue = "%identity"

///|
pub impl TSharedWorkerNewOptions for WorkerOptions with to_js(
  self : WorkerOptions,
) -> JsValue = "%identity"

///|
extern "js" fn shared_worker_new_ffi(
  script_url : JsValue,
  options : JsValue,
) -> SharedWorker = "(script_url, options) => new SharedWorker(script_url, options)"

///|
pub fn SharedWorker::new(
  script_url : &TSharedWorkerNewScriptURL,
  options? : &TSharedWorkerNewOptions = WorkerOptions::empty(),
) -> SharedWorker {
  shared_worker_new_ffi(script_url.to_js(), options.to_js())
}

///|
pub trait TSharedWorker: TEventTarget {
  port(self : Self) -> MessagePort = _
  onerror(self : Self) -> EventHandler = _
  set_onerror(self : Self, onerror : EventHandler) -> Unit = _
}

///|
extern "js" fn shared_worker_port_ffi(obj : JsValue) -> MessagePort = "(obj) => obj.port"

///|
impl TSharedWorker with port(self : Self) -> MessagePort {
  shared_worker_port_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn shared_worker_onerror_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.onerror"

///|
impl TSharedWorker with onerror(self : Self) -> EventHandler {
  shared_worker_onerror_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn shared_worker_set_onerror_ffi(
  obj : JsValue,
  onerror : JsValue,
) -> Unit = "(obj, onerror) => { obj.onerror = onerror; }"

///|
impl TSharedWorker with set_onerror(self : Self, onerror : EventHandler) -> Unit {
  shared_worker_set_onerror_ffi(TJsValue::to_js(self), TJsValue::to_js(onerror))
}
