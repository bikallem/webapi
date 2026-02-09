///|
extern "js" fn visibility_state_entry_name_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.name"

///|
fn visibility_state_entry_name_ffi(obj : JsValue) -> String {
  visibility_state_entry_name_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn visibility_state_entry_entry_type_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.entryType"

///|
fn visibility_state_entry_entry_type_ffi(obj : JsValue) -> String {
  visibility_state_entry_entry_type_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn visibility_state_entry_start_time_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.startTime"

///|
fn visibility_state_entry_start_time_ffi(obj : JsValue) -> DOMHighResTimeStamp {
  visibility_state_entry_start_time_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn visibility_state_entry_duration_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.duration"

///|
fn visibility_state_entry_duration_ffi(obj : JsValue) -> UInt {
  visibility_state_entry_duration_ffi_js(obj).unsafe_cast()
}
