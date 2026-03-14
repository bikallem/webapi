// Do not edit. This file is generated.
// MoonBit type: ServiceWorker
// Specifications: service-workers.idl

/// [ServiceWorker](https://developer.mozilla.org/en-US/docs/Web/API/ServiceWorker)
#external
pub type ServiceWorker

pub impl TJsValue for ServiceWorker with to_js(self: ServiceWorker) -> JsValue = "%identity"

pub impl FromJsAny for ServiceWorker with from_js_any(value : JsAny) -> ServiceWorker = "%identity"

/// Unchecked downcast — no runtime type check is performed.
/// Prefer `try_into()` for checked downcasts.
#deprecated("Use unsafe_into or try_into instead")
pub fn[T: TServiceWorker] ServiceWorker::into(self : ServiceWorker) -> T = "%identity"

/// Unchecked downcast — no runtime type check is performed.
/// WARNING: If the underlying JS value is not of type T, this will silently
/// produce a value with incorrect type, leading to undefined behavior.
pub fn[T: TServiceWorker] ServiceWorker::unsafe_into(self : ServiceWorker) -> T = "%identity"

pub impl HasConstructor for ServiceWorker with constructor_name() { "ServiceWorker" }

/// Checked downcast — returns None if the JS value is not an instance of T.
pub fn[T : TServiceWorker + HasConstructor] ServiceWorker::try_into(self : ServiceWorker) -> T? {
  if js_instanceof(TJsValue::to_js(self), T::constructor_name()) {
    Some(self.unsafe_into())
  } else {
    None
  }
}

pub impl TServiceWorker for ServiceWorker

pub impl TEventTarget for ServiceWorker

/// [ServiceWorker](https://developer.mozilla.org/en-US/docs/Web/API/ServiceWorker) interface.
pub trait TServiceWorker: TEventTarget {
  script_url(self : Self) -> String = _
  state(self : Self) -> ServiceWorkerState = _
  post_message(self : Self, message : JsValue, transfer : Array[JsValue]) -> Unit = _
  post_message_with_options(self : Self, message : JsValue, options? : StructuredSerializeOptions) -> Unit = _
  onstatechange(self : Self) -> EventHandler = _
  set_onstatechange(self : Self, onstatechange : (Event) -> JsValue) -> Unit = _
  onerror(self : Self) -> EventHandler = _
  set_onerror(self : Self, onerror : (Event) -> JsValue) -> Unit = _
}

/// [ServiceWorker.scriptURL](https://developer.mozilla.org/en-US/docs/Web/API/ServiceWorker/scriptURL)
impl TServiceWorker with script_url(self : Self) -> String {
  service_worker_script_url_ffi(TJsValue::to_js(self))
}

/// [ServiceWorker.state](https://developer.mozilla.org/en-US/docs/Web/API/ServiceWorker/state)
impl TServiceWorker with state(self : Self) -> ServiceWorkerState {
  service_worker_state_ffi(TJsValue::to_js(self))
}

/// [ServiceWorker.postMessage](https://developer.mozilla.org/en-US/docs/Web/API/ServiceWorker/postMessage)
impl TServiceWorker with post_message(self : Self, 
message : JsValue, 
transfer : Array[JsValue]) -> Unit {
  service_worker_post_message_ffi(TJsValue::to_js(self), TJsValue::to_js(message), TJsValue::to_js(transfer))
}

/// [ServiceWorker.postMessage](https://developer.mozilla.org/en-US/docs/Web/API/ServiceWorker/postMessage)
impl TServiceWorker with post_message_with_options(self : Self, 
message : JsValue, 
options? : StructuredSerializeOptions) -> Unit {
  service_worker_post_message_with_options_ffi(TJsValue::to_js(self), TJsValue::to_js(message), opt_to_js(options))
}

/// [ServiceWorker.onstatechange](https://developer.mozilla.org/en-US/docs/Web/API/ServiceWorker/onstatechange)
impl TServiceWorker with onstatechange(self : Self) -> EventHandler {
  service_worker_onstatechange_ffi(TJsValue::to_js(self))
}

/// [ServiceWorker.onstatechange](https://developer.mozilla.org/en-US/docs/Web/API/ServiceWorker/onstatechange)
impl TServiceWorker with set_onstatechange(self : Self, 
onstatechange : (Event) -> JsValue) -> Unit {
  service_worker_set_onstatechange_ffi(TJsValue::to_js(self), TJsValue::to_js(event_handler_non_null_ffi(onstatechange)))
}

/// [ServiceWorker.onerror](https://developer.mozilla.org/en-US/docs/Web/API/ServiceWorker/onerror)
impl TServiceWorker with onerror(self : Self) -> EventHandler {
  service_worker_onerror_ffi(TJsValue::to_js(self))
}

/// [ServiceWorker.onerror](https://developer.mozilla.org/en-US/docs/Web/API/ServiceWorker/onerror)
impl TServiceWorker with set_onerror(self : Self, 
onerror : (Event) -> JsValue) -> Unit {
  service_worker_set_onerror_ffi(TJsValue::to_js(self), TJsValue::to_js(event_handler_non_null_ffi(onerror)))
}

#cfg(target="js")
extern "js" fn service_worker_script_url_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.scriptURL"

///|
#cfg(target="js")
fn service_worker_script_url_ffi(obj: JsValue) -> String {
  service_worker_script_url_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn service_worker_state_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.state"

///|
#cfg(target="js")
fn service_worker_state_ffi(obj: JsValue) -> ServiceWorkerState {
  ServiceWorkerState::from_unchecked(service_worker_state_ffi_js(obj).unsafe_cast())
}

#cfg(target="js")
extern "js" fn service_worker_post_message_ffi(obj: JsValue, message: JsValue, transfer: JsValue) -> Unit = "(obj, message, transfer) => obj.postMessage(message, transfer)"

#cfg(target="js")
extern "js" fn service_worker_post_message_with_options_ffi(obj: JsValue, message: JsValue, options: JsValue) -> Unit = "(obj, message, options) => obj.postMessage(message, options)"

#cfg(target="js")
extern "js" fn service_worker_onstatechange_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.onstatechange"

///|
#cfg(target="js")
fn service_worker_onstatechange_ffi(obj: JsValue) -> EventHandler {
  service_worker_onstatechange_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn service_worker_set_onstatechange_ffi(obj: JsValue, onstatechange: JsValue) -> Unit = "(obj, onstatechange) => { obj.onstatechange = onstatechange; }"

#cfg(target="js")
extern "js" fn service_worker_onerror_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.onerror"

///|
#cfg(target="js")
fn service_worker_onerror_ffi(obj: JsValue) -> EventHandler {
  service_worker_onerror_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn service_worker_set_onerror_ffi(obj: JsValue, onerror: JsValue) -> Unit = "(obj, onerror) => { obj.onerror = onerror; }"

#cfg(target="wasm-gc")
fn service_worker_script_url_ffi_wasm(obj: JsValue) -> JsValue = "webapi_ServiceWorker" "get_scriptURL"

///|
#cfg(target="wasm-gc")
fn service_worker_script_url_ffi(obj: JsValue) -> String {
  jsvalue_to_string(service_worker_script_url_ffi_wasm(obj))
}

#cfg(target="wasm-gc")
fn service_worker_state_ffi_wasm(obj: JsValue) -> JsValue = "webapi_ServiceWorker" "get_state"

///|
#cfg(target="wasm-gc")
fn service_worker_state_ffi(obj: JsValue) -> ServiceWorkerState {
  ServiceWorkerState::from_unchecked(jsvalue_to_string(service_worker_state_ffi_wasm(obj)))
}

#cfg(target="wasm-gc")
fn service_worker_post_message_ffi(obj: JsValue, message: JsValue, transfer: JsValue) -> Unit = "webapi_ServiceWorker" "postMessage"

#cfg(target="wasm-gc")
fn service_worker_post_message_with_options_ffi(obj: JsValue, message: JsValue, options: JsValue) -> Unit = "webapi_ServiceWorker" "post_message_with_options"

#cfg(target="wasm-gc")
fn service_worker_onstatechange_ffi_wasm(obj: JsValue) -> JsValue = "webapi_ServiceWorker" "get_onstatechange"

///|
#cfg(target="wasm-gc")
fn service_worker_onstatechange_ffi(obj: JsValue) -> EventHandler {
  service_worker_onstatechange_ffi_wasm(obj).unsafe_cast()
}

#cfg(target="wasm-gc")
fn service_worker_set_onstatechange_ffi(obj: JsValue, onstatechange: JsValue) -> Unit = "webapi_ServiceWorker" "set_onstatechange"

#cfg(target="wasm-gc")
fn service_worker_onerror_ffi_wasm(obj: JsValue) -> JsValue = "webapi_ServiceWorker" "get_onerror"

///|
#cfg(target="wasm-gc")
fn service_worker_onerror_ffi(obj: JsValue) -> EventHandler {
  service_worker_onerror_ffi_wasm(obj).unsafe_cast()
}

#cfg(target="wasm-gc")
fn service_worker_set_onerror_ffi(obj: JsValue, onerror: JsValue) -> Unit = "webapi_ServiceWorker" "set_onerror"