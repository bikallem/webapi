// Do not edit. This file is generated.
// MoonBit type: ServiceWorkerGlobalScope
// Specifications: notifications.idl, service-workers.idl

///|
/// [ServiceWorkerGlobalScope](https://developer.mozilla.org/en-US/docs/Web/API/ServiceWorkerGlobalScope)
#external
pub type ServiceWorkerGlobalScope

///|
pub impl TJsValue for ServiceWorkerGlobalScope with to_js(
  self : ServiceWorkerGlobalScope,
) -> JsValue = "%identity"

///|
pub impl FromJsAny for ServiceWorkerGlobalScope with from_js_any(value : JsAny) -> ServiceWorkerGlobalScope = "%identity"

///|
pub fn[T : TServiceWorkerGlobalScope] ServiceWorkerGlobalScope::into(
  self : ServiceWorkerGlobalScope,
) -> T = "%identity"

///|
pub impl TServiceWorkerGlobalScope for ServiceWorkerGlobalScope

///|
pub impl TWorkerGlobalScope for ServiceWorkerGlobalScope

///|
pub impl TEventTarget for ServiceWorkerGlobalScope

///|
/// [ServiceWorkerGlobalScope](https://developer.mozilla.org/en-US/docs/Web/API/ServiceWorkerGlobalScope) interface.
pub trait TServiceWorkerGlobalScope: TWorkerGlobalScope {
  onnotificationclick(self : Self) -> EventHandler = _
  set_onnotificationclick(self : Self, onnotificationclick : (Event) -> JsValue) -> Unit = _
  onnotificationclose(self : Self) -> EventHandler = _
  set_onnotificationclose(self : Self, onnotificationclose : (Event) -> JsValue) -> Unit = _
  clients(self : Self) -> Clients = _
  registration(self : Self) -> ServiceWorkerRegistration = _
  service_worker(self : Self) -> ServiceWorker = _
  skip_waiting(self : Self) -> JsPromise[JsValue] = _
  oninstall(self : Self) -> EventHandler = _
  set_oninstall(self : Self, oninstall : (Event) -> JsValue) -> Unit = _
  onactivate(self : Self) -> EventHandler = _
  set_onactivate(self : Self, onactivate : (Event) -> JsValue) -> Unit = _
  onfetch(self : Self) -> EventHandler = _
  set_onfetch(self : Self, onfetch : (Event) -> JsValue) -> Unit = _
  onmessage(self : Self) -> EventHandler = _
  set_onmessage(self : Self, onmessage : (Event) -> JsValue) -> Unit = _
  onmessageerror(self : Self) -> EventHandler = _
  set_onmessageerror(self : Self, onmessageerror : (Event) -> JsValue) -> Unit = _
}

///|
/// [ServiceWorkerGlobalScope.onnotificationclick](https://developer.mozilla.org/en-US/docs/Web/API/ServiceWorkerGlobalScope/onnotificationclick)
impl TServiceWorkerGlobalScope with onnotificationclick(self : Self) -> EventHandler {
  service_worker_global_scope_onnotificationclick_ffi(TJsValue::to_js(self))
}

///|
/// [ServiceWorkerGlobalScope.onnotificationclick](https://developer.mozilla.org/en-US/docs/Web/API/ServiceWorkerGlobalScope/onnotificationclick)
impl TServiceWorkerGlobalScope with set_onnotificationclick(
  self : Self,
  onnotificationclick : (Event) -> JsValue,
) -> Unit {
  service_worker_global_scope_set_onnotificationclick_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onnotificationclick)),
  )
}

///|
/// [ServiceWorkerGlobalScope.onnotificationclose](https://developer.mozilla.org/en-US/docs/Web/API/ServiceWorkerGlobalScope/onnotificationclose)
impl TServiceWorkerGlobalScope with onnotificationclose(self : Self) -> EventHandler {
  service_worker_global_scope_onnotificationclose_ffi(TJsValue::to_js(self))
}

///|
/// [ServiceWorkerGlobalScope.onnotificationclose](https://developer.mozilla.org/en-US/docs/Web/API/ServiceWorkerGlobalScope/onnotificationclose)
impl TServiceWorkerGlobalScope with set_onnotificationclose(
  self : Self,
  onnotificationclose : (Event) -> JsValue,
) -> Unit {
  service_worker_global_scope_set_onnotificationclose_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onnotificationclose)),
  )
}

///|
/// [ServiceWorkerGlobalScope.clients](https://developer.mozilla.org/en-US/docs/Web/API/ServiceWorkerGlobalScope/clients)
impl TServiceWorkerGlobalScope with clients(self : Self) -> Clients {
  service_worker_global_scope_clients_ffi(TJsValue::to_js(self))
}

///|
/// [ServiceWorkerGlobalScope.registration](https://developer.mozilla.org/en-US/docs/Web/API/ServiceWorkerGlobalScope/registration)
impl TServiceWorkerGlobalScope with registration(self : Self) -> ServiceWorkerRegistration {
  service_worker_global_scope_registration_ffi(TJsValue::to_js(self))
}

///|
/// [ServiceWorkerGlobalScope.serviceWorker](https://developer.mozilla.org/en-US/docs/Web/API/ServiceWorkerGlobalScope/serviceWorker)
impl TServiceWorkerGlobalScope with service_worker(self : Self) -> ServiceWorker {
  service_worker_global_scope_service_worker_ffi(TJsValue::to_js(self))
}

///|
/// [ServiceWorkerGlobalScope.skipWaiting](https://developer.mozilla.org/en-US/docs/Web/API/ServiceWorkerGlobalScope/skipWaiting)
impl TServiceWorkerGlobalScope with skip_waiting(self : Self) -> JsPromise[
  JsValue,
] {
  service_worker_global_scope_skip_waiting_ffi(TJsValue::to_js(self))
}

///|
/// [ServiceWorkerGlobalScope.oninstall](https://developer.mozilla.org/en-US/docs/Web/API/ServiceWorkerGlobalScope/oninstall)
impl TServiceWorkerGlobalScope with oninstall(self : Self) -> EventHandler {
  service_worker_global_scope_oninstall_ffi(TJsValue::to_js(self))
}

///|
/// [ServiceWorkerGlobalScope.oninstall](https://developer.mozilla.org/en-US/docs/Web/API/ServiceWorkerGlobalScope/oninstall)
impl TServiceWorkerGlobalScope with set_oninstall(
  self : Self,
  oninstall : (Event) -> JsValue,
) -> Unit {
  service_worker_global_scope_set_oninstall_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(oninstall)),
  )
}

///|
/// [ServiceWorkerGlobalScope.onactivate](https://developer.mozilla.org/en-US/docs/Web/API/ServiceWorkerGlobalScope/onactivate)
impl TServiceWorkerGlobalScope with onactivate(self : Self) -> EventHandler {
  service_worker_global_scope_onactivate_ffi(TJsValue::to_js(self))
}

///|
/// [ServiceWorkerGlobalScope.onactivate](https://developer.mozilla.org/en-US/docs/Web/API/ServiceWorkerGlobalScope/onactivate)
impl TServiceWorkerGlobalScope with set_onactivate(
  self : Self,
  onactivate : (Event) -> JsValue,
) -> Unit {
  service_worker_global_scope_set_onactivate_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onactivate)),
  )
}

///|
/// [ServiceWorkerGlobalScope.onfetch](https://developer.mozilla.org/en-US/docs/Web/API/ServiceWorkerGlobalScope/onfetch)
impl TServiceWorkerGlobalScope with onfetch(self : Self) -> EventHandler {
  service_worker_global_scope_onfetch_ffi(TJsValue::to_js(self))
}

///|
/// [ServiceWorkerGlobalScope.onfetch](https://developer.mozilla.org/en-US/docs/Web/API/ServiceWorkerGlobalScope/onfetch)
impl TServiceWorkerGlobalScope with set_onfetch(
  self : Self,
  onfetch : (Event) -> JsValue,
) -> Unit {
  service_worker_global_scope_set_onfetch_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onfetch)),
  )
}

///|
/// [ServiceWorkerGlobalScope.onmessage](https://developer.mozilla.org/en-US/docs/Web/API/ServiceWorkerGlobalScope/onmessage)
impl TServiceWorkerGlobalScope with onmessage(self : Self) -> EventHandler {
  service_worker_global_scope_onmessage_ffi(TJsValue::to_js(self))
}

///|
/// [ServiceWorkerGlobalScope.onmessage](https://developer.mozilla.org/en-US/docs/Web/API/ServiceWorkerGlobalScope/onmessage)
impl TServiceWorkerGlobalScope with set_onmessage(
  self : Self,
  onmessage : (Event) -> JsValue,
) -> Unit {
  service_worker_global_scope_set_onmessage_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onmessage)),
  )
}

///|
/// [ServiceWorkerGlobalScope.onmessageerror](https://developer.mozilla.org/en-US/docs/Web/API/ServiceWorkerGlobalScope/onmessageerror)
impl TServiceWorkerGlobalScope with onmessageerror(self : Self) -> EventHandler {
  service_worker_global_scope_onmessageerror_ffi(TJsValue::to_js(self))
}

///|
/// [ServiceWorkerGlobalScope.onmessageerror](https://developer.mozilla.org/en-US/docs/Web/API/ServiceWorkerGlobalScope/onmessageerror)
impl TServiceWorkerGlobalScope with set_onmessageerror(
  self : Self,
  onmessageerror : (Event) -> JsValue,
) -> Unit {
  service_worker_global_scope_set_onmessageerror_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onmessageerror)),
  )
}
