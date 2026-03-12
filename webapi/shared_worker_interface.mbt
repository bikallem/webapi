// Do not edit. This file is generated.
// MoonBit type: SharedWorker
// Specifications: html.idl

///|
/// [SharedWorker](https://developer.mozilla.org/en-US/docs/Web/API/SharedWorker)
#external
pub type SharedWorker

///|
pub impl TJsValue for SharedWorker with to_js(self : SharedWorker) -> JsValue = "%identity"

///|
pub impl FromJsAny for SharedWorker with from_js_any(value : JsAny) -> SharedWorker = "%identity"

///|
pub fn[T : TSharedWorker] SharedWorker::into(self : SharedWorker) -> T = "%identity"

///|
pub impl TSharedWorker for SharedWorker

///|
pub impl TEventTarget for SharedWorker

///|
pub(open) trait TSharedWorkerNewScriptURL: TJsValue {}

///|
pub impl TSharedWorkerNewScriptURL for TrustedScriptURL

///|
pub impl TSharedWorkerNewScriptURL for String

///|
pub(open) trait TSharedWorkerNewOptions: TJsValue {}

///|
pub impl TSharedWorkerNewOptions for String

///|
pub impl TSharedWorkerNewOptions for WorkerOptions

///|
pub fn SharedWorker::new(
  script_url : &TSharedWorkerNewScriptURL,
  options? : &TSharedWorkerNewOptions,
) -> SharedWorker {
  shared_worker_new_ffi(
    script_url.to_js(),
    match options {
      Some(v) => v.to_js()
      None => JsValue::undefined()
    },
  )
}

///|
/// [SharedWorker](https://developer.mozilla.org/en-US/docs/Web/API/SharedWorker) interface.
pub trait TSharedWorker: TEventTarget {
  port(self : Self) -> MessagePort = _
  onerror(self : Self) -> EventHandler = _
  set_onerror(self : Self, onerror : (Event) -> JsValue) -> Unit = _
}

///|
/// [SharedWorker.port](https://developer.mozilla.org/en-US/docs/Web/API/SharedWorker/port)
impl TSharedWorker with port(self : Self) -> MessagePort {
  shared_worker_port_ffi(TJsValue::to_js(self))
}

///|
/// [SharedWorker.onerror](https://developer.mozilla.org/en-US/docs/Web/API/SharedWorker/onerror)
impl TSharedWorker with onerror(self : Self) -> EventHandler {
  shared_worker_onerror_ffi(TJsValue::to_js(self))
}

///|
/// [SharedWorker.onerror](https://developer.mozilla.org/en-US/docs/Web/API/SharedWorker/onerror)
impl TSharedWorker with set_onerror(self : Self, onerror : (Event) -> JsValue) -> Unit {
  shared_worker_set_onerror_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onerror)),
  )
}

///|
#cfg(target="js")
extern "js" fn shared_worker_new_ffi(
  script_url : JsValue,
  options : JsValue,
) -> SharedWorker = "(script_url, options) => new SharedWorker(script_url, options)"

///|
#cfg(target="js")
extern "js" fn shared_worker_port_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.port"

///|
#cfg(target="js")
fn shared_worker_port_ffi(obj : JsValue) -> MessagePort {
  shared_worker_port_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn shared_worker_onerror_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onerror"

///|
#cfg(target="js")
fn shared_worker_onerror_ffi(obj : JsValue) -> EventHandler {
  shared_worker_onerror_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn shared_worker_set_onerror_ffi(
  obj : JsValue,
  onerror : JsValue,
) -> Unit = "(obj, onerror) => { obj.onerror = onerror; }"

///|
#cfg(target="wasm-gc")
fn shared_worker_new_ffi(
  script_url : JsValue,
  options : JsValue,
) -> SharedWorker = "webapi_SharedWorker" "new"

///|
#cfg(target="wasm-gc")
fn shared_worker_port_ffi(obj : JsValue) -> MessagePort = "webapi_SharedWorker" "get_port"

///|
#cfg(target="wasm-gc")
fn shared_worker_onerror_ffi_wasm(obj : JsValue) -> JsValue = "webapi_SharedWorker" "get_onerror"

///|
#cfg(target="wasm-gc")
fn shared_worker_onerror_ffi(obj : JsValue) -> EventHandler {
  shared_worker_onerror_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn shared_worker_set_onerror_ffi(obj : JsValue, onerror : JsValue) -> Unit = "webapi_SharedWorker" "set_onerror"
