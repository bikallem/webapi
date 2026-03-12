fn service_worker_registration_show_notification_ffi_wasm(obj: JsValue, title: JsValue, options: JsValue) -> JsValue = "webapi_ServiceWorkerRegistration" "showNotification"

///|
fn service_worker_registration_show_notification_ffi(obj: JsValue, title: JsValue, options: JsValue) -> JsPromise[JsValue] {
  service_worker_registration_show_notification_ffi_wasm(obj, title, options).unsafe_cast()
}

fn service_worker_registration_get_notifications_ffi_wasm(obj: JsValue, filter: JsValue) -> JsValue = "webapi_ServiceWorkerRegistration" "getNotifications"

///|
fn service_worker_registration_get_notifications_ffi(obj: JsValue, filter: JsValue) -> JsPromise[Array[Notification]] {
  service_worker_registration_get_notifications_ffi_wasm(obj, filter).unsafe_cast()
}

fn service_worker_registration_installing_ffi(obj: JsValue) -> ServiceWorker = "webapi_ServiceWorkerRegistration" "get_installing"

fn service_worker_registration_waiting_ffi(obj: JsValue) -> ServiceWorker = "webapi_ServiceWorkerRegistration" "get_waiting"

fn service_worker_registration_active_ffi(obj: JsValue) -> ServiceWorker = "webapi_ServiceWorkerRegistration" "get_active"

fn service_worker_registration_navigation_preload_ffi(obj: JsValue) -> NavigationPreloadManager = "webapi_ServiceWorkerRegistration" "get_navigationPreload"

fn service_worker_registration_scope_ffi_wasm(obj: JsValue) -> JsValue = "webapi_ServiceWorkerRegistration" "get_scope"

///|
fn service_worker_registration_scope_ffi(obj: JsValue) -> String {
  jsvalue_to_string(service_worker_registration_scope_ffi_wasm(obj))
}

fn service_worker_registration_update_via_cache_ffi_wasm(obj: JsValue) -> JsValue = "webapi_ServiceWorkerRegistration" "get_updateViaCache"

///|
fn service_worker_registration_update_via_cache_ffi(obj: JsValue) -> ServiceWorkerUpdateViaCache {
  ServiceWorkerUpdateViaCache::from_unchecked(jsvalue_to_string(service_worker_registration_update_via_cache_ffi_wasm(obj)))
}

fn service_worker_registration_update_ffi_wasm(obj: JsValue) -> JsValue = "webapi_ServiceWorkerRegistration" "update"

///|
fn service_worker_registration_update_ffi(obj: JsValue) -> JsPromise[ServiceWorkerRegistration] {
  service_worker_registration_update_ffi_wasm(obj).unsafe_cast()
}

fn service_worker_registration_unregister_ffi_wasm(obj: JsValue) -> JsValue = "webapi_ServiceWorkerRegistration" "unregister"

///|
fn service_worker_registration_unregister_ffi(obj: JsValue) -> JsPromise[Bool] {
  service_worker_registration_unregister_ffi_wasm(obj).unsafe_cast()
}

fn service_worker_registration_onupdatefound_ffi_wasm(obj: JsValue) -> JsValue = "webapi_ServiceWorkerRegistration" "get_onupdatefound"

///|
fn service_worker_registration_onupdatefound_ffi(obj: JsValue) -> EventHandler {
  service_worker_registration_onupdatefound_ffi_wasm(obj).unsafe_cast()
}

fn service_worker_registration_set_onupdatefound_ffi(obj: JsValue, onupdatefound: JsValue) -> Unit = "webapi_ServiceWorkerRegistration" "set_onupdatefound"