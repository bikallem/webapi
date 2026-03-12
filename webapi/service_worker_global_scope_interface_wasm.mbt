fn service_worker_global_scope_onnotificationclick_ffi_wasm(obj: JsValue) -> JsValue = "webapi_ServiceWorkerGlobalScope" "get_onnotificationclick"

///|
fn service_worker_global_scope_onnotificationclick_ffi(obj: JsValue) -> EventHandler {
  service_worker_global_scope_onnotificationclick_ffi_wasm(obj).unsafe_cast()
}

fn service_worker_global_scope_set_onnotificationclick_ffi(obj: JsValue, onnotificationclick: JsValue) -> Unit = "webapi_ServiceWorkerGlobalScope" "set_onnotificationclick"

fn service_worker_global_scope_onnotificationclose_ffi_wasm(obj: JsValue) -> JsValue = "webapi_ServiceWorkerGlobalScope" "get_onnotificationclose"

///|
fn service_worker_global_scope_onnotificationclose_ffi(obj: JsValue) -> EventHandler {
  service_worker_global_scope_onnotificationclose_ffi_wasm(obj).unsafe_cast()
}

fn service_worker_global_scope_set_onnotificationclose_ffi(obj: JsValue, onnotificationclose: JsValue) -> Unit = "webapi_ServiceWorkerGlobalScope" "set_onnotificationclose"

fn service_worker_global_scope_clients_ffi(obj: JsValue) -> Clients = "webapi_ServiceWorkerGlobalScope" "get_clients"

fn service_worker_global_scope_registration_ffi(obj: JsValue) -> ServiceWorkerRegistration = "webapi_ServiceWorkerGlobalScope" "get_registration"

fn service_worker_global_scope_service_worker_ffi(obj: JsValue) -> ServiceWorker = "webapi_ServiceWorkerGlobalScope" "get_serviceWorker"

fn service_worker_global_scope_skip_waiting_ffi_wasm(obj: JsValue) -> JsValue = "webapi_ServiceWorkerGlobalScope" "skipWaiting"

///|
fn service_worker_global_scope_skip_waiting_ffi(obj: JsValue) -> JsPromise[JsValue] {
  service_worker_global_scope_skip_waiting_ffi_wasm(obj).unsafe_cast()
}

fn service_worker_global_scope_oninstall_ffi_wasm(obj: JsValue) -> JsValue = "webapi_ServiceWorkerGlobalScope" "get_oninstall"

///|
fn service_worker_global_scope_oninstall_ffi(obj: JsValue) -> EventHandler {
  service_worker_global_scope_oninstall_ffi_wasm(obj).unsafe_cast()
}

fn service_worker_global_scope_set_oninstall_ffi(obj: JsValue, oninstall: JsValue) -> Unit = "webapi_ServiceWorkerGlobalScope" "set_oninstall"

fn service_worker_global_scope_onactivate_ffi_wasm(obj: JsValue) -> JsValue = "webapi_ServiceWorkerGlobalScope" "get_onactivate"

///|
fn service_worker_global_scope_onactivate_ffi(obj: JsValue) -> EventHandler {
  service_worker_global_scope_onactivate_ffi_wasm(obj).unsafe_cast()
}

fn service_worker_global_scope_set_onactivate_ffi(obj: JsValue, onactivate: JsValue) -> Unit = "webapi_ServiceWorkerGlobalScope" "set_onactivate"

fn service_worker_global_scope_onfetch_ffi_wasm(obj: JsValue) -> JsValue = "webapi_ServiceWorkerGlobalScope" "get_onfetch"

///|
fn service_worker_global_scope_onfetch_ffi(obj: JsValue) -> EventHandler {
  service_worker_global_scope_onfetch_ffi_wasm(obj).unsafe_cast()
}

fn service_worker_global_scope_set_onfetch_ffi(obj: JsValue, onfetch: JsValue) -> Unit = "webapi_ServiceWorkerGlobalScope" "set_onfetch"

fn service_worker_global_scope_onmessage_ffi_wasm(obj: JsValue) -> JsValue = "webapi_ServiceWorkerGlobalScope" "get_onmessage"

///|
fn service_worker_global_scope_onmessage_ffi(obj: JsValue) -> EventHandler {
  service_worker_global_scope_onmessage_ffi_wasm(obj).unsafe_cast()
}

fn service_worker_global_scope_set_onmessage_ffi(obj: JsValue, onmessage: JsValue) -> Unit = "webapi_ServiceWorkerGlobalScope" "set_onmessage"

fn service_worker_global_scope_onmessageerror_ffi_wasm(obj: JsValue) -> JsValue = "webapi_ServiceWorkerGlobalScope" "get_onmessageerror"

///|
fn service_worker_global_scope_onmessageerror_ffi(obj: JsValue) -> EventHandler {
  service_worker_global_scope_onmessageerror_ffi_wasm(obj).unsafe_cast()
}

fn service_worker_global_scope_set_onmessageerror_ffi(obj: JsValue, onmessageerror: JsValue) -> Unit = "webapi_ServiceWorkerGlobalScope" "set_onmessageerror"