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
  onerror(self : Self) -> EventHandlerNonNull = _
  set_onerror(self : Self, onerror : EventHandlerNonNull) -> Unit = _
  onmessage(self : Self) -> EventHandlerNonNull = _
  set_onmessage(self : Self, onmessage : EventHandlerNonNull) -> Unit = _
  onmessageerror(self : Self) -> EventHandlerNonNull = _
  set_onmessageerror(self : Self, onmessageerror : EventHandlerNonNull) -> Unit = _
}

///|
/// [Worker.terminate](https://developer.mozilla.org/en-US/docs/Web/API/Worker/terminate)
impl TWorker with terminate(self : Self) -> Unit {
  worker_terminate_ffi(TJsValue::to_js(self))
}

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
/// [Worker.onerror](https://developer.mozilla.org/en-US/docs/Web/API/Worker/onerror)
impl TWorker with onerror(self : Self) -> EventHandlerNonNull {
  worker_onerror_ffi(TJsValue::to_js(self))
}

///|
/// [Worker.onerror](https://developer.mozilla.org/en-US/docs/Web/API/Worker/onerror)
impl TWorker with set_onerror(self : Self, onerror : EventHandlerNonNull) -> Unit {
  worker_set_onerror_ffi(TJsValue::to_js(self), TJsValue::to_js(onerror))
}

///|
/// [Worker.onmessage](https://developer.mozilla.org/en-US/docs/Web/API/Worker/onmessage)
impl TWorker with onmessage(self : Self) -> EventHandlerNonNull {
  worker_onmessage_ffi(TJsValue::to_js(self))
}

///|
/// [Worker.onmessage](https://developer.mozilla.org/en-US/docs/Web/API/Worker/onmessage)
impl TWorker with set_onmessage(self : Self, onmessage : EventHandlerNonNull) -> Unit {
  worker_set_onmessage_ffi(TJsValue::to_js(self), TJsValue::to_js(onmessage))
}

///|
/// [Worker.onmessageerror](https://developer.mozilla.org/en-US/docs/Web/API/Worker/onmessageerror)
impl TWorker with onmessageerror(self : Self) -> EventHandlerNonNull {
  worker_onmessageerror_ffi(TJsValue::to_js(self))
}

///|
/// [Worker.onmessageerror](https://developer.mozilla.org/en-US/docs/Web/API/Worker/onmessageerror)
impl TWorker with set_onmessageerror(
  self : Self,
  onmessageerror : EventHandlerNonNull,
) -> Unit {
  worker_set_onmessageerror_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onmessageerror),
  )
}
