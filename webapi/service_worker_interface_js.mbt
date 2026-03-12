extern "js" fn service_worker_script_url_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.scriptURL"

///|
fn service_worker_script_url_ffi(obj: JsValue) -> String {
  service_worker_script_url_ffi_js(obj).unsafe_cast()
}

extern "js" fn service_worker_state_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.state"

///|
fn service_worker_state_ffi(obj: JsValue) -> ServiceWorkerState {
  ServiceWorkerState::from_unchecked(service_worker_state_ffi_js(obj).unsafe_cast())
}

extern "js" fn service_worker_post_message_ffi(obj: JsValue, message: JsValue, transfer: JsValue) -> Unit = "(obj, message, transfer) => obj.postMessage(message, transfer)"

extern "js" fn service_worker_post_message_with_options_ffi(obj: JsValue, message: JsValue, options: JsValue) -> Unit = "(obj, message, options) => obj.postMessage(message, options)"

extern "js" fn service_worker_onstatechange_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.onstatechange"

///|
fn service_worker_onstatechange_ffi(obj: JsValue) -> EventHandler {
  service_worker_onstatechange_ffi_js(obj).unsafe_cast()
}

extern "js" fn service_worker_set_onstatechange_ffi(obj: JsValue, onstatechange: JsValue) -> Unit = "(obj, onstatechange) => { obj.onstatechange = onstatechange; }"

extern "js" fn service_worker_onerror_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.onerror"

///|
fn service_worker_onerror_ffi(obj: JsValue) -> EventHandler {
  service_worker_onerror_ffi_js(obj).unsafe_cast()
}

extern "js" fn service_worker_set_onerror_ffi(obj: JsValue, onerror: JsValue) -> Unit = "(obj, onerror) => { obj.onerror = onerror; }"