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
