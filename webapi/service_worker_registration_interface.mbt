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
