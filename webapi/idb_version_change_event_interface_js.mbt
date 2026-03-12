extern "js" fn idb_version_change_event_new_ffi(type_: JsValue, event_init_dict: JsValue) -> IDBVersionChangeEvent = "(type_, event_init_dict) => new IDBVersionChangeEvent(type_, event_init_dict)"

extern "js" fn idb_version_change_event_old_version_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.oldVersion"

///|
fn idb_version_change_event_old_version_ffi(obj: JsValue) -> UInt64 {
  idb_version_change_event_old_version_ffi_js(obj).unsafe_cast()
}

extern "js" fn idb_version_change_event_new_version_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.newVersion"

///|
fn idb_version_change_event_new_version_ffi(obj: JsValue) -> UInt64 {
  idb_version_change_event_new_version_ffi_js(obj).unsafe_cast()
}