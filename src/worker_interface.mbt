///|
#external
pub type Worker

///|
pub impl TJsValue for Worker with to_js(self : Worker) -> JsValue = "%identity"

///|
pub fn[T : TWorker] Worker::into(self : Worker) -> T = "%identity"

///|
pub impl TWorker for Worker

///|
pub impl TEventTarget for Worker

///|
pub(open) trait TWorkerNewScriptURLArg {
  to_js(self : Self) -> JsValue
}

///|
pub impl TWorkerNewScriptURLArg for TrustedScriptURL with to_js(
  self : TrustedScriptURL,
) -> JsValue = "%identity"

///|
pub impl TWorkerNewScriptURLArg for String with to_js(self : String) -> JsValue = "%identity"

///|
extern "js" fn worker_ffi(script_url : JsValue, options : JsValue) -> Worker = "(script_url, options) => new Worker(script_url, options)"

///|
pub fn Worker::new(
  script_url : &TWorkerNewScriptURLArg,
  options? : WorkerOptions = WorkerOptions::empty(),
) -> Worker {
  worker_ffi(script_url.to_js(), TJsValue::to_js(options))
}

///|
pub trait TWorker: TEventTarget {
  terminate(self : Self) -> Unit = _
  post_message(self : Self, message : JsValue, transfer : Array[JsValue]) -> Unit = _
  post_message_2(
    self : Self,
    message : JsValue,
    options? : StructuredSerializeOptions,
  ) -> Unit = _
}

///|
extern "js" fn worker_terminate_ffi(obj : JsValue) -> Unit = "(obj) => obj.terminate(obj)"

///|
impl TWorker with terminate(self : Self) -> Unit {
  worker_terminate_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn worker_post_message_ffi(
  obj : JsValue,
  message : JsValue,
  transfer : JsValue,
) -> Unit = "(obj, message, transfer) => obj.postMessage(obj, message, transfer)"

///|
impl TWorker with post_message(
  self : Self,
  message : JsValue,
  transfer : Array[JsValue],
) -> Unit {
  worker_post_message_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(message),
    TJsValue::to_js(transfer),
  )
}

///|
extern "js" fn worker_post_message_2_ffi(
  obj : JsValue,
  message : JsValue,
  options : JsValue,
) -> Unit = "(obj, message, options) => obj.postMessage_2(obj, message, options)"

///|
impl TWorker with post_message_2(
  self : Self,
  message : JsValue,
  options? : StructuredSerializeOptions = StructuredSerializeOptions::empty(),
) -> Unit {
  worker_post_message_2_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(message),
    TJsValue::to_js(options),
  )
}
