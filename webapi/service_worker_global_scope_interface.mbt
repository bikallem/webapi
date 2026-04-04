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
/// Unchecked downcast — no runtime type check is performed.
/// Prefer `try_into()` for checked downcasts.
#deprecated("Use unsafe_into or try_into instead")
pub fn[T : TServiceWorkerGlobalScope] ServiceWorkerGlobalScope::into(
  self : ServiceWorkerGlobalScope,
) -> T = "%identity"

///|
/// Unchecked downcast — no runtime type check is performed.
/// WARNING: If the underlying JS value is not of type T, this will silently
/// produce a value with incorrect type, leading to undefined behavior.
pub fn[T : TServiceWorkerGlobalScope] ServiceWorkerGlobalScope::unsafe_into(
  self : ServiceWorkerGlobalScope,
) -> T = "%identity"

///|
pub impl HasConstructor for ServiceWorkerGlobalScope with constructor_name() {
  "ServiceWorkerGlobalScope"
}

///|
/// Checked downcast — returns None if the JS value is not an instance of T.
pub fn[T : TServiceWorkerGlobalScope + HasConstructor] ServiceWorkerGlobalScope::try_into(
  self : ServiceWorkerGlobalScope,
) -> T? {
  if js_instanceof(TJsValue::to_js(self), T::constructor_name()) {
    Some(self.unsafe_into())
  } else {
    None
  }
}

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

///|
#cfg(target="js")
extern "js" fn service_worker_global_scope_onnotificationclick_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.onnotificationclick"

///|
#cfg(target="js")
fn service_worker_global_scope_onnotificationclick_ffi(
  obj : JsValue,
) -> EventHandler {
  service_worker_global_scope_onnotificationclick_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn service_worker_global_scope_set_onnotificationclick_ffi(
  obj : JsValue,
  onnotificationclick : JsValue,
) -> Unit = "(obj, onnotificationclick) => { obj.onnotificationclick = onnotificationclick; }"

///|
#cfg(target="js")
extern "js" fn service_worker_global_scope_onnotificationclose_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.onnotificationclose"

///|
#cfg(target="js")
fn service_worker_global_scope_onnotificationclose_ffi(
  obj : JsValue,
) -> EventHandler {
  service_worker_global_scope_onnotificationclose_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn service_worker_global_scope_set_onnotificationclose_ffi(
  obj : JsValue,
  onnotificationclose : JsValue,
) -> Unit = "(obj, onnotificationclose) => { obj.onnotificationclose = onnotificationclose; }"

///|
#cfg(target="js")
extern "js" fn service_worker_global_scope_clients_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.clients"

///|
#cfg(target="js")
fn service_worker_global_scope_clients_ffi(obj : JsValue) -> Clients {
  service_worker_global_scope_clients_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn service_worker_global_scope_registration_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.registration"

///|
#cfg(target="js")
fn service_worker_global_scope_registration_ffi(
  obj : JsValue,
) -> ServiceWorkerRegistration {
  service_worker_global_scope_registration_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn service_worker_global_scope_service_worker_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.serviceWorker"

///|
#cfg(target="js")
fn service_worker_global_scope_service_worker_ffi(
  obj : JsValue,
) -> ServiceWorker {
  service_worker_global_scope_service_worker_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn service_worker_global_scope_skip_waiting_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.skipWaiting()"

///|
#cfg(target="js")
fn service_worker_global_scope_skip_waiting_ffi(
  obj : JsValue,
) -> JsPromise[JsValue] {
  service_worker_global_scope_skip_waiting_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn service_worker_global_scope_oninstall_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.oninstall"

///|
#cfg(target="js")
fn service_worker_global_scope_oninstall_ffi(obj : JsValue) -> EventHandler {
  service_worker_global_scope_oninstall_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn service_worker_global_scope_set_oninstall_ffi(
  obj : JsValue,
  oninstall : JsValue,
) -> Unit = "(obj, oninstall) => { obj.oninstall = oninstall; }"

///|
#cfg(target="js")
extern "js" fn service_worker_global_scope_onactivate_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.onactivate"

///|
#cfg(target="js")
fn service_worker_global_scope_onactivate_ffi(obj : JsValue) -> EventHandler {
  service_worker_global_scope_onactivate_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn service_worker_global_scope_set_onactivate_ffi(
  obj : JsValue,
  onactivate : JsValue,
) -> Unit = "(obj, onactivate) => { obj.onactivate = onactivate; }"

///|
#cfg(target="js")
extern "js" fn service_worker_global_scope_onfetch_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.onfetch"

///|
#cfg(target="js")
fn service_worker_global_scope_onfetch_ffi(obj : JsValue) -> EventHandler {
  service_worker_global_scope_onfetch_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn service_worker_global_scope_set_onfetch_ffi(
  obj : JsValue,
  onfetch : JsValue,
) -> Unit = "(obj, onfetch) => { obj.onfetch = onfetch; }"

///|
#cfg(target="js")
extern "js" fn service_worker_global_scope_onmessage_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.onmessage"

///|
#cfg(target="js")
fn service_worker_global_scope_onmessage_ffi(obj : JsValue) -> EventHandler {
  service_worker_global_scope_onmessage_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn service_worker_global_scope_set_onmessage_ffi(
  obj : JsValue,
  onmessage : JsValue,
) -> Unit = "(obj, onmessage) => { obj.onmessage = onmessage; }"

///|
#cfg(target="js")
extern "js" fn service_worker_global_scope_onmessageerror_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.onmessageerror"

///|
#cfg(target="js")
fn service_worker_global_scope_onmessageerror_ffi(
  obj : JsValue,
) -> EventHandler {
  service_worker_global_scope_onmessageerror_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn service_worker_global_scope_set_onmessageerror_ffi(
  obj : JsValue,
  onmessageerror : JsValue,
) -> Unit = "(obj, onmessageerror) => { obj.onmessageerror = onmessageerror; }"

///|
#cfg(target="wasm-gc")
fn service_worker_global_scope_onnotificationclick_ffi_wasm(
  obj : JsValue,
) -> JsValue = "webapi_ServiceWorkerGlobalScope" "get_onnotificationclick"

///|
#cfg(target="wasm-gc")
fn service_worker_global_scope_onnotificationclick_ffi(
  obj : JsValue,
) -> EventHandler {
  service_worker_global_scope_onnotificationclick_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn service_worker_global_scope_set_onnotificationclick_ffi(
  obj : JsValue,
  onnotificationclick : JsValue,
) -> Unit = "webapi_ServiceWorkerGlobalScope" "set_onnotificationclick"

///|
#cfg(target="wasm-gc")
fn service_worker_global_scope_onnotificationclose_ffi_wasm(
  obj : JsValue,
) -> JsValue = "webapi_ServiceWorkerGlobalScope" "get_onnotificationclose"

///|
#cfg(target="wasm-gc")
fn service_worker_global_scope_onnotificationclose_ffi(
  obj : JsValue,
) -> EventHandler {
  service_worker_global_scope_onnotificationclose_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn service_worker_global_scope_set_onnotificationclose_ffi(
  obj : JsValue,
  onnotificationclose : JsValue,
) -> Unit = "webapi_ServiceWorkerGlobalScope" "set_onnotificationclose"

///|
#cfg(target="wasm-gc")
fn service_worker_global_scope_clients_ffi(obj : JsValue) -> Clients = "webapi_ServiceWorkerGlobalScope" "get_clients"

///|
#cfg(target="wasm-gc")
fn service_worker_global_scope_registration_ffi(
  obj : JsValue,
) -> ServiceWorkerRegistration = "webapi_ServiceWorkerGlobalScope" "get_registration"

///|
#cfg(target="wasm-gc")
fn service_worker_global_scope_service_worker_ffi(
  obj : JsValue,
) -> ServiceWorker = "webapi_ServiceWorkerGlobalScope" "get_serviceWorker"

///|
#cfg(target="wasm-gc")
fn service_worker_global_scope_skip_waiting_ffi_wasm(obj : JsValue) -> JsValue = "webapi_ServiceWorkerGlobalScope" "skipWaiting"

///|
#cfg(target="wasm-gc")
fn service_worker_global_scope_skip_waiting_ffi(
  obj : JsValue,
) -> JsPromise[JsValue] {
  service_worker_global_scope_skip_waiting_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn service_worker_global_scope_oninstall_ffi_wasm(obj : JsValue) -> JsValue = "webapi_ServiceWorkerGlobalScope" "get_oninstall"

///|
#cfg(target="wasm-gc")
fn service_worker_global_scope_oninstall_ffi(obj : JsValue) -> EventHandler {
  service_worker_global_scope_oninstall_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn service_worker_global_scope_set_oninstall_ffi(
  obj : JsValue,
  oninstall : JsValue,
) -> Unit = "webapi_ServiceWorkerGlobalScope" "set_oninstall"

///|
#cfg(target="wasm-gc")
fn service_worker_global_scope_onactivate_ffi_wasm(obj : JsValue) -> JsValue = "webapi_ServiceWorkerGlobalScope" "get_onactivate"

///|
#cfg(target="wasm-gc")
fn service_worker_global_scope_onactivate_ffi(obj : JsValue) -> EventHandler {
  service_worker_global_scope_onactivate_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn service_worker_global_scope_set_onactivate_ffi(
  obj : JsValue,
  onactivate : JsValue,
) -> Unit = "webapi_ServiceWorkerGlobalScope" "set_onactivate"

///|
#cfg(target="wasm-gc")
fn service_worker_global_scope_onfetch_ffi_wasm(obj : JsValue) -> JsValue = "webapi_ServiceWorkerGlobalScope" "get_onfetch"

///|
#cfg(target="wasm-gc")
fn service_worker_global_scope_onfetch_ffi(obj : JsValue) -> EventHandler {
  service_worker_global_scope_onfetch_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn service_worker_global_scope_set_onfetch_ffi(
  obj : JsValue,
  onfetch : JsValue,
) -> Unit = "webapi_ServiceWorkerGlobalScope" "set_onfetch"

///|
#cfg(target="wasm-gc")
fn service_worker_global_scope_onmessage_ffi_wasm(obj : JsValue) -> JsValue = "webapi_ServiceWorkerGlobalScope" "get_onmessage"

///|
#cfg(target="wasm-gc")
fn service_worker_global_scope_onmessage_ffi(obj : JsValue) -> EventHandler {
  service_worker_global_scope_onmessage_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn service_worker_global_scope_set_onmessage_ffi(
  obj : JsValue,
  onmessage : JsValue,
) -> Unit = "webapi_ServiceWorkerGlobalScope" "set_onmessage"

///|
#cfg(target="wasm-gc")
fn service_worker_global_scope_onmessageerror_ffi_wasm(
  obj : JsValue,
) -> JsValue = "webapi_ServiceWorkerGlobalScope" "get_onmessageerror"

///|
#cfg(target="wasm-gc")
fn service_worker_global_scope_onmessageerror_ffi(
  obj : JsValue,
) -> EventHandler {
  service_worker_global_scope_onmessageerror_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn service_worker_global_scope_set_onmessageerror_ffi(
  obj : JsValue,
  onmessageerror : JsValue,
) -> Unit = "webapi_ServiceWorkerGlobalScope" "set_onmessageerror"
