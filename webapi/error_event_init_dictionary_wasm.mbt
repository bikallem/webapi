///|
fn error_event_init_ffi(
  bubbles : JsValue,
  cancelable : JsValue,
  composed : JsValue,
  message : JsValue,
  filename : JsValue,
  lineno : JsValue,
  colno : JsValue,
  error : JsValue,
) -> ErrorEventInit = "webapi_ErrorEventInit" "new"

///|
fn error_event_init_empty_ffi() -> ErrorEventInit = "webapi_Dictionary" "empty"

///|
fn error_event_init_get_bubbles_ffi(obj : JsValue) -> JsValue = "webapi_ErrorEventInit" "get_bubbles"

///|
fn error_event_init_get_cancelable_ffi(obj : JsValue) -> JsValue = "webapi_ErrorEventInit" "get_cancelable"

///|
fn error_event_init_get_composed_ffi(obj : JsValue) -> JsValue = "webapi_ErrorEventInit" "get_composed"

///|
fn error_event_init_get_message_ffi(obj : JsValue) -> JsValue = "webapi_ErrorEventInit" "get_message"

///|
fn error_event_init_get_filename_ffi(obj : JsValue) -> JsValue = "webapi_ErrorEventInit" "get_filename"

///|
fn error_event_init_get_lineno_ffi(obj : JsValue) -> JsValue = "webapi_ErrorEventInit" "get_lineno"

///|
fn error_event_init_get_colno_ffi(obj : JsValue) -> JsValue = "webapi_ErrorEventInit" "get_colno"

///|
fn error_event_init_get_error_ffi(obj : JsValue) -> JsValue = "webapi_ErrorEventInit" "get_error"
