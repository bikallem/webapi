///|
extern "js" fn close_event_new_ffi(
  type_ : JsValue,
  event_init_dict : JsValue,
) -> CloseEvent = "(type_, event_init_dict) => new CloseEvent(type_, event_init_dict)"

///|
extern "js" fn close_event_was_clean_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.wasClean"

///|
fn close_event_was_clean_ffi(obj : JsValue) -> Bool {
  close_event_was_clean_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn close_event_code_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.code"

///|
fn close_event_code_ffi(obj : JsValue) -> UInt {
  close_event_code_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn close_event_reason_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.reason"

///|
fn close_event_reason_ffi(obj : JsValue) -> String {
  close_event_reason_ffi_js(obj).unsafe_cast()
}
