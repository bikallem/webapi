// Do not edit. This file is generated.
// MoonBit type: Worker
// Specifications: html.idl

/// [Worker](https://developer.mozilla.org/en-US/docs/Web/API/Worker)
#external
pub type Worker

pub impl TJsValue for Worker with to_js(self: Worker) -> JsValue = "%identity"

pub impl FromJsAny for Worker with from_js_any(value : JsAny) -> Worker = "%identity"

/// Unchecked downcast — no runtime type check is performed.
/// Prefer `try_into()` for checked downcasts.
#deprecated("Use unsafe_into or try_into instead")
pub fn[T: TWorker] Worker::into(self : Worker) -> T = "%identity"

/// Unchecked downcast — no runtime type check is performed.
/// WARNING: If the underlying JS value is not of type T, this will silently
/// produce a value with incorrect type, leading to undefined behavior.
pub fn[T: TWorker] Worker::unsafe_into(self : Worker) -> T = "%identity"

pub impl HasConstructor for Worker with constructor_name() { "Worker" }

/// Checked downcast — returns None if the JS value is not an instance of T.
pub fn[T : TWorker + HasConstructor] Worker::try_into(self : Worker) -> T? {
  if js_instanceof(TJsValue::to_js(self), T::constructor_name()) {
    Some(self.unsafe_into())
  } else {
    None
  }
}

pub impl TWorker for Worker

pub impl TEventTarget for Worker

pub(open) trait TWorkerNewScriptURL : TJsValue {}

pub impl TWorkerNewScriptURL for TrustedScriptURL

pub impl TWorkerNewScriptURL for String

pub fn Worker::new(script_url : &TWorkerNewScriptURL, 
options? : WorkerOptions) -> Worker {
  worker_new_ffi(script_url.to_js(), opt_to_js(options))
}

/// [Worker](https://developer.mozilla.org/en-US/docs/Web/API/Worker) interface.
pub trait TWorker: TEventTarget {
  terminate(self : Self) -> Unit = _
  post_message(self : Self, message : JsValue, transfer : Array[JsValue]) -> Unit = _
  post_message_with_options(self : Self, message : JsValue, options? : StructuredSerializeOptions) -> Unit = _
  onerror(self : Self) -> EventHandler = _
  set_onerror(self : Self, onerror : (Event) -> JsValue) -> Unit = _
  onmessage(self : Self) -> EventHandler = _
  set_onmessage(self : Self, onmessage : (Event) -> JsValue) -> Unit = _
  onmessageerror(self : Self) -> EventHandler = _
  set_onmessageerror(self : Self, onmessageerror : (Event) -> JsValue) -> Unit = _
}

/// [Worker.terminate](https://developer.mozilla.org/en-US/docs/Web/API/Worker/terminate)
impl TWorker with terminate(self : Self) -> Unit {
  worker_terminate_ffi(TJsValue::to_js(self))
}

/// [Worker.postMessage](https://developer.mozilla.org/en-US/docs/Web/API/Worker/postMessage)
impl TWorker with post_message(self : Self, 
message : JsValue, 
transfer : Array[JsValue]) -> Unit {
  worker_post_message_ffi(TJsValue::to_js(self), TJsValue::to_js(message), TJsValue::to_js(transfer))
}

/// [Worker.postMessage](https://developer.mozilla.org/en-US/docs/Web/API/Worker/postMessage)
impl TWorker with post_message_with_options(self : Self, 
message : JsValue, 
options? : StructuredSerializeOptions) -> Unit {
  worker_post_message_with_options_ffi(TJsValue::to_js(self), TJsValue::to_js(message), opt_to_js(options))
}

/// [Worker.onerror](https://developer.mozilla.org/en-US/docs/Web/API/Worker/onerror)
impl TWorker with onerror(self : Self) -> EventHandler {
  worker_onerror_ffi(TJsValue::to_js(self))
}

/// [Worker.onerror](https://developer.mozilla.org/en-US/docs/Web/API/Worker/onerror)
impl TWorker with set_onerror(self : Self, 
onerror : (Event) -> JsValue) -> Unit {
  worker_set_onerror_ffi(TJsValue::to_js(self), TJsValue::to_js(event_handler_non_null_ffi(onerror)))
}

/// [Worker.onmessage](https://developer.mozilla.org/en-US/docs/Web/API/Worker/onmessage)
impl TWorker with onmessage(self : Self) -> EventHandler {
  worker_onmessage_ffi(TJsValue::to_js(self))
}

/// [Worker.onmessage](https://developer.mozilla.org/en-US/docs/Web/API/Worker/onmessage)
impl TWorker with set_onmessage(self : Self, 
onmessage : (Event) -> JsValue) -> Unit {
  worker_set_onmessage_ffi(TJsValue::to_js(self), TJsValue::to_js(event_handler_non_null_ffi(onmessage)))
}

/// [Worker.onmessageerror](https://developer.mozilla.org/en-US/docs/Web/API/Worker/onmessageerror)
impl TWorker with onmessageerror(self : Self) -> EventHandler {
  worker_onmessageerror_ffi(TJsValue::to_js(self))
}

/// [Worker.onmessageerror](https://developer.mozilla.org/en-US/docs/Web/API/Worker/onmessageerror)
impl TWorker with set_onmessageerror(self : Self, 
onmessageerror : (Event) -> JsValue) -> Unit {
  worker_set_onmessageerror_ffi(TJsValue::to_js(self), TJsValue::to_js(event_handler_non_null_ffi(onmessageerror)))
}

#cfg(target="js")
extern "js" fn worker_new_ffi(script_url: JsValue, options: JsValue) -> Worker = "(script_url, options) => new Worker(script_url, options)"

#cfg(target="js")
extern "js" fn worker_terminate_ffi(obj: JsValue) -> Unit = "(obj) => obj.terminate()"

#cfg(target="js")
extern "js" fn worker_post_message_ffi(obj: JsValue, message: JsValue, transfer: JsValue) -> Unit = "(obj, message, transfer) => obj.postMessage(message, transfer)"

#cfg(target="js")
extern "js" fn worker_post_message_with_options_ffi(obj: JsValue, message: JsValue, options: JsValue) -> Unit = "(obj, message, options) => obj.postMessage(message, options)"

#cfg(target="js")
extern "js" fn worker_onerror_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.onerror"

///|
#cfg(target="js")
fn worker_onerror_ffi(obj: JsValue) -> EventHandler {
  worker_onerror_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn worker_set_onerror_ffi(obj: JsValue, onerror: JsValue) -> Unit = "(obj, onerror) => { obj.onerror = onerror; }"

#cfg(target="js")
extern "js" fn worker_onmessage_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.onmessage"

///|
#cfg(target="js")
fn worker_onmessage_ffi(obj: JsValue) -> EventHandler {
  worker_onmessage_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn worker_set_onmessage_ffi(obj: JsValue, onmessage: JsValue) -> Unit = "(obj, onmessage) => { obj.onmessage = onmessage; }"

#cfg(target="js")
extern "js" fn worker_onmessageerror_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.onmessageerror"

///|
#cfg(target="js")
fn worker_onmessageerror_ffi(obj: JsValue) -> EventHandler {
  worker_onmessageerror_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn worker_set_onmessageerror_ffi(obj: JsValue, onmessageerror: JsValue) -> Unit = "(obj, onmessageerror) => { obj.onmessageerror = onmessageerror; }"

#cfg(target="wasm-gc")
fn worker_new_ffi(script_url: JsValue, options: JsValue) -> Worker = "webapi_Worker" "new"

#cfg(target="wasm-gc")
fn worker_terminate_ffi(obj: JsValue) -> Unit = "webapi_Worker" "terminate"

#cfg(target="wasm-gc")
fn worker_post_message_ffi(obj: JsValue, message: JsValue, transfer: JsValue) -> Unit = "webapi_Worker" "postMessage"

#cfg(target="wasm-gc")
fn worker_post_message_with_options_ffi(obj: JsValue, message: JsValue, options: JsValue) -> Unit = "webapi_Worker" "post_message_with_options"

#cfg(target="wasm-gc")
fn worker_onerror_ffi_wasm(obj: JsValue) -> JsValue = "webapi_Worker" "get_onerror"

///|
#cfg(target="wasm-gc")
fn worker_onerror_ffi(obj: JsValue) -> EventHandler {
  worker_onerror_ffi_wasm(obj).unsafe_cast()
}

#cfg(target="wasm-gc")
fn worker_set_onerror_ffi(obj: JsValue, onerror: JsValue) -> Unit = "webapi_Worker" "set_onerror"

#cfg(target="wasm-gc")
fn worker_onmessage_ffi_wasm(obj: JsValue) -> JsValue = "webapi_Worker" "get_onmessage"

///|
#cfg(target="wasm-gc")
fn worker_onmessage_ffi(obj: JsValue) -> EventHandler {
  worker_onmessage_ffi_wasm(obj).unsafe_cast()
}

#cfg(target="wasm-gc")
fn worker_set_onmessage_ffi(obj: JsValue, onmessage: JsValue) -> Unit = "webapi_Worker" "set_onmessage"

#cfg(target="wasm-gc")
fn worker_onmessageerror_ffi_wasm(obj: JsValue) -> JsValue = "webapi_Worker" "get_onmessageerror"

///|
#cfg(target="wasm-gc")
fn worker_onmessageerror_ffi(obj: JsValue) -> EventHandler {
  worker_onmessageerror_ffi_wasm(obj).unsafe_cast()
}

#cfg(target="wasm-gc")
fn worker_set_onmessageerror_ffi(obj: JsValue, onmessageerror: JsValue) -> Unit = "webapi_Worker" "set_onmessageerror"