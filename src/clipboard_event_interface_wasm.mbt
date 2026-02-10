fn clipboard_event_new_ffi(type_: JsValue, event_init_dict: JsValue) -> ClipboardEvent = "webapi_ClipboardEvent" "new"

fn clipboard_event_clipboard_data_ffi(obj: JsValue) -> DataTransfer = "webapi_ClipboardEvent" "get_clipboardData"