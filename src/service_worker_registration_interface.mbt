// Do not edit. This file is generated.
// MoonBit type: ServiceWorkerRegistration
// Specifications: notifications.idl, service-workers.idl

///|
/// [ServiceWorkerRegistration](https://developer.mozilla.org/en-US/docs/Web/API/ServiceWorkerRegistration)
#external
pub type ServiceWorkerRegistration

///|
pub impl TJsValue for ServiceWorkerRegistration with to_js(
  self : ServiceWorkerRegistration,
) -> JsValue = "%identity"

///|
pub impl FromJsAny for ServiceWorkerRegistration with from_js_any(value : JsAny) -> ServiceWorkerRegistration = "%identity"

///|
pub fn[T : TServiceWorkerRegistration] ServiceWorkerRegistration::into(
  self : ServiceWorkerRegistration,
) -> T = "%identity"

///|
pub impl TServiceWorkerRegistration for ServiceWorkerRegistration

///|
pub impl TEventTarget for ServiceWorkerRegistration

///|
/// [ServiceWorkerRegistration](https://developer.mozilla.org/en-US/docs/Web/API/ServiceWorkerRegistration) interface.
pub trait TServiceWorkerRegistration: TEventTarget {
  show_notification(self : Self, title : String, options? : NotificationOptions) -> JsPromise[
    JsValue,
  ] = _
  get_notifications(self : Self, filter? : GetNotificationOptions) -> JsPromise[
    Array[Notification],
  ] = _
  installing(self : Self) -> ServiceWorker = _
  waiting(self : Self) -> ServiceWorker = _
  active(self : Self) -> ServiceWorker = _
  navigation_preload(self : Self) -> NavigationPreloadManager = _
  scope(self : Self) -> String = _
  update_via_cache(self : Self) -> ServiceWorkerUpdateViaCache = _
  update(self : Self) -> JsPromise[ServiceWorkerRegistration] = _
  unregister(self : Self) -> JsPromise[Bool] = _
  onupdatefound(self : Self) -> EventHandler = _
  set_onupdatefound(self : Self, onupdatefound : (Event) -> JsValue) -> Unit = _
}

///|
/// [ServiceWorkerRegistration.showNotification](https://developer.mozilla.org/en-US/docs/Web/API/ServiceWorkerRegistration/showNotification)
impl TServiceWorkerRegistration with show_notification(
  self : Self,
  title : String,
  options? : NotificationOptions,
) -> JsPromise[JsValue] {
  service_worker_registration_show_notification_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(title),
    opt_to_js(options),
  )
}

///|
/// [ServiceWorkerRegistration.getNotifications](https://developer.mozilla.org/en-US/docs/Web/API/ServiceWorkerRegistration/getNotifications)
impl TServiceWorkerRegistration with get_notifications(
  self : Self,
  filter? : GetNotificationOptions,
) -> JsPromise[Array[Notification]] {
  service_worker_registration_get_notifications_ffi(
    TJsValue::to_js(self),
    opt_to_js(filter),
  )
}

///|
/// [ServiceWorkerRegistration.installing](https://developer.mozilla.org/en-US/docs/Web/API/ServiceWorkerRegistration/installing)
impl TServiceWorkerRegistration with installing(self : Self) -> ServiceWorker {
  service_worker_registration_installing_ffi(TJsValue::to_js(self))
}

///|
/// [ServiceWorkerRegistration.waiting](https://developer.mozilla.org/en-US/docs/Web/API/ServiceWorkerRegistration/waiting)
impl TServiceWorkerRegistration with waiting(self : Self) -> ServiceWorker {
  service_worker_registration_waiting_ffi(TJsValue::to_js(self))
}

///|
/// [ServiceWorkerRegistration.active](https://developer.mozilla.org/en-US/docs/Web/API/ServiceWorkerRegistration/active)
impl TServiceWorkerRegistration with active(self : Self) -> ServiceWorker {
  service_worker_registration_active_ffi(TJsValue::to_js(self))
}

///|
/// [ServiceWorkerRegistration.navigationPreload](https://developer.mozilla.org/en-US/docs/Web/API/ServiceWorkerRegistration/navigationPreload)
impl TServiceWorkerRegistration with navigation_preload(self : Self) -> NavigationPreloadManager {
  service_worker_registration_navigation_preload_ffi(TJsValue::to_js(self))
}

///|
/// [ServiceWorkerRegistration.scope](https://developer.mozilla.org/en-US/docs/Web/API/ServiceWorkerRegistration/scope)
impl TServiceWorkerRegistration with scope(self : Self) -> String {
  service_worker_registration_scope_ffi(TJsValue::to_js(self))
}

///|
/// [ServiceWorkerRegistration.updateViaCache](https://developer.mozilla.org/en-US/docs/Web/API/ServiceWorkerRegistration/updateViaCache)
impl TServiceWorkerRegistration with update_via_cache(self : Self) -> ServiceWorkerUpdateViaCache {
  service_worker_registration_update_via_cache_ffi(TJsValue::to_js(self))
}

///|
/// [ServiceWorkerRegistration.update](https://developer.mozilla.org/en-US/docs/Web/API/ServiceWorkerRegistration/update)
impl TServiceWorkerRegistration with update(self : Self) -> JsPromise[
  ServiceWorkerRegistration,
] {
  service_worker_registration_update_ffi(TJsValue::to_js(self))
}

///|
/// [ServiceWorkerRegistration.unregister](https://developer.mozilla.org/en-US/docs/Web/API/ServiceWorkerRegistration/unregister)
impl TServiceWorkerRegistration with unregister(self : Self) -> JsPromise[Bool] {
  service_worker_registration_unregister_ffi(TJsValue::to_js(self))
}

///|
/// [ServiceWorkerRegistration.onupdatefound](https://developer.mozilla.org/en-US/docs/Web/API/ServiceWorkerRegistration/onupdatefound)
impl TServiceWorkerRegistration with onupdatefound(self : Self) -> EventHandler {
  service_worker_registration_onupdatefound_ffi(TJsValue::to_js(self))
}

///|
/// [ServiceWorkerRegistration.onupdatefound](https://developer.mozilla.org/en-US/docs/Web/API/ServiceWorkerRegistration/onupdatefound)
impl TServiceWorkerRegistration with set_onupdatefound(
  self : Self,
  onupdatefound : (Event) -> JsValue,
) -> Unit {
  service_worker_registration_set_onupdatefound_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onupdatefound)),
  )
}

///|
#cfg(target="js")
extern "js" fn service_worker_registration_show_notification_ffi_js(
  obj : JsValue,
  title : JsValue,
  options : JsValue,
) -> JsValue = "(obj, title, options) => obj.showNotification(title, options)"

///|
#cfg(target="js")
fn service_worker_registration_show_notification_ffi(
  obj : JsValue,
  title : JsValue,
  options : JsValue,
) -> JsPromise[JsValue] {
  service_worker_registration_show_notification_ffi_js(obj, title, options).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn service_worker_registration_get_notifications_ffi_js(
  obj : JsValue,
  filter : JsValue,
) -> JsValue = "(obj, filter) => obj.getNotifications(filter)"

///|
#cfg(target="js")
fn service_worker_registration_get_notifications_ffi(
  obj : JsValue,
  filter : JsValue,
) -> JsPromise[Array[Notification]] {
  service_worker_registration_get_notifications_ffi_js(obj, filter).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn service_worker_registration_installing_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.installing"

///|
#cfg(target="js")
fn service_worker_registration_installing_ffi(obj : JsValue) -> ServiceWorker {
  service_worker_registration_installing_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn service_worker_registration_waiting_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.waiting"

///|
#cfg(target="js")
fn service_worker_registration_waiting_ffi(obj : JsValue) -> ServiceWorker {
  service_worker_registration_waiting_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn service_worker_registration_active_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.active"

///|
#cfg(target="js")
fn service_worker_registration_active_ffi(obj : JsValue) -> ServiceWorker {
  service_worker_registration_active_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn service_worker_registration_navigation_preload_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.navigationPreload"

///|
#cfg(target="js")
fn service_worker_registration_navigation_preload_ffi(
  obj : JsValue,
) -> NavigationPreloadManager {
  service_worker_registration_navigation_preload_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn service_worker_registration_scope_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.scope"

///|
#cfg(target="js")
fn service_worker_registration_scope_ffi(obj : JsValue) -> String {
  service_worker_registration_scope_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn service_worker_registration_update_via_cache_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.updateViaCache"

///|
#cfg(target="js")
fn service_worker_registration_update_via_cache_ffi(
  obj : JsValue,
) -> ServiceWorkerUpdateViaCache {
  ServiceWorkerUpdateViaCache::from_unchecked(
    service_worker_registration_update_via_cache_ffi_js(obj).unsafe_cast(),
  )
}

///|
#cfg(target="js")
extern "js" fn service_worker_registration_update_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.update()"

///|
#cfg(target="js")
fn service_worker_registration_update_ffi(
  obj : JsValue,
) -> JsPromise[ServiceWorkerRegistration] {
  service_worker_registration_update_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn service_worker_registration_unregister_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.unregister()"

///|
#cfg(target="js")
fn service_worker_registration_unregister_ffi(obj : JsValue) -> JsPromise[Bool] {
  service_worker_registration_unregister_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn service_worker_registration_onupdatefound_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.onupdatefound"

///|
#cfg(target="js")
fn service_worker_registration_onupdatefound_ffi(obj : JsValue) -> EventHandler {
  service_worker_registration_onupdatefound_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn service_worker_registration_set_onupdatefound_ffi(
  obj : JsValue,
  onupdatefound : JsValue,
) -> Unit = "(obj, onupdatefound) => { obj.onupdatefound = onupdatefound; }"

///|
#cfg(target="wasm-gc")
fn service_worker_registration_show_notification_ffi_wasm(
  obj : JsValue,
  title : JsValue,
  options : JsValue,
) -> JsValue = "webapi_ServiceWorkerRegistration" "showNotification"

///|
#cfg(target="wasm-gc")
fn service_worker_registration_show_notification_ffi(
  obj : JsValue,
  title : JsValue,
  options : JsValue,
) -> JsPromise[JsValue] {
  service_worker_registration_show_notification_ffi_wasm(obj, title, options).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn service_worker_registration_get_notifications_ffi_wasm(
  obj : JsValue,
  filter : JsValue,
) -> JsValue = "webapi_ServiceWorkerRegistration" "getNotifications"

///|
#cfg(target="wasm-gc")
fn service_worker_registration_get_notifications_ffi(
  obj : JsValue,
  filter : JsValue,
) -> JsPromise[Array[Notification]] {
  service_worker_registration_get_notifications_ffi_wasm(obj, filter).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn service_worker_registration_installing_ffi(obj : JsValue) -> ServiceWorker = "webapi_ServiceWorkerRegistration" "get_installing"

///|
#cfg(target="wasm-gc")
fn service_worker_registration_waiting_ffi(obj : JsValue) -> ServiceWorker = "webapi_ServiceWorkerRegistration" "get_waiting"

///|
#cfg(target="wasm-gc")
fn service_worker_registration_active_ffi(obj : JsValue) -> ServiceWorker = "webapi_ServiceWorkerRegistration" "get_active"

///|
#cfg(target="wasm-gc")
fn service_worker_registration_navigation_preload_ffi(
  obj : JsValue,
) -> NavigationPreloadManager = "webapi_ServiceWorkerRegistration" "get_navigationPreload"

///|
#cfg(target="wasm-gc")
fn service_worker_registration_scope_ffi_wasm(obj : JsValue) -> JsValue = "webapi_ServiceWorkerRegistration" "get_scope"

///|
#cfg(target="wasm-gc")
fn service_worker_registration_scope_ffi(obj : JsValue) -> String {
  jsvalue_to_string(service_worker_registration_scope_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn service_worker_registration_update_via_cache_ffi_wasm(
  obj : JsValue,
) -> JsValue = "webapi_ServiceWorkerRegistration" "get_updateViaCache"

///|
#cfg(target="wasm-gc")
fn service_worker_registration_update_via_cache_ffi(
  obj : JsValue,
) -> ServiceWorkerUpdateViaCache {
  ServiceWorkerUpdateViaCache::from_unchecked(
    jsvalue_to_string(
      service_worker_registration_update_via_cache_ffi_wasm(obj),
    ),
  )
}

///|
#cfg(target="wasm-gc")
fn service_worker_registration_update_ffi_wasm(obj : JsValue) -> JsValue = "webapi_ServiceWorkerRegistration" "update"

///|
#cfg(target="wasm-gc")
fn service_worker_registration_update_ffi(
  obj : JsValue,
) -> JsPromise[ServiceWorkerRegistration] {
  service_worker_registration_update_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn service_worker_registration_unregister_ffi_wasm(obj : JsValue) -> JsValue = "webapi_ServiceWorkerRegistration" "unregister"

///|
#cfg(target="wasm-gc")
fn service_worker_registration_unregister_ffi(obj : JsValue) -> JsPromise[Bool] {
  service_worker_registration_unregister_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn service_worker_registration_onupdatefound_ffi_wasm(obj : JsValue) -> JsValue = "webapi_ServiceWorkerRegistration" "get_onupdatefound"

///|
#cfg(target="wasm-gc")
fn service_worker_registration_onupdatefound_ffi(obj : JsValue) -> EventHandler {
  service_worker_registration_onupdatefound_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn service_worker_registration_set_onupdatefound_ffi(
  obj : JsValue,
  onupdatefound : JsValue,
) -> Unit = "webapi_ServiceWorkerRegistration" "set_onupdatefound"
