extern "js" fn clipboard_event_new_ffi(type_: JsValue, event_init_dict: JsValue) -> ClipboardEvent = "(type_, event_init_dict) => new ClipboardEvent(type_, event_init_dict)"

extern "js" fn clipboard_event_clipboard_data_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.clipboardData"

///|
fn clipboard_event_clipboard_data_ffi(obj: JsValue) -> DataTransfer {
  clipboard_event_clipboard_data_ffi_js(obj).unsafe_cast()
}