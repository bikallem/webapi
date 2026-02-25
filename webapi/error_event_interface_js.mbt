///|
extern "js" fn error_event_new_ffi(
  type_ : JsValue,
  event_init_dict : JsValue,
) -> ErrorEvent = "(type_, event_init_dict) => new ErrorEvent(type_, event_init_dict)"

///|
extern "js" fn error_event_message_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.message"

///|
fn error_event_message_ffi(obj : JsValue) -> String {
  error_event_message_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn error_event_filename_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.filename"

///|
fn error_event_filename_ffi(obj : JsValue) -> String {
  error_event_filename_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn error_event_lineno_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.lineno"

///|
fn error_event_lineno_ffi(obj : JsValue) -> UInt {
  error_event_lineno_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn error_event_colno_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.colno"

///|
fn error_event_colno_ffi(obj : JsValue) -> UInt {
  error_event_colno_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn error_event_error_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.error"

///|
fn error_event_error_ffi(obj : JsValue) -> JsValue {
  error_event_error_ffi_js(obj).unsafe_cast()
}
