extern "js" fn service_worker_container_controller_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.controller"

///|
fn service_worker_container_controller_ffi(obj: JsValue) -> ServiceWorker {
  service_worker_container_controller_ffi_js(obj).unsafe_cast()
}

extern "js" fn service_worker_container_ready_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.ready"

///|
fn service_worker_container_ready_ffi(obj: JsValue) -> JsPromise[ServiceWorkerRegistration] {
  service_worker_container_ready_ffi_js(obj).unsafe_cast()
}

extern "js" fn service_worker_container_register_ffi_js(obj: JsValue, script_url: JsValue, options: JsValue) -> JsValue = "(obj, script_url, options) => obj.register(script_url, options)"

///|
fn service_worker_container_register_ffi(obj: JsValue, script_url: JsValue, options: JsValue) -> JsPromise[ServiceWorkerRegistration] {
  service_worker_container_register_ffi_js(obj, script_url, options).unsafe_cast()
}

extern "js" fn service_worker_container_get_registration_ffi_js(obj: JsValue, client_url: JsValue) -> JsValue = "(obj, client_url) => obj.getRegistration(client_url)"

///|
fn service_worker_container_get_registration_ffi(obj: JsValue, client_url: JsValue) -> JsPromise[&TServiceWorkerContainerGetRegistration] {
  service_worker_container_get_registration_ffi_js(obj, client_url).unsafe_cast()
}

extern "js" fn service_worker_container_get_registrations_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.getRegistrations()"

///|
fn service_worker_container_get_registrations_ffi(obj: JsValue) -> JsPromise[Array[ServiceWorkerRegistration]] {
  service_worker_container_get_registrations_ffi_js(obj).unsafe_cast()
}

extern "js" fn service_worker_container_start_messages_ffi(obj: JsValue) -> Unit = "(obj) => obj.startMessages()"

extern "js" fn service_worker_container_oncontrollerchange_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.oncontrollerchange"

///|
fn service_worker_container_oncontrollerchange_ffi(obj: JsValue) -> EventHandler {
  service_worker_container_oncontrollerchange_ffi_js(obj).unsafe_cast()
}

extern "js" fn service_worker_container_set_oncontrollerchange_ffi(obj: JsValue, oncontrollerchange: JsValue) -> Unit = "(obj, oncontrollerchange) => { obj.oncontrollerchange = oncontrollerchange; }"

extern "js" fn service_worker_container_onmessage_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.onmessage"

///|
fn service_worker_container_onmessage_ffi(obj: JsValue) -> EventHandler {
  service_worker_container_onmessage_ffi_js(obj).unsafe_cast()
}

extern "js" fn service_worker_container_set_onmessage_ffi(obj: JsValue, onmessage: JsValue) -> Unit = "(obj, onmessage) => { obj.onmessage = onmessage; }"

extern "js" fn service_worker_container_onmessageerror_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.onmessageerror"

///|
fn service_worker_container_onmessageerror_ffi(obj: JsValue) -> EventHandler {
  service_worker_container_onmessageerror_ffi_js(obj).unsafe_cast()
}

extern "js" fn service_worker_container_set_onmessageerror_ffi(obj: JsValue, onmessageerror: JsValue) -> Unit = "(obj, onmessageerror) => { obj.onmessageerror = onmessageerror; }"