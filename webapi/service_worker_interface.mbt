// Do not edit. This file is generated.
// MoonBit type: ServiceWorker
// Specifications: service-workers.idl

///|
/// [ServiceWorker](https://developer.mozilla.org/en-US/docs/Web/API/ServiceWorker)
#external
pub type ServiceWorker

///|
pub impl TJsValue for ServiceWorker with to_js(self : ServiceWorker) -> JsValue = "%identity"

///|
pub impl FromJsAny for ServiceWorker with from_js_any(value : JsAny) -> ServiceWorker = "%identity"

///|
pub fn[T : TServiceWorker] ServiceWorker::into(self : ServiceWorker) -> T = "%identity"

///|
pub impl TServiceWorker for ServiceWorker

///|
pub impl TEventTarget for ServiceWorker

///|
/// [ServiceWorker](https://developer.mozilla.org/en-US/docs/Web/API/ServiceWorker) interface.
pub trait TServiceWorker: TEventTarget {
  script_url(self : Self) -> String = _
  state(self : Self) -> ServiceWorkerState = _
  post_message(self : Self, message : JsValue, transfer : Array[JsValue]) -> Unit = _
  post_message_with_options(
    self : Self,
    message : JsValue,
    options? : StructuredSerializeOptions,
  ) -> Unit = _
  onstatechange(self : Self) -> EventHandler = _
  set_onstatechange(self : Self, onstatechange : (Event) -> JsValue) -> Unit = _
  onerror(self : Self) -> EventHandler = _
  set_onerror(self : Self, onerror : (Event) -> JsValue) -> Unit = _
}

///|
/// [ServiceWorker.scriptURL](https://developer.mozilla.org/en-US/docs/Web/API/ServiceWorker/scriptURL)
impl TServiceWorker with script_url(self : Self) -> String {
  service_worker_script_url_ffi(TJsValue::to_js(self))
}

///|
/// [ServiceWorker.state](https://developer.mozilla.org/en-US/docs/Web/API/ServiceWorker/state)
impl TServiceWorker with state(self : Self) -> ServiceWorkerState {
  service_worker_state_ffi(TJsValue::to_js(self))
}

///|
/// [ServiceWorker.postMessage](https://developer.mozilla.org/en-US/docs/Web/API/ServiceWorker/postMessage)
impl TServiceWorker with post_message(
  self : Self,
  message : JsValue,
  transfer : Array[JsValue],
) -> Unit {
  service_worker_post_message_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(message),
    TJsValue::to_js(transfer),
  )
}

///|
/// [ServiceWorker.postMessage](https://developer.mozilla.org/en-US/docs/Web/API/ServiceWorker/postMessage)
impl TServiceWorker with post_message_with_options(
  self : Self,
  message : JsValue,
  options? : StructuredSerializeOptions = StructuredSerializeOptions::empty(),
) -> Unit {
  service_worker_post_message_with_options_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(message),
    TJsValue::to_js(options),
  )
}

///|
/// [ServiceWorker.onstatechange](https://developer.mozilla.org/en-US/docs/Web/API/ServiceWorker/onstatechange)
impl TServiceWorker with onstatechange(self : Self) -> EventHandler {
  service_worker_onstatechange_ffi(TJsValue::to_js(self))
}

///|
/// [ServiceWorker.onstatechange](https://developer.mozilla.org/en-US/docs/Web/API/ServiceWorker/onstatechange)
impl TServiceWorker with set_onstatechange(
  self : Self,
  onstatechange : (Event) -> JsValue,
) -> Unit {
  service_worker_set_onstatechange_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onstatechange)),
  )
}

///|
/// [ServiceWorker.onerror](https://developer.mozilla.org/en-US/docs/Web/API/ServiceWorker/onerror)
impl TServiceWorker with onerror(self : Self) -> EventHandler {
  service_worker_onerror_ffi(TJsValue::to_js(self))
}

///|
/// [ServiceWorker.onerror](https://developer.mozilla.org/en-US/docs/Web/API/ServiceWorker/onerror)
impl TServiceWorker with set_onerror(self : Self, onerror : (Event) -> JsValue) -> Unit {
  service_worker_set_onerror_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onerror)),
  )
}
