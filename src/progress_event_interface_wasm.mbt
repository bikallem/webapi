fn progress_event_new_ffi(type_: JsValue, event_init_dict: JsValue) -> ProgressEvent = "webapi_ProgressEvent" "new"

fn progress_event_length_computable_ffi(obj: JsValue) -> Bool = "webapi_ProgressEvent" "get_lengthComputable"

fn progress_event_loaded_ffi(obj: JsValue) -> Double = "webapi_ProgressEvent" "get_loaded"

fn progress_event_total_ffi(obj: JsValue) -> Double = "webapi_ProgressEvent" "get_total"