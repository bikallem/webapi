extern "js" fn progress_event_init_ffi(bubbles: JsValue, cancelable: JsValue, composed: JsValue, length_computable: JsValue, loaded: JsValue, total: JsValue) -> ProgressEventInit = 
#|(bubbles, cancelable, composed, lengthComputable, loaded, total) => {
#|  const obj = {};
#|  if (bubbles !== undefined) obj.bubbles = bubbles;
#|  if (cancelable !== undefined) obj.cancelable = cancelable;
#|  if (composed !== undefined) obj.composed = composed;
#|  if (lengthComputable !== undefined) obj.lengthComputable = lengthComputable;
#|  if (loaded !== undefined) obj.loaded = loaded;
#|  if (total !== undefined) obj.total = total;
#|  return obj;
#|}

extern "js" fn progress_event_init_empty_ffi() -> ProgressEventInit = "() => {}"

extern "js" fn progress_event_init_get_bubbles_ffi(obj: JsValue) -> JsValue = "(obj) => obj.bubbles"

extern "js" fn progress_event_init_get_cancelable_ffi(obj: JsValue) -> JsValue = "(obj) => obj.cancelable"

extern "js" fn progress_event_init_get_composed_ffi(obj: JsValue) -> JsValue = "(obj) => obj.composed"

extern "js" fn progress_event_init_get_length_computable_ffi(obj: JsValue) -> JsValue = "(obj) => obj.lengthComputable"

extern "js" fn progress_event_init_get_loaded_ffi(obj: JsValue) -> JsValue = "(obj) => obj.loaded"

extern "js" fn progress_event_init_get_total_ffi(obj: JsValue) -> JsValue = "(obj) => obj.total"