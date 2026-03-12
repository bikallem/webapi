///|
fn service_worker_container_controller_ffi(obj : JsValue) -> ServiceWorker = "webapi_ServiceWorkerContainer" "get_controller"

///|
fn service_worker_container_ready_ffi_wasm(obj : JsValue) -> JsValue = "webapi_ServiceWorkerContainer" "get_ready"

///|
fn service_worker_container_ready_ffi(
  obj : JsValue,
) -> JsPromise[ServiceWorkerRegistration] {
  service_worker_container_ready_ffi_wasm(obj).unsafe_cast()
}

///|
fn service_worker_container_register_ffi_wasm(
  obj : JsValue,
  script_url : JsValue,
  options : JsValue,
) -> JsValue = "webapi_ServiceWorkerContainer" "register"

///|
fn service_worker_container_register_ffi(
  obj : JsValue,
  script_url : JsValue,
  options : JsValue,
) -> JsPromise[ServiceWorkerRegistration] {
  service_worker_container_register_ffi_wasm(obj, script_url, options).unsafe_cast()
}

///|
fn service_worker_container_get_registration_ffi_wasm(
  obj : JsValue,
  client_url : JsValue,
) -> JsValue = "webapi_ServiceWorkerContainer" "getRegistration"

///|
fn service_worker_container_get_registration_ffi(
  obj : JsValue,
  client_url : JsValue,
) -> JsPromise[&TServiceWorkerContainerGetRegistration] {
  service_worker_container_get_registration_ffi_wasm(obj, client_url).unsafe_cast()
}

///|
fn service_worker_container_get_registrations_ffi_wasm(
  obj : JsValue,
) -> JsValue = "webapi_ServiceWorkerContainer" "getRegistrations"

///|
fn service_worker_container_get_registrations_ffi(
  obj : JsValue,
) -> JsPromise[Array[ServiceWorkerRegistration]] {
  service_worker_container_get_registrations_ffi_wasm(obj).unsafe_cast()
}

///|
fn service_worker_container_start_messages_ffi(obj : JsValue) -> Unit = "webapi_ServiceWorkerContainer" "startMessages"

///|
fn service_worker_container_oncontrollerchange_ffi_wasm(
  obj : JsValue,
) -> JsValue = "webapi_ServiceWorkerContainer" "get_oncontrollerchange"

///|
fn service_worker_container_oncontrollerchange_ffi(
  obj : JsValue,
) -> EventHandler {
  service_worker_container_oncontrollerchange_ffi_wasm(obj).unsafe_cast()
}

///|
fn service_worker_container_set_oncontrollerchange_ffi(
  obj : JsValue,
  oncontrollerchange : JsValue,
) -> Unit = "webapi_ServiceWorkerContainer" "set_oncontrollerchange"

///|
fn service_worker_container_onmessage_ffi_wasm(obj : JsValue) -> JsValue = "webapi_ServiceWorkerContainer" "get_onmessage"

///|
fn service_worker_container_onmessage_ffi(obj : JsValue) -> EventHandler {
  service_worker_container_onmessage_ffi_wasm(obj).unsafe_cast()
}

///|
fn service_worker_container_set_onmessage_ffi(
  obj : JsValue,
  onmessage : JsValue,
) -> Unit = "webapi_ServiceWorkerContainer" "set_onmessage"

///|
fn service_worker_container_onmessageerror_ffi_wasm(obj : JsValue) -> JsValue = "webapi_ServiceWorkerContainer" "get_onmessageerror"

///|
fn service_worker_container_onmessageerror_ffi(obj : JsValue) -> EventHandler {
  service_worker_container_onmessageerror_ffi_wasm(obj).unsafe_cast()
}

///|
fn service_worker_container_set_onmessageerror_ffi(
  obj : JsValue,
  onmessageerror : JsValue,
) -> Unit = "webapi_ServiceWorkerContainer" "set_onmessageerror"
