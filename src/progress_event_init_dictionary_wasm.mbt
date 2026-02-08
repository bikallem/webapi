///|
fn progress_event_init_ffi(
  bubbles : JsValue,
  cancelable : JsValue,
  composed : JsValue,
  length_computable : JsValue,
  loaded : JsValue,
  total : JsValue,
) -> ProgressEventInit = "webapi_ProgressEventInit" "new"

///|
fn progress_event_init_empty_ffi() -> ProgressEventInit = "webapi_Dictionary" "empty"
