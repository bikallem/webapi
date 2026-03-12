fn worker_new_ffi(script_url: JsValue, options: JsValue) -> Worker = "webapi_Worker" "new"

fn worker_terminate_ffi(obj: JsValue) -> Unit = "webapi_Worker" "terminate"

fn worker_post_message_ffi(obj: JsValue, message: JsValue, transfer: JsValue) -> Unit = "webapi_Worker" "postMessage"

fn worker_post_message_with_options_ffi(obj: JsValue, message: JsValue, options: JsValue) -> Unit = "webapi_Worker" "post_message_with_options"

fn worker_onerror_ffi_wasm(obj: JsValue) -> JsValue = "webapi_Worker" "get_onerror"

///|
fn worker_onerror_ffi(obj: JsValue) -> EventHandler {
  worker_onerror_ffi_wasm(obj).unsafe_cast()
}

fn worker_set_onerror_ffi(obj: JsValue, onerror: JsValue) -> Unit = "webapi_Worker" "set_onerror"

fn worker_onmessage_ffi_wasm(obj: JsValue) -> JsValue = "webapi_Worker" "get_onmessage"

///|
fn worker_onmessage_ffi(obj: JsValue) -> EventHandler {
  worker_onmessage_ffi_wasm(obj).unsafe_cast()
}

fn worker_set_onmessage_ffi(obj: JsValue, onmessage: JsValue) -> Unit = "webapi_Worker" "set_onmessage"

fn worker_onmessageerror_ffi_wasm(obj: JsValue) -> JsValue = "webapi_Worker" "get_onmessageerror"

///|
fn worker_onmessageerror_ffi(obj: JsValue) -> EventHandler {
  worker_onmessageerror_ffi_wasm(obj).unsafe_cast()
}

fn worker_set_onmessageerror_ffi(obj: JsValue, onmessageerror: JsValue) -> Unit = "webapi_Worker" "set_onmessageerror"