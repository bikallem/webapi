fn clipboard_event_init_ffi(bubbles: JsValue, cancelable: JsValue, composed: JsValue, clipboard_data: JsValue) -> ClipboardEventInit = "webapi_ClipboardEventInit" "new"

fn clipboard_event_init_empty_ffi() -> ClipboardEventInit = "webapi_Dictionary" "empty"