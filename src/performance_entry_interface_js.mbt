///|
extern "js" fn performance_entry_id_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.id"

///|
fn performance_entry_id_ffi(obj : JsValue) -> UInt64 {
  performance_entry_id_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn performance_entry_name_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.name"

///|
fn performance_entry_name_ffi(obj : JsValue) -> String {
  performance_entry_name_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn performance_entry_entry_type_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.entryType"

///|
fn performance_entry_entry_type_ffi(obj : JsValue) -> String {
  performance_entry_entry_type_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn performance_entry_start_time_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.startTime"

///|
fn performance_entry_start_time_ffi(obj : JsValue) -> DOMHighResTimeStamp {
  performance_entry_start_time_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn performance_entry_duration_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.duration"

///|
fn performance_entry_duration_ffi(obj : JsValue) -> DOMHighResTimeStamp {
  performance_entry_duration_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn performance_entry_navigation_id_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.navigationId"

///|
fn performance_entry_navigation_id_ffi(obj : JsValue) -> UInt64 {
  performance_entry_navigation_id_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn performance_entry_to_json_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.toJSON()"

///|
fn performance_entry_to_json_ffi(obj : JsValue) -> JsValue {
  performance_entry_to_json_ffi_js(obj).unsafe_cast()
}
