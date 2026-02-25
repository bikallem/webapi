// Do not edit. This file is generated.
// MoonBit type: IDBCursor
// Specifications: IndexedDB.idl

///|
/// [IDBCursor](https://developer.mozilla.org/en-US/docs/Web/API/IDBCursor)
#external
pub type IDBCursor

///|
pub impl TJsValue for IDBCursor with to_js(self : IDBCursor) -> JsValue = "%identity"

///|
pub impl FromJsAny for IDBCursor with from_js_any(value : JsAny) -> IDBCursor = "%identity"

///|
pub fn[T : TIDBCursor] IDBCursor::into(self : IDBCursor) -> T = "%identity"

///|
pub impl TIDBCursor for IDBCursor

///|
#external
pub type IDBCursorSource

///|
pub impl TJsValue for IDBCursorSource with to_js(self : IDBCursorSource) -> JsValue = "%identity"

///|
pub impl FromJsAny for IDBCursorSource with from_js_any(value : JsAny) -> IDBCursorSource = "%identity"

///|
pub fn[T : TIDBCursorSource + FromJsAny] IDBCursorSource::into(
  self : IDBCursorSource,
) -> T {
  FromJsAny::from_js_any(jsvalue_to_jsany(TJsValue::to_js(self)))
}

///|
pub fn[T : TIDBCursorSource] IDBCursorSource::from(
  value : T,
) -> IDBCursorSource = "%identity"

///|
pub impl TIDBCursorSource for IDBCursorSource with to_js(self : IDBCursorSource) -> JsValue = "%identity"

///|
pub(open) trait TIDBCursorSource {
  to_js(self : Self) -> JsValue
}

///|
pub impl TIDBCursorSource for IDBObjectStore with to_js(self : IDBObjectStore) -> JsValue = "%identity"

///|
pub impl TIDBCursorSource for IDBIndex with to_js(self : IDBIndex) -> JsValue = "%identity"

///|
/// [IDBCursor](https://developer.mozilla.org/en-US/docs/Web/API/IDBCursor) interface.
pub trait TIDBCursor: TJsValue {
  source(self : Self) -> IDBCursorSource = _
  direction(self : Self) -> IDBCursorDirection = _
  key(self : Self) -> JsValue = _
  primary_key(self : Self) -> JsValue = _
  request(self : Self) -> IDBRequest = _
  advance(self : Self, count : UInt) -> Unit = _
  continue_(self : Self, key? : JsValue) -> Unit = _
  continue_primary_key(self : Self, key : JsValue, primary_key : JsValue) -> Unit = _
  update(self : Self, value : JsValue) -> IDBRequest = _
  delete(self : Self) -> IDBRequest = _
}

///|
/// [IDBCursor.source](https://developer.mozilla.org/en-US/docs/Web/API/IDBCursor/source)
impl TIDBCursor with source(self : Self) -> IDBCursorSource {
  idb_cursor_source_ffi(TJsValue::to_js(self))
}

///|
/// [IDBCursor.direction](https://developer.mozilla.org/en-US/docs/Web/API/IDBCursor/direction)
impl TIDBCursor with direction(self : Self) -> IDBCursorDirection {
  idb_cursor_direction_ffi(TJsValue::to_js(self))
}

///|
/// [IDBCursor.key](https://developer.mozilla.org/en-US/docs/Web/API/IDBCursor/key)
impl TIDBCursor with key(self : Self) -> JsValue {
  idb_cursor_key_ffi(TJsValue::to_js(self))
}

///|
/// [IDBCursor.primaryKey](https://developer.mozilla.org/en-US/docs/Web/API/IDBCursor/primaryKey)
impl TIDBCursor with primary_key(self : Self) -> JsValue {
  idb_cursor_primary_key_ffi(TJsValue::to_js(self))
}

///|
/// [IDBCursor.request](https://developer.mozilla.org/en-US/docs/Web/API/IDBCursor/request)
impl TIDBCursor with request(self : Self) -> IDBRequest {
  idb_cursor_request_ffi(TJsValue::to_js(self))
}

///|
/// [IDBCursor.advance](https://developer.mozilla.org/en-US/docs/Web/API/IDBCursor/advance)
impl TIDBCursor with advance(self : Self, count : UInt) -> Unit {
  idb_cursor_advance_ffi(TJsValue::to_js(self), TJsValue::to_js(count))
}

///|
/// [IDBCursor.continue](https://developer.mozilla.org/en-US/docs/Web/API/IDBCursor/continue)
impl TIDBCursor with continue_(self : Self, key? : JsValue) -> Unit {
  idb_cursor_continue_ffi(TJsValue::to_js(self), opt_to_js(key))
}

///|
/// [IDBCursor.continuePrimaryKey](https://developer.mozilla.org/en-US/docs/Web/API/IDBCursor/continuePrimaryKey)
impl TIDBCursor with continue_primary_key(
  self : Self,
  key : JsValue,
  primary_key : JsValue,
) -> Unit {
  idb_cursor_continue_primary_key_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(key),
    TJsValue::to_js(primary_key),
  )
}

///|
/// [IDBCursor.update](https://developer.mozilla.org/en-US/docs/Web/API/IDBCursor/update)
impl TIDBCursor with update(self : Self, value : JsValue) -> IDBRequest {
  idb_cursor_update_ffi(TJsValue::to_js(self), TJsValue::to_js(value))
}

///|
/// [IDBCursor.delete](https://developer.mozilla.org/en-US/docs/Web/API/IDBCursor/delete)
impl TIDBCursor with delete(self : Self) -> IDBRequest {
  idb_cursor_delete_ffi(TJsValue::to_js(self))
}
