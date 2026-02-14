///|
extern "js" fn clipboard_change_event_new_ffi(
  type_ : JsValue,
  event_init_dict : JsValue,
) -> ClipboardChangeEvent = "(type_, event_init_dict) => new ClipboardChangeEvent(type_, event_init_dict)"

///|
extern "js" fn clipboard_change_event_types_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.types"

///|
fn clipboard_change_event_types_ffi(obj : JsValue) -> Array[String] {
  clipboard_change_event_types_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn clipboard_change_event_change_id_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.changeId"

///|
fn clipboard_change_event_change_id_ffi(obj : JsValue) -> Int64 {
  clipboard_change_event_change_id_ffi_js(obj).unsafe_cast()
}
