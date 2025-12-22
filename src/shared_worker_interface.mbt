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
pub(open) trait TSharedWorkerNewScriptURLArg {
  to_js(self : Self) -> JsValue
}

///|
pub impl TSharedWorkerNewScriptURLArg for TrustedScriptURL with to_js(
  self : TrustedScriptURL,
) -> JsValue = "%identity"

///|
pub impl TSharedWorkerNewScriptURLArg for String with to_js(self : String) -> JsValue = "%identity"

///|
pub(open) trait TSharedWorkerNewOptionsArg {
  to_js(self : Self) -> JsValue
}

///|
pub impl TSharedWorkerNewOptionsArg for String with to_js(self : String) -> JsValue = "%identity"

///|
pub impl TSharedWorkerNewOptionsArg for WorkerOptions with to_js(
  self : WorkerOptions,
) -> JsValue = "%identity"

///|
extern "js" fn shared_worker_new_ffi(
  script_url : JsValue,
  options : JsValue,
) -> SharedWorker = "(script_url, options) => new SharedWorker(script_url, options)"

///|
pub fn SharedWorker::new(
  script_url : &TSharedWorkerNewScriptURLArg,
  options? : &TSharedWorkerNewOptionsArg = WorkerOptions::empty(),
) -> SharedWorker {
  shared_worker_new_ffi(script_url.to_js(), options.to_js())
}

///|
pub trait TSharedWorker: TEventTarget {}
