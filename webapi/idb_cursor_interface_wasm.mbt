///|
fn idb_cursor_source_ffi_wasm(obj : JsValue) -> JsValue = "webapi_IDBCursor" "get_source"

///|
fn idb_cursor_source_ffi(obj : JsValue) -> IDBCursorSource {
  idb_cursor_source_ffi_wasm(obj).unsafe_cast()
}

///|
fn idb_cursor_direction_ffi_wasm(obj : JsValue) -> JsValue = "webapi_IDBCursor" "get_direction"

///|
fn idb_cursor_direction_ffi(obj : JsValue) -> IDBCursorDirection {
  IDBCursorDirection::from_unchecked(
    jsvalue_to_string(idb_cursor_direction_ffi_wasm(obj)),
  )
}

///|
fn idb_cursor_key_ffi(obj : JsValue) -> JsValue = "webapi_IDBCursor" "get_key"

///|
fn idb_cursor_primary_key_ffi(obj : JsValue) -> JsValue = "webapi_IDBCursor" "get_primaryKey"

///|
fn idb_cursor_request_ffi(obj : JsValue) -> IDBRequest = "webapi_IDBCursor" "get_request"

///|
fn idb_cursor_advance_ffi(obj : JsValue, count : JsValue) -> Unit = "webapi_IDBCursor" "advance"

///|
fn idb_cursor_continue_ffi(obj : JsValue, key : JsValue) -> Unit = "webapi_IDBCursor" "continue"

///|
fn idb_cursor_continue_primary_key_ffi(
  obj : JsValue,
  key : JsValue,
  primary_key : JsValue,
) -> Unit = "webapi_IDBCursor" "continuePrimaryKey"

///|
fn idb_cursor_update_ffi(obj : JsValue, value : JsValue) -> IDBRequest = "webapi_IDBCursor" "update"

///|
fn idb_cursor_delete_ffi(obj : JsValue) -> IDBRequest = "webapi_IDBCursor" "delete"
