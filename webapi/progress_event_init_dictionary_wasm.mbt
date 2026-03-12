fn progress_event_init_ffi(bubbles: JsValue, cancelable: JsValue, composed: JsValue, length_computable: JsValue, loaded: JsValue, total: JsValue) -> ProgressEventInit = "webapi_ProgressEventInit" "new"

fn progress_event_init_empty_ffi() -> ProgressEventInit = "webapi_Dictionary" "empty"

fn progress_event_init_get_bubbles_ffi(obj: JsValue) -> JsValue = "webapi_ProgressEventInit" "get_bubbles"

fn progress_event_init_get_cancelable_ffi(obj: JsValue) -> JsValue = "webapi_ProgressEventInit" "get_cancelable"

fn progress_event_init_get_composed_ffi(obj: JsValue) -> JsValue = "webapi_ProgressEventInit" "get_composed"

fn progress_event_init_get_length_computable_ffi(obj: JsValue) -> JsValue = "webapi_ProgressEventInit" "get_lengthComputable"

fn progress_event_init_get_loaded_ffi(obj: JsValue) -> JsValue = "webapi_ProgressEventInit" "get_loaded"

fn progress_event_init_get_total_ffi(obj: JsValue) -> JsValue = "webapi_ProgressEventInit" "get_total"