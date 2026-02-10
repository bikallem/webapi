///|
fn clipboard_change_event_init_ffi(
  bubbles : JsValue,
  cancelable : JsValue,
  composed : JsValue,
  types : JsValue,
  change_id : JsValue,
) -> ClipboardChangeEventInit = "webapi_ClipboardChangeEventInit" "new"

///|
fn clipboard_change_event_init_empty_ffi() -> ClipboardChangeEventInit = "webapi_Dictionary" "empty"
