///|
extern "js" fn progress_event_new_ffi(
  type_ : JsValue,
  event_init_dict : JsValue,
) -> ProgressEvent = "(type_, event_init_dict) => new ProgressEvent(type_, event_init_dict)"

///|
extern "js" fn progress_event_length_computable_ffi(obj : JsValue) -> JsValue = "(obj) => obj.lengthComputable"

///|
extern "js" fn progress_event_loaded_ffi(obj : JsValue) -> JsValue = "(obj) => obj.loaded"

///|
extern "js" fn progress_event_total_ffi(obj : JsValue) -> JsValue = "(obj) => obj.total"
