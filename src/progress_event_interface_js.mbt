extern "js" fn progress_event_new_ffi(type_: JsValue, event_init_dict: JsValue) -> ProgressEvent = "(type_, event_init_dict) => new ProgressEvent(type_, event_init_dict)"

extern "js" fn progress_event_length_computable_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.lengthComputable"

///|
fn progress_event_length_computable_ffi(obj: JsValue) -> Bool {
  progress_event_length_computable_ffi_js(obj).unsafe_cast()
}

extern "js" fn progress_event_loaded_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.loaded"

///|
fn progress_event_loaded_ffi(obj: JsValue) -> Double {
  progress_event_loaded_ffi_js(obj).unsafe_cast()
}

extern "js" fn progress_event_total_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.total"

///|
fn progress_event_total_ffi(obj: JsValue) -> Double {
  progress_event_total_ffi_js(obj).unsafe_cast()
}