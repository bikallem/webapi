///|
fn clipboard_event_init_ffi(
  bubbles : JsValue,
  cancelable : JsValue,
  composed : JsValue,
  clipboard_data : JsValue,
) -> ClipboardEventInit = "webapi_ClipboardEventInit" "new"

///|
fn clipboard_event_init_empty_ffi() -> ClipboardEventInit = "webapi_Dictionary" "empty"

///|
fn clipboard_event_init_get_bubbles_ffi(obj : JsValue) -> JsValue = "webapi_ClipboardEventInit" "get_bubbles"

///|
fn clipboard_event_init_get_cancelable_ffi(obj : JsValue) -> JsValue = "webapi_ClipboardEventInit" "get_cancelable"

///|
fn clipboard_event_init_get_composed_ffi(obj : JsValue) -> JsValue = "webapi_ClipboardEventInit" "get_composed"

///|
fn clipboard_event_init_get_clipboard_data_ffi(obj : JsValue) -> JsValue = "webapi_ClipboardEventInit" "get_clipboardData"
