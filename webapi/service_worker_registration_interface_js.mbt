extern "js" fn service_worker_registration_show_notification_ffi_js(obj: JsValue, title: JsValue, options: JsValue) -> JsValue = "(obj, title, options) => obj.showNotification(title, options)"

///|
fn service_worker_registration_show_notification_ffi(obj: JsValue, title: JsValue, options: JsValue) -> JsPromise[JsValue] {
  service_worker_registration_show_notification_ffi_js(obj, title, options).unsafe_cast()
}

extern "js" fn service_worker_registration_get_notifications_ffi_js(obj: JsValue, filter: JsValue) -> JsValue = "(obj, filter) => obj.getNotifications(filter)"

///|
fn service_worker_registration_get_notifications_ffi(obj: JsValue, filter: JsValue) -> JsPromise[Array[Notification]] {
  service_worker_registration_get_notifications_ffi_js(obj, filter).unsafe_cast()
}

extern "js" fn service_worker_registration_installing_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.installing"

///|
fn service_worker_registration_installing_ffi(obj: JsValue) -> ServiceWorker {
  service_worker_registration_installing_ffi_js(obj).unsafe_cast()
}

extern "js" fn service_worker_registration_waiting_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.waiting"

///|
fn service_worker_registration_waiting_ffi(obj: JsValue) -> ServiceWorker {
  service_worker_registration_waiting_ffi_js(obj).unsafe_cast()
}

extern "js" fn service_worker_registration_active_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.active"

///|
fn service_worker_registration_active_ffi(obj: JsValue) -> ServiceWorker {
  service_worker_registration_active_ffi_js(obj).unsafe_cast()
}

extern "js" fn service_worker_registration_navigation_preload_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.navigationPreload"

///|
fn service_worker_registration_navigation_preload_ffi(obj: JsValue) -> NavigationPreloadManager {
  service_worker_registration_navigation_preload_ffi_js(obj).unsafe_cast()
}

extern "js" fn service_worker_registration_scope_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.scope"

///|
fn service_worker_registration_scope_ffi(obj: JsValue) -> String {
  service_worker_registration_scope_ffi_js(obj).unsafe_cast()
}

extern "js" fn service_worker_registration_update_via_cache_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.updateViaCache"

///|
fn service_worker_registration_update_via_cache_ffi(obj: JsValue) -> ServiceWorkerUpdateViaCache {
  ServiceWorkerUpdateViaCache::from_unchecked(service_worker_registration_update_via_cache_ffi_js(obj).unsafe_cast())
}

extern "js" fn service_worker_registration_update_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.update()"

///|
fn service_worker_registration_update_ffi(obj: JsValue) -> JsPromise[ServiceWorkerRegistration] {
  service_worker_registration_update_ffi_js(obj).unsafe_cast()
}

extern "js" fn service_worker_registration_unregister_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.unregister()"

///|
fn service_worker_registration_unregister_ffi(obj: JsValue) -> JsPromise[Bool] {
  service_worker_registration_unregister_ffi_js(obj).unsafe_cast()
}

extern "js" fn service_worker_registration_onupdatefound_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.onupdatefound"

///|
fn service_worker_registration_onupdatefound_ffi(obj: JsValue) -> EventHandler {
  service_worker_registration_onupdatefound_ffi_js(obj).unsafe_cast()
}

extern "js" fn service_worker_registration_set_onupdatefound_ffi(obj: JsValue, onupdatefound: JsValue) -> Unit = "(obj, onupdatefound) => { obj.onupdatefound = onupdatefound; }"