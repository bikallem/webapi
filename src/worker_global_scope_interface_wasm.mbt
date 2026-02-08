fn worker_global_scope_self_ffi(obj: JsValue) -> JsValue = "webapi_WorkerGlobalScope" "get_self"

fn worker_global_scope_location_ffi(obj: JsValue) -> JsValue = "webapi_WorkerGlobalScope" "get_location"

fn worker_global_scope_navigator_ffi(obj: JsValue) -> JsValue = "webapi_WorkerGlobalScope" "get_navigator"

fn worker_global_scope_import_scripts_ffi(obj: JsValue, urls: JsValue) -> Unit = "webapi_WorkerGlobalScope" "importScripts"

fn worker_global_scope_onerror_ffi(obj: JsValue) -> JsValue = "webapi_WorkerGlobalScope" "get_onerror"

fn worker_global_scope_set_onerror_ffi(obj: JsValue, onerror: JsValue) -> Unit = "webapi_WorkerGlobalScope" "set_onerror"

fn worker_global_scope_onlanguagechange_ffi(obj: JsValue) -> JsValue = "webapi_WorkerGlobalScope" "get_onlanguagechange"

fn worker_global_scope_set_onlanguagechange_ffi(obj: JsValue, onlanguagechange: JsValue) -> Unit = "webapi_WorkerGlobalScope" "set_onlanguagechange"

fn worker_global_scope_onoffline_ffi(obj: JsValue) -> JsValue = "webapi_WorkerGlobalScope" "get_onoffline"

fn worker_global_scope_set_onoffline_ffi(obj: JsValue, onoffline: JsValue) -> Unit = "webapi_WorkerGlobalScope" "set_onoffline"

fn worker_global_scope_ononline_ffi(obj: JsValue) -> JsValue = "webapi_WorkerGlobalScope" "get_ononline"

fn worker_global_scope_set_ononline_ffi(obj: JsValue, ononline: JsValue) -> Unit = "webapi_WorkerGlobalScope" "set_ononline"

fn worker_global_scope_onrejectionhandled_ffi(obj: JsValue) -> JsValue = "webapi_WorkerGlobalScope" "get_onrejectionhandled"

fn worker_global_scope_set_onrejectionhandled_ffi(obj: JsValue, onrejectionhandled: JsValue) -> Unit = "webapi_WorkerGlobalScope" "set_onrejectionhandled"

fn worker_global_scope_onunhandledrejection_ffi(obj: JsValue) -> JsValue = "webapi_WorkerGlobalScope" "get_onunhandledrejection"

fn worker_global_scope_set_onunhandledrejection_ffi(obj: JsValue, onunhandledrejection: JsValue) -> Unit = "webapi_WorkerGlobalScope" "set_onunhandledrejection"

fn worker_global_scope_origin_ffi(obj: JsValue) -> JsValue = "webapi_WorkerGlobalScope" "get_origin"

fn worker_global_scope_is_secure_context_ffi(obj: JsValue) -> JsValue = "webapi_WorkerGlobalScope" "get_isSecureContext"

fn worker_global_scope_cross_origin_isolated_ffi(obj: JsValue) -> JsValue = "webapi_WorkerGlobalScope" "get_crossOriginIsolated"

fn worker_global_scope_report_error_ffi(obj: JsValue, e: JsValue) -> Unit = "webapi_WorkerGlobalScope" "reportError"

fn worker_global_scope_btoa_ffi(obj: JsValue, data: JsValue) -> JsValue = "webapi_WorkerGlobalScope" "btoa"

fn worker_global_scope_atob_ffi(obj: JsValue, data: JsValue) -> JsValue = "webapi_WorkerGlobalScope" "atob"

fn worker_global_scope_set_timeout_ffi(obj: JsValue, handler: JsValue, timeout: JsValue, arguments: JsValue) -> JsValue = "webapi_WorkerGlobalScope" "setTimeout"

fn worker_global_scope_clear_timeout_ffi(obj: JsValue, id: JsValue) -> Unit = "webapi_WorkerGlobalScope" "clearTimeout"

fn worker_global_scope_set_interval_ffi(obj: JsValue, handler: JsValue, timeout: JsValue, arguments: JsValue) -> JsValue = "webapi_WorkerGlobalScope" "setInterval"

fn worker_global_scope_clear_interval_ffi(obj: JsValue, id: JsValue) -> Unit = "webapi_WorkerGlobalScope" "clearInterval"

fn worker_global_scope_queue_microtask_ffi(obj: JsValue, callback: JsValue) -> Unit = "webapi_WorkerGlobalScope" "queueMicrotask"

fn worker_global_scope_create_image_bitmap_ffi(obj: JsValue, image: JsValue, options: JsValue) -> JsValue = "webapi_WorkerGlobalScope" "createImageBitmap"

fn worker_global_scope_create_image_bitmap_2_ffi(obj: JsValue, image: JsValue, sx: JsValue, sy: JsValue, sw: JsValue, sh: JsValue, options: JsValue) -> JsValue = "webapi_WorkerGlobalScope" "createImageBitmap_2"

fn worker_global_scope_structured_clone_ffi(obj: JsValue, value: JsValue, options: JsValue) -> JsValue = "webapi_WorkerGlobalScope" "structuredClone"

fn worker_global_scope_fetch_ffi(obj: JsValue, input: JsValue, init: JsValue) -> JsValue = "webapi_WorkerGlobalScope" "fetch"

fn worker_global_scope_performance_ffi(obj: JsValue) -> JsValue = "webapi_WorkerGlobalScope" "get_performance"

fn worker_global_scope_trusted_types_ffi(obj: JsValue) -> JsValue = "webapi_WorkerGlobalScope" "get_trustedTypes"