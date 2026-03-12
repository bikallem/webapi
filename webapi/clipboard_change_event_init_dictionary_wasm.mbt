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

///|
fn clipboard_change_event_init_get_bubbles_ffi(obj : JsValue) -> JsValue = "webapi_ClipboardChangeEventInit" "get_bubbles"

///|
fn clipboard_change_event_init_get_cancelable_ffi(obj : JsValue) -> JsValue = "webapi_ClipboardChangeEventInit" "get_cancelable"

///|
fn clipboard_change_event_init_get_composed_ffi(obj : JsValue) -> JsValue = "webapi_ClipboardChangeEventInit" "get_composed"

///|
fn clipboard_change_event_init_get_types_ffi(obj : JsValue) -> JsValue = "webapi_ClipboardChangeEventInit" "get_types"

///|
fn clipboard_change_event_init_get_change_id_ffi(obj : JsValue) -> JsValue = "webapi_ClipboardChangeEventInit" "get_changeId"
