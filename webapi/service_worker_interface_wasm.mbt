fn service_worker_script_url_ffi_wasm(obj: JsValue) -> JsValue = "webapi_ServiceWorker" "get_scriptURL"

///|
fn service_worker_script_url_ffi(obj: JsValue) -> String {
  jsvalue_to_string(service_worker_script_url_ffi_wasm(obj))
}

fn service_worker_state_ffi_wasm(obj: JsValue) -> JsValue = "webapi_ServiceWorker" "get_state"

///|
fn service_worker_state_ffi(obj: JsValue) -> ServiceWorkerState {
  ServiceWorkerState::from_unchecked(jsvalue_to_string(service_worker_state_ffi_wasm(obj)))
}

fn service_worker_post_message_ffi(obj: JsValue, message: JsValue, transfer: JsValue) -> Unit = "webapi_ServiceWorker" "postMessage"

fn service_worker_post_message_with_options_ffi(obj: JsValue, message: JsValue, options: JsValue) -> Unit = "webapi_ServiceWorker" "post_message_with_options"

fn service_worker_onstatechange_ffi_wasm(obj: JsValue) -> JsValue = "webapi_ServiceWorker" "get_onstatechange"

///|
fn service_worker_onstatechange_ffi(obj: JsValue) -> EventHandler {
  service_worker_onstatechange_ffi_wasm(obj).unsafe_cast()
}

fn service_worker_set_onstatechange_ffi(obj: JsValue, onstatechange: JsValue) -> Unit = "webapi_ServiceWorker" "set_onstatechange"

fn service_worker_onerror_ffi_wasm(obj: JsValue) -> JsValue = "webapi_ServiceWorker" "get_onerror"

///|
fn service_worker_onerror_ffi(obj: JsValue) -> EventHandler {
  service_worker_onerror_ffi_wasm(obj).unsafe_cast()
}

fn service_worker_set_onerror_ffi(obj: JsValue, onerror: JsValue) -> Unit = "webapi_ServiceWorker" "set_onerror"