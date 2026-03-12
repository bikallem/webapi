extern "js" fn service_worker_global_scope_onnotificationclick_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.onnotificationclick"

///|
fn service_worker_global_scope_onnotificationclick_ffi(obj: JsValue) -> EventHandler {
  service_worker_global_scope_onnotificationclick_ffi_js(obj).unsafe_cast()
}

extern "js" fn service_worker_global_scope_set_onnotificationclick_ffi(obj: JsValue, onnotificationclick: JsValue) -> Unit = "(obj, onnotificationclick) => { obj.onnotificationclick = onnotificationclick; }"

extern "js" fn service_worker_global_scope_onnotificationclose_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.onnotificationclose"

///|
fn service_worker_global_scope_onnotificationclose_ffi(obj: JsValue) -> EventHandler {
  service_worker_global_scope_onnotificationclose_ffi_js(obj).unsafe_cast()
}

extern "js" fn service_worker_global_scope_set_onnotificationclose_ffi(obj: JsValue, onnotificationclose: JsValue) -> Unit = "(obj, onnotificationclose) => { obj.onnotificationclose = onnotificationclose; }"

extern "js" fn service_worker_global_scope_clients_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.clients"

///|
fn service_worker_global_scope_clients_ffi(obj: JsValue) -> Clients {
  service_worker_global_scope_clients_ffi_js(obj).unsafe_cast()
}

extern "js" fn service_worker_global_scope_registration_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.registration"

///|
fn service_worker_global_scope_registration_ffi(obj: JsValue) -> ServiceWorkerRegistration {
  service_worker_global_scope_registration_ffi_js(obj).unsafe_cast()
}

extern "js" fn service_worker_global_scope_service_worker_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.serviceWorker"

///|
fn service_worker_global_scope_service_worker_ffi(obj: JsValue) -> ServiceWorker {
  service_worker_global_scope_service_worker_ffi_js(obj).unsafe_cast()
}

extern "js" fn service_worker_global_scope_skip_waiting_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.skipWaiting()"

///|
fn service_worker_global_scope_skip_waiting_ffi(obj: JsValue) -> JsPromise[JsValue] {
  service_worker_global_scope_skip_waiting_ffi_js(obj).unsafe_cast()
}

extern "js" fn service_worker_global_scope_oninstall_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.oninstall"

///|
fn service_worker_global_scope_oninstall_ffi(obj: JsValue) -> EventHandler {
  service_worker_global_scope_oninstall_ffi_js(obj).unsafe_cast()
}

extern "js" fn service_worker_global_scope_set_oninstall_ffi(obj: JsValue, oninstall: JsValue) -> Unit = "(obj, oninstall) => { obj.oninstall = oninstall; }"

extern "js" fn service_worker_global_scope_onactivate_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.onactivate"

///|
fn service_worker_global_scope_onactivate_ffi(obj: JsValue) -> EventHandler {
  service_worker_global_scope_onactivate_ffi_js(obj).unsafe_cast()
}

extern "js" fn service_worker_global_scope_set_onactivate_ffi(obj: JsValue, onactivate: JsValue) -> Unit = "(obj, onactivate) => { obj.onactivate = onactivate; }"

extern "js" fn service_worker_global_scope_onfetch_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.onfetch"

///|
fn service_worker_global_scope_onfetch_ffi(obj: JsValue) -> EventHandler {
  service_worker_global_scope_onfetch_ffi_js(obj).unsafe_cast()
}

extern "js" fn service_worker_global_scope_set_onfetch_ffi(obj: JsValue, onfetch: JsValue) -> Unit = "(obj, onfetch) => { obj.onfetch = onfetch; }"

extern "js" fn service_worker_global_scope_onmessage_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.onmessage"

///|
fn service_worker_global_scope_onmessage_ffi(obj: JsValue) -> EventHandler {
  service_worker_global_scope_onmessage_ffi_js(obj).unsafe_cast()
}

extern "js" fn service_worker_global_scope_set_onmessage_ffi(obj: JsValue, onmessage: JsValue) -> Unit = "(obj, onmessage) => { obj.onmessage = onmessage; }"

extern "js" fn service_worker_global_scope_onmessageerror_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.onmessageerror"

///|
fn service_worker_global_scope_onmessageerror_ffi(obj: JsValue) -> EventHandler {
  service_worker_global_scope_onmessageerror_ffi_js(obj).unsafe_cast()
}

extern "js" fn service_worker_global_scope_set_onmessageerror_ffi(obj: JsValue, onmessageerror: JsValue) -> Unit = "(obj, onmessageerror) => { obj.onmessageerror = onmessageerror; }"