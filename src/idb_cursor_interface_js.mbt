///|
extern "js" fn idb_cursor_source_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.source"

///|
fn idb_cursor_source_ffi(obj : JsValue) -> IDBCursorSource {
  idb_cursor_source_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn idb_cursor_direction_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.direction"

///|
fn idb_cursor_direction_ffi(obj : JsValue) -> IDBCursorDirection {
  IDBCursorDirection::from_unchecked(
    idb_cursor_direction_ffi_js(obj).unsafe_cast(),
  )
}

///|
extern "js" fn idb_cursor_key_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.key"

///|
fn idb_cursor_key_ffi(obj : JsValue) -> JsValue {
  idb_cursor_key_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn idb_cursor_primary_key_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.primaryKey"

///|
fn idb_cursor_primary_key_ffi(obj : JsValue) -> JsValue {
  idb_cursor_primary_key_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn idb_cursor_request_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.request"

///|
fn idb_cursor_request_ffi(obj : JsValue) -> IDBRequest {
  idb_cursor_request_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn idb_cursor_advance_ffi(obj : JsValue, count : JsValue) -> Unit = "(obj, count) => obj.advance(count)"

///|
extern "js" fn idb_cursor_continue_ffi(obj : JsValue, key : JsValue) -> Unit = "(obj, key) => obj.continue(key)"

///|
extern "js" fn idb_cursor_continue_primary_key_ffi(
  obj : JsValue,
  key : JsValue,
  primary_key : JsValue,
) -> Unit = "(obj, key, primary_key) => obj.continuePrimaryKey(key, primary_key)"

///|
extern "js" fn idb_cursor_update_ffi_js(
  obj : JsValue,
  value : JsValue,
) -> JsValue = "(obj, value) => obj.update(value)"

///|
fn idb_cursor_update_ffi(obj : JsValue, value : JsValue) -> IDBRequest {
  idb_cursor_update_ffi_js(obj, value).unsafe_cast()
}

///|
extern "js" fn idb_cursor_delete_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.delete()"

///|
fn idb_cursor_delete_ffi(obj : JsValue) -> IDBRequest {
  idb_cursor_delete_ffi_js(obj).unsafe_cast()
}
