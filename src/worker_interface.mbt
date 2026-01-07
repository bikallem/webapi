// Do not edit. This file is generated.
// MoonBit type: Worker
// Specifications: html.idl

///|
/// [Worker](https://developer.mozilla.org/en-US/docs/Web/API/Worker)
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
pub(open) trait TWorkerNewScriptURL {
  to_js(self : Self) -> JsValue
}

///|
pub impl TWorkerNewScriptURL for TrustedScriptURL with to_js(
  self : TrustedScriptURL,
) -> JsValue = "%identity"

///|
pub impl TWorkerNewScriptURL for String with to_js(self : String) -> JsValue = "%identity"

///|
extern "js" fn worker_new_ffi(
  script_url : JsValue,
  options : JsValue,
) -> Worker = "(script_url, options) => new Worker(script_url, options)"

///|
pub fn Worker::new(
  script_url : &TWorkerNewScriptURL,
  options? : WorkerOptions = WorkerOptions::empty(),
) -> Worker {
  worker_new_ffi(script_url.to_js(), TJsValue::to_js(options))
}

///|
/// [Worker](https://developer.mozilla.org/en-US/docs/Web/API/Worker) interface.
pub trait TWorker: TEventTarget {
  terminate(self : Self) -> Unit = _
  post_message(self : Self, message : JsValue, transfer : Array[JsValue]) -> Unit = _
  post_message_2(
    self : Self,
    message : JsValue,
    options? : StructuredSerializeOptions,
  ) -> Unit = _
  onerror(self : Self) -> EventHandler = _
  set_onerror(self : Self, onerror : EventHandler) -> Unit = _
  onmessage(self : Self) -> EventHandler = _
  set_onmessage(self : Self, onmessage : EventHandler) -> Unit = _
  onmessageerror(self : Self) -> EventHandler = _
  set_onmessageerror(self : Self, onmessageerror : EventHandler) -> Unit = _
}

///|
extern "js" fn worker_terminate_ffi(obj : JsValue) -> Unit = "(obj) => obj.terminate()"

///|
/// [Worker.terminate](https://developer.mozilla.org/en-US/docs/Web/API/Worker/terminate)
impl TWorker with terminate(self : Self) -> Unit {
  worker_terminate_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn worker_post_message_ffi(
  obj : JsValue,
  message : JsValue,
  transfer : JsValue,
) -> Unit = "(obj, message, transfer) => obj.postMessage(message, transfer)"

///|
/// [Worker.postMessage](https://developer.mozilla.org/en-US/docs/Web/API/Worker/postMessage)
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
) -> Unit = "(obj, message, options) => obj.postMessage_2(message, options)"

///|
/// [Worker.postMessage_2](https://developer.mozilla.org/en-US/docs/Web/API/Worker/postMessage_2)
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

///|
extern "js" fn worker_onerror_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.onerror"

///|
/// [Worker.onerror](https://developer.mozilla.org/en-US/docs/Web/API/Worker/onerror)
impl TWorker with onerror(self : Self) -> EventHandler {
  worker_onerror_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn worker_set_onerror_ffi(obj : JsValue, onerror : JsValue) -> Unit = "(obj, onerror) => { obj.onerror = onerror; }"

///|
/// [Worker.onerror](https://developer.mozilla.org/en-US/docs/Web/API/Worker/onerror)
impl TWorker with set_onerror(self : Self, onerror : EventHandler) -> Unit {
  worker_set_onerror_ffi(TJsValue::to_js(self), TJsValue::to_js(onerror))
}

///|
extern "js" fn worker_onmessage_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.onmessage"

///|
/// [Worker.onmessage](https://developer.mozilla.org/en-US/docs/Web/API/Worker/onmessage)
impl TWorker with onmessage(self : Self) -> EventHandler {
  worker_onmessage_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn worker_set_onmessage_ffi(
  obj : JsValue,
  onmessage : JsValue,
) -> Unit = "(obj, onmessage) => { obj.onmessage = onmessage; }"

///|
/// [Worker.onmessage](https://developer.mozilla.org/en-US/docs/Web/API/Worker/onmessage)
impl TWorker with set_onmessage(self : Self, onmessage : EventHandler) -> Unit {
  worker_set_onmessage_ffi(TJsValue::to_js(self), TJsValue::to_js(onmessage))
}

///|
extern "js" fn worker_onmessageerror_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.onmessageerror"

///|
/// [Worker.onmessageerror](https://developer.mozilla.org/en-US/docs/Web/API/Worker/onmessageerror)
impl TWorker with onmessageerror(self : Self) -> EventHandler {
  worker_onmessageerror_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn worker_set_onmessageerror_ffi(
  obj : JsValue,
  onmessageerror : JsValue,
) -> Unit = "(obj, onmessageerror) => { obj.onmessageerror = onmessageerror; }"

///|
/// [Worker.onmessageerror](https://developer.mozilla.org/en-US/docs/Web/API/Worker/onmessageerror)
impl TWorker with set_onmessageerror(self : Self, onmessageerror : EventHandler) -> Unit {
  worker_set_onmessageerror_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onmessageerror),
  )
}
