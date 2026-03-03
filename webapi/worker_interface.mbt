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
pub impl FromJsAny for Worker with from_js_any(value : JsAny) -> Worker = "%identity"

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
  options? : WorkerOptions,
) -> Worker {
  worker_new_ffi(script_url.to_js(), opt_to_js(options))
}

///|
/// [Worker](https://developer.mozilla.org/en-US/docs/Web/API/Worker) interface.
pub trait TWorker: TEventTarget {
  terminate(self : Self) -> Unit = _
  post_message(self : Self, message : JsValue, transfer : Array[JsValue]) -> Unit = _
  post_message_with_options(
    self : Self,
    message : JsValue,
    options? : StructuredSerializeOptions,
  ) -> Unit = _
  onerror(self : Self) -> EventHandler = _
  set_onerror(self : Self, onerror : (Event) -> JsValue) -> Unit = _
  onmessage(self : Self) -> EventHandler = _
  set_onmessage(self : Self, onmessage : (Event) -> JsValue) -> Unit = _
  onmessageerror(self : Self) -> EventHandler = _
  set_onmessageerror(self : Self, onmessageerror : (Event) -> JsValue) -> Unit = _
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
/// [Worker.postMessage](https://developer.mozilla.org/en-US/docs/Web/API/Worker/postMessage)
impl TWorker with post_message_with_options(
  self : Self,
  message : JsValue,
  options? : StructuredSerializeOptions,
) -> Unit {
  worker_post_message_with_options_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(message),
    opt_to_js(options),
  )
}

///|
/// [Worker.onerror](https://developer.mozilla.org/en-US/docs/Web/API/Worker/onerror)
impl TWorker with onerror(self : Self) -> EventHandler {
  worker_onerror_ffi(TJsValue::to_js(self))
}

///|
/// [Worker.onerror](https://developer.mozilla.org/en-US/docs/Web/API/Worker/onerror)
impl TWorker with set_onerror(self : Self, onerror : (Event) -> JsValue) -> Unit {
  worker_set_onerror_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onerror)),
  )
}

///|
/// [Worker.onmessage](https://developer.mozilla.org/en-US/docs/Web/API/Worker/onmessage)
impl TWorker with onmessage(self : Self) -> EventHandler {
  worker_onmessage_ffi(TJsValue::to_js(self))
}

///|
/// [Worker.onmessage](https://developer.mozilla.org/en-US/docs/Web/API/Worker/onmessage)
impl TWorker with set_onmessage(self : Self, onmessage : (Event) -> JsValue) -> Unit {
  worker_set_onmessage_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onmessage)),
  )
}

///|
/// [Worker.onmessageerror](https://developer.mozilla.org/en-US/docs/Web/API/Worker/onmessageerror)
impl TWorker with onmessageerror(self : Self) -> EventHandler {
  worker_onmessageerror_ffi(TJsValue::to_js(self))
}

///|
/// [Worker.onmessageerror](https://developer.mozilla.org/en-US/docs/Web/API/Worker/onmessageerror)
impl TWorker with set_onmessageerror(
  self : Self,
  onmessageerror : (Event) -> JsValue,
) -> Unit {
  worker_set_onmessageerror_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onmessageerror)),
  )
}
