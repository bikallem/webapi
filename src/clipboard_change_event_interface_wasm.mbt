///|
fn clipboard_change_event_new_ffi(
  type_ : JsValue,
  event_init_dict : JsValue,
) -> ClipboardChangeEvent = "webapi_ClipboardChangeEvent" "new"

///|
fn clipboard_change_event_types_ffi(obj : JsValue) -> JsValue = "webapi_ClipboardChangeEvent" "get_types"

///|
fn clipboard_change_event_change_id_ffi(obj : JsValue) -> Int64 = "webapi_ClipboardChangeEvent" "get_changeId"
