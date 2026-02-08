extern "js" fn error_event_new_ffi(type_: JsValue, event_init_dict: JsValue) -> ErrorEvent = "(type_, event_init_dict) => new ErrorEvent(type_, event_init_dict)"

extern "js" fn error_event_message_ffi(obj: JsValue) -> JsValue = "(obj) => obj.message"

extern "js" fn error_event_filename_ffi(obj: JsValue) -> JsValue = "(obj) => obj.filename"

extern "js" fn error_event_lineno_ffi(obj: JsValue) -> JsValue = "(obj) => obj.lineno"

extern "js" fn error_event_colno_ffi(obj: JsValue) -> JsValue = "(obj) => obj.colno"

extern "js" fn error_event_error_ffi(obj: JsValue) -> JsValue = "(obj) => obj.error"