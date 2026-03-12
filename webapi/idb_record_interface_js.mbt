extern "js" fn idb_record_key_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.key"

///|
fn idb_record_key_ffi(obj: JsValue) -> JsValue {
  idb_record_key_ffi_js(obj).unsafe_cast()
}

extern "js" fn idb_record_primary_key_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.primaryKey"

///|
fn idb_record_primary_key_ffi(obj: JsValue) -> JsValue {
  idb_record_primary_key_ffi_js(obj).unsafe_cast()
}

extern "js" fn idb_record_value_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.value"

///|
fn idb_record_value_ffi(obj: JsValue) -> JsValue {
  idb_record_value_ffi_js(obj).unsafe_cast()
}