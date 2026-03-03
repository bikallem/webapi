// Do not edit. This file is generated.
// MoonBit type: ServiceWorkerContainer
// Specifications: service-workers.idl

///|
/// [ServiceWorkerContainer](https://developer.mozilla.org/en-US/docs/Web/API/ServiceWorkerContainer)
#external
pub type ServiceWorkerContainer

///|
pub impl TJsValue for ServiceWorkerContainer with to_js(
  self : ServiceWorkerContainer,
) -> JsValue = "%identity"

///|
pub impl FromJsAny for ServiceWorkerContainer with from_js_any(value : JsAny) -> ServiceWorkerContainer = "%identity"

///|
pub fn[T : TServiceWorkerContainer] ServiceWorkerContainer::into(
  self : ServiceWorkerContainer,
) -> T = "%identity"

///|
pub impl TServiceWorkerContainer for ServiceWorkerContainer

///|
pub impl TEventTarget for ServiceWorkerContainer

///|
pub(open) trait TServiceWorkerContainerRegisterScriptURL: TJsValue {}

///|
pub impl TServiceWorkerContainerRegisterScriptURL for TrustedScriptURL

///|
pub impl TServiceWorkerContainerRegisterScriptURL for String

///|
pub(open) trait TServiceWorkerContainerGetRegistration: TJsValue {}

///|
pub impl TServiceWorkerContainerGetRegistration for ServiceWorkerRegistration

///|
pub impl TServiceWorkerContainerGetRegistration for JsUndefined

///|
/// [ServiceWorkerContainer](https://developer.mozilla.org/en-US/docs/Web/API/ServiceWorkerContainer) interface.
pub trait TServiceWorkerContainer: TEventTarget {
  controller(self : Self) -> ServiceWorker = _
  ready(self : Self) -> JsPromise[ServiceWorkerRegistration] = _
  register(
    self : Self,
    script_url : &TServiceWorkerContainerRegisterScriptURL,
    options? : RegistrationOptions,
  ) -> JsPromise[ServiceWorkerRegistration] = _
  get_registration(self : Self, client_url? : String) -> JsPromise[
    &TServiceWorkerContainerGetRegistration,
  ] = _
  get_registrations(self : Self) -> JsPromise[Array[ServiceWorkerRegistration]] = _
  start_messages(self : Self) -> Unit = _
  oncontrollerchange(self : Self) -> EventHandler = _
  set_oncontrollerchange(self : Self, oncontrollerchange : (Event) -> JsValue) -> Unit = _
  onmessage(self : Self) -> EventHandler = _
  set_onmessage(self : Self, onmessage : (Event) -> JsValue) -> Unit = _
  onmessageerror(self : Self) -> EventHandler = _
  set_onmessageerror(self : Self, onmessageerror : (Event) -> JsValue) -> Unit = _
}

///|
/// [ServiceWorkerContainer.controller](https://developer.mozilla.org/en-US/docs/Web/API/ServiceWorkerContainer/controller)
impl TServiceWorkerContainer with controller(self : Self) -> ServiceWorker {
  service_worker_container_controller_ffi(TJsValue::to_js(self))
}

///|
/// [ServiceWorkerContainer.ready](https://developer.mozilla.org/en-US/docs/Web/API/ServiceWorkerContainer/ready)
impl TServiceWorkerContainer with ready(self : Self) -> JsPromise[
  ServiceWorkerRegistration,
] {
  service_worker_container_ready_ffi(TJsValue::to_js(self))
}

///|
/// [ServiceWorkerContainer.register](https://developer.mozilla.org/en-US/docs/Web/API/ServiceWorkerContainer/register)
impl TServiceWorkerContainer with register(
  self : Self,
  script_url : &TServiceWorkerContainerRegisterScriptURL,
  options? : RegistrationOptions = RegistrationOptions::empty(),
) -> JsPromise[ServiceWorkerRegistration] {
  service_worker_container_register_ffi(
    TJsValue::to_js(self),
    script_url.to_js(),
    TJsValue::to_js(options),
  )
}

///|
/// [ServiceWorkerContainer.getRegistration](https://developer.mozilla.org/en-US/docs/Web/API/ServiceWorkerContainer/getRegistration)
impl TServiceWorkerContainer with get_registration(
  self : Self,
  client_url? : String = "",
) -> JsPromise[&TServiceWorkerContainerGetRegistration] {
  service_worker_container_get_registration_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(client_url),
  )
}

///|
/// [ServiceWorkerContainer.getRegistrations](https://developer.mozilla.org/en-US/docs/Web/API/ServiceWorkerContainer/getRegistrations)
impl TServiceWorkerContainer with get_registrations(self : Self) -> JsPromise[
  Array[ServiceWorkerRegistration],
] {
  service_worker_container_get_registrations_ffi(TJsValue::to_js(self))
}

///|
/// [ServiceWorkerContainer.startMessages](https://developer.mozilla.org/en-US/docs/Web/API/ServiceWorkerContainer/startMessages)
impl TServiceWorkerContainer with start_messages(self : Self) -> Unit {
  service_worker_container_start_messages_ffi(TJsValue::to_js(self))
}

///|
/// [ServiceWorkerContainer.oncontrollerchange](https://developer.mozilla.org/en-US/docs/Web/API/ServiceWorkerContainer/oncontrollerchange)
impl TServiceWorkerContainer with oncontrollerchange(self : Self) -> EventHandler {
  service_worker_container_oncontrollerchange_ffi(TJsValue::to_js(self))
}

///|
/// [ServiceWorkerContainer.oncontrollerchange](https://developer.mozilla.org/en-US/docs/Web/API/ServiceWorkerContainer/oncontrollerchange)
impl TServiceWorkerContainer with set_oncontrollerchange(
  self : Self,
  oncontrollerchange : (Event) -> JsValue,
) -> Unit {
  service_worker_container_set_oncontrollerchange_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(oncontrollerchange)),
  )
}

///|
/// [ServiceWorkerContainer.onmessage](https://developer.mozilla.org/en-US/docs/Web/API/ServiceWorkerContainer/onmessage)
impl TServiceWorkerContainer with onmessage(self : Self) -> EventHandler {
  service_worker_container_onmessage_ffi(TJsValue::to_js(self))
}

///|
/// [ServiceWorkerContainer.onmessage](https://developer.mozilla.org/en-US/docs/Web/API/ServiceWorkerContainer/onmessage)
impl TServiceWorkerContainer with set_onmessage(
  self : Self,
  onmessage : (Event) -> JsValue,
) -> Unit {
  service_worker_container_set_onmessage_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onmessage)),
  )
}

///|
/// [ServiceWorkerContainer.onmessageerror](https://developer.mozilla.org/en-US/docs/Web/API/ServiceWorkerContainer/onmessageerror)
impl TServiceWorkerContainer with onmessageerror(self : Self) -> EventHandler {
  service_worker_container_onmessageerror_ffi(TJsValue::to_js(self))
}

///|
/// [ServiceWorkerContainer.onmessageerror](https://developer.mozilla.org/en-US/docs/Web/API/ServiceWorkerContainer/onmessageerror)
impl TServiceWorkerContainer with set_onmessageerror(
  self : Self,
  onmessageerror : (Event) -> JsValue,
) -> Unit {
  service_worker_container_set_onmessageerror_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onmessageerror)),
  )
}
