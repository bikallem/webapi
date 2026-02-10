fn dedicated_worker_global_scope_name_ffi_wasm(obj: JsValue) -> JsValue = "webapi_DedicatedWorkerGlobalScope" "get_name"

///|
fn dedicated_worker_global_scope_name_ffi(obj: JsValue) -> String {
  jsvalue_to_string(dedicated_worker_global_scope_name_ffi_wasm(obj))
}

fn dedicated_worker_global_scope_post_message_ffi(obj: JsValue, message: JsValue, transfer: JsValue) -> Unit = "webapi_DedicatedWorkerGlobalScope" "postMessage"

fn dedicated_worker_global_scope_post_message_2_ffi(obj: JsValue, message: JsValue, options: JsValue) -> Unit = "webapi_DedicatedWorkerGlobalScope" "postMessage_2"

fn dedicated_worker_global_scope_close_ffi(obj: JsValue) -> Unit = "webapi_DedicatedWorkerGlobalScope" "close"

fn dedicated_worker_global_scope_request_animation_frame_ffi(obj: JsValue, callback: JsValue) -> UInt = "webapi_DedicatedWorkerGlobalScope" "requestAnimationFrame"

fn dedicated_worker_global_scope_cancel_animation_frame_ffi(obj: JsValue, handle: JsValue) -> Unit = "webapi_DedicatedWorkerGlobalScope" "cancelAnimationFrame"

fn dedicated_worker_global_scope_onmessage_ffi(obj: JsValue) -> EventHandler = "webapi_DedicatedWorkerGlobalScope" "get_onmessage"

fn dedicated_worker_global_scope_set_onmessage_ffi(obj: JsValue, onmessage: JsValue) -> Unit = "webapi_DedicatedWorkerGlobalScope" "set_onmessage"

fn dedicated_worker_global_scope_onmessageerror_ffi(obj: JsValue) -> EventHandler = "webapi_DedicatedWorkerGlobalScope" "get_onmessageerror"

fn dedicated_worker_global_scope_set_onmessageerror_ffi(obj: JsValue, onmessageerror: JsValue) -> Unit = "webapi_DedicatedWorkerGlobalScope" "set_onmessageerror"