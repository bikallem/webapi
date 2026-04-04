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
/// Unchecked downcast — no runtime type check is performed.
/// Prefer `try_into()` for checked downcasts.
#deprecated("Use unsafe_into or try_into instead")
pub fn[T : TServiceWorkerContainer] ServiceWorkerContainer::into(
  self : ServiceWorkerContainer,
) -> T = "%identity"

///|
/// Unchecked downcast — no runtime type check is performed.
/// WARNING: If the underlying JS value is not of type T, this will silently
/// produce a value with incorrect type, leading to undefined behavior.
pub fn[T : TServiceWorkerContainer] ServiceWorkerContainer::unsafe_into(
  self : ServiceWorkerContainer,
) -> T = "%identity"

///|
pub impl HasConstructor for ServiceWorkerContainer with constructor_name() {
  "ServiceWorkerContainer"
}

///|
/// Checked downcast — returns None if the JS value is not an instance of T.
pub fn[T : TServiceWorkerContainer + HasConstructor] ServiceWorkerContainer::try_into(
  self : ServiceWorkerContainer,
) -> T? {
  if js_instanceof(TJsValue::to_js(self), T::constructor_name()) {
    Some(self.unsafe_into())
  } else {
    None
  }
}

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
  options? : RegistrationOptions,
) -> JsPromise[ServiceWorkerRegistration] {
  service_worker_container_register_ffi(
    TJsValue::to_js(self),
    script_url.to_js(),
    opt_to_js(options),
  )
}

///|
/// [ServiceWorkerContainer.getRegistration](https://developer.mozilla.org/en-US/docs/Web/API/ServiceWorkerContainer/getRegistration)
impl TServiceWorkerContainer with get_registration(
  self : Self,
  client_url? : String,
) -> JsPromise[&TServiceWorkerContainerGetRegistration] {
  service_worker_container_get_registration_ffi(
    TJsValue::to_js(self),
    opt_to_js(client_url),
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

///|
#cfg(target="js")
extern "js" fn service_worker_container_controller_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.controller"

///|
#cfg(target="js")
fn service_worker_container_controller_ffi(obj : JsValue) -> ServiceWorker {
  service_worker_container_controller_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn service_worker_container_ready_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.ready"

///|
#cfg(target="js")
fn service_worker_container_ready_ffi(
  obj : JsValue,
) -> JsPromise[ServiceWorkerRegistration] {
  service_worker_container_ready_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn service_worker_container_register_ffi_js(
  obj : JsValue,
  script_url : JsValue,
  options : JsValue,
) -> JsValue = "(obj, script_url, options) => obj.register(script_url, options)"

///|
#cfg(target="js")
fn service_worker_container_register_ffi(
  obj : JsValue,
  script_url : JsValue,
  options : JsValue,
) -> JsPromise[ServiceWorkerRegistration] {
  service_worker_container_register_ffi_js(obj, script_url, options).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn service_worker_container_get_registration_ffi_js(
  obj : JsValue,
  client_url : JsValue,
) -> JsValue = "(obj, client_url) => obj.getRegistration(client_url)"

///|
#cfg(target="js")
fn service_worker_container_get_registration_ffi(
  obj : JsValue,
  client_url : JsValue,
) -> JsPromise[&TServiceWorkerContainerGetRegistration] {
  service_worker_container_get_registration_ffi_js(obj, client_url).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn service_worker_container_get_registrations_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.getRegistrations()"

///|
#cfg(target="js")
fn service_worker_container_get_registrations_ffi(
  obj : JsValue,
) -> JsPromise[Array[ServiceWorkerRegistration]] {
  service_worker_container_get_registrations_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn service_worker_container_start_messages_ffi(
  obj : JsValue,
) -> Unit = "(obj) => obj.startMessages()"

///|
#cfg(target="js")
extern "js" fn service_worker_container_oncontrollerchange_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.oncontrollerchange"

///|
#cfg(target="js")
fn service_worker_container_oncontrollerchange_ffi(
  obj : JsValue,
) -> EventHandler {
  service_worker_container_oncontrollerchange_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn service_worker_container_set_oncontrollerchange_ffi(
  obj : JsValue,
  oncontrollerchange : JsValue,
) -> Unit = "(obj, oncontrollerchange) => { obj.oncontrollerchange = oncontrollerchange; }"

///|
#cfg(target="js")
extern "js" fn service_worker_container_onmessage_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.onmessage"

///|
#cfg(target="js")
fn service_worker_container_onmessage_ffi(obj : JsValue) -> EventHandler {
  service_worker_container_onmessage_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn service_worker_container_set_onmessage_ffi(
  obj : JsValue,
  onmessage : JsValue,
) -> Unit = "(obj, onmessage) => { obj.onmessage = onmessage; }"

///|
#cfg(target="js")
extern "js" fn service_worker_container_onmessageerror_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.onmessageerror"

///|
#cfg(target="js")
fn service_worker_container_onmessageerror_ffi(obj : JsValue) -> EventHandler {
  service_worker_container_onmessageerror_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn service_worker_container_set_onmessageerror_ffi(
  obj : JsValue,
  onmessageerror : JsValue,
) -> Unit = "(obj, onmessageerror) => { obj.onmessageerror = onmessageerror; }"

///|
#cfg(target="wasm-gc")
fn service_worker_container_controller_ffi(obj : JsValue) -> ServiceWorker = "webapi_ServiceWorkerContainer" "get_controller"

///|
#cfg(target="wasm-gc")
fn service_worker_container_ready_ffi_wasm(obj : JsValue) -> JsValue = "webapi_ServiceWorkerContainer" "get_ready"

///|
#cfg(target="wasm-gc")
fn service_worker_container_ready_ffi(
  obj : JsValue,
) -> JsPromise[ServiceWorkerRegistration] {
  service_worker_container_ready_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn service_worker_container_register_ffi_wasm(
  obj : JsValue,
  script_url : JsValue,
  options : JsValue,
) -> JsValue = "webapi_ServiceWorkerContainer" "register"

///|
#cfg(target="wasm-gc")
fn service_worker_container_register_ffi(
  obj : JsValue,
  script_url : JsValue,
  options : JsValue,
) -> JsPromise[ServiceWorkerRegistration] {
  service_worker_container_register_ffi_wasm(obj, script_url, options).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn service_worker_container_get_registration_ffi_wasm(
  obj : JsValue,
  client_url : JsValue,
) -> JsValue = "webapi_ServiceWorkerContainer" "getRegistration"

///|
#cfg(target="wasm-gc")
fn service_worker_container_get_registration_ffi(
  obj : JsValue,
  client_url : JsValue,
) -> JsPromise[&TServiceWorkerContainerGetRegistration] {
  service_worker_container_get_registration_ffi_wasm(obj, client_url).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn service_worker_container_get_registrations_ffi_wasm(
  obj : JsValue,
) -> JsValue = "webapi_ServiceWorkerContainer" "getRegistrations"

///|
#cfg(target="wasm-gc")
fn service_worker_container_get_registrations_ffi(
  obj : JsValue,
) -> JsPromise[Array[ServiceWorkerRegistration]] {
  service_worker_container_get_registrations_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn service_worker_container_start_messages_ffi(obj : JsValue) -> Unit = "webapi_ServiceWorkerContainer" "startMessages"

///|
#cfg(target="wasm-gc")
fn service_worker_container_oncontrollerchange_ffi_wasm(
  obj : JsValue,
) -> JsValue = "webapi_ServiceWorkerContainer" "get_oncontrollerchange"

///|
#cfg(target="wasm-gc")
fn service_worker_container_oncontrollerchange_ffi(
  obj : JsValue,
) -> EventHandler {
  service_worker_container_oncontrollerchange_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn service_worker_container_set_oncontrollerchange_ffi(
  obj : JsValue,
  oncontrollerchange : JsValue,
) -> Unit = "webapi_ServiceWorkerContainer" "set_oncontrollerchange"

///|
#cfg(target="wasm-gc")
fn service_worker_container_onmessage_ffi_wasm(obj : JsValue) -> JsValue = "webapi_ServiceWorkerContainer" "get_onmessage"

///|
#cfg(target="wasm-gc")
fn service_worker_container_onmessage_ffi(obj : JsValue) -> EventHandler {
  service_worker_container_onmessage_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn service_worker_container_set_onmessage_ffi(
  obj : JsValue,
  onmessage : JsValue,
) -> Unit = "webapi_ServiceWorkerContainer" "set_onmessage"

///|
#cfg(target="wasm-gc")
fn service_worker_container_onmessageerror_ffi_wasm(obj : JsValue) -> JsValue = "webapi_ServiceWorkerContainer" "get_onmessageerror"

///|
#cfg(target="wasm-gc")
fn service_worker_container_onmessageerror_ffi(obj : JsValue) -> EventHandler {
  service_worker_container_onmessageerror_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn service_worker_container_set_onmessageerror_ffi(
  obj : JsValue,
  onmessageerror : JsValue,
) -> Unit = "webapi_ServiceWorkerContainer" "set_onmessageerror"
