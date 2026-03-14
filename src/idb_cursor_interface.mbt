// Do not edit. This file is generated.
// MoonBit type: IDBCursor
// Specifications: IndexedDB.idl

/// [IDBCursor](https://developer.mozilla.org/en-US/docs/Web/API/IDBCursor)
#external
pub type IDBCursor

pub impl TJsValue for IDBCursor with to_js(self: IDBCursor) -> JsValue = "%identity"

pub impl FromJsAny for IDBCursor with from_js_any(value : JsAny) -> IDBCursor = "%identity"

/// Unchecked downcast — no runtime type check is performed.
/// Prefer `try_into()` for checked downcasts.
#deprecated("Use unsafe_into or try_into instead")
pub fn[T: TIDBCursor] IDBCursor::into(self : IDBCursor) -> T = "%identity"

/// Unchecked downcast — no runtime type check is performed.
/// WARNING: If the underlying JS value is not of type T, this will silently
/// produce a value with incorrect type, leading to undefined behavior.
pub fn[T: TIDBCursor] IDBCursor::unsafe_into(self : IDBCursor) -> T = "%identity"

pub impl HasConstructor for IDBCursor with constructor_name() { "IDBCursor" }

/// Checked downcast — returns None if the JS value is not an instance of T.
pub fn[T : TIDBCursor + HasConstructor] IDBCursor::try_into(self : IDBCursor) -> T? {
  if js_instanceof(TJsValue::to_js(self), T::constructor_name()) {
    Some(self.unsafe_into())
  } else {
    None
  }
}

pub impl TIDBCursor for IDBCursor

pub(open) trait TIDBCursorSource : TJsValue {}

pub impl TIDBCursorSource for IDBObjectStore

pub impl TIDBCursorSource for IDBIndex

#external
pub type IDBCursorSource

pub impl TJsValue for IDBCursorSource with to_js(self: IDBCursorSource) -> JsValue = "%identity"

pub impl FromJsAny for IDBCursorSource with from_js_any(value : JsAny) -> IDBCursorSource = "%identity"

#deprecated("Use unsafe_into or try_into instead")
pub fn[T : TIDBCursorSource + FromJsAny] IDBCursorSource::into(self : IDBCursorSource) -> T {
  FromJsAny::from_js_any(jsvalue_to_jsany(TJsValue::to_js(self)))
}

pub fn[T : TIDBCursorSource + FromJsAny] IDBCursorSource::unsafe_into(self : IDBCursorSource) -> T {
  FromJsAny::from_js_any(jsvalue_to_jsany(TJsValue::to_js(self)))
}

pub fn[T : TIDBCursorSource] IDBCursorSource::from(value : T) -> IDBCursorSource = "%identity"

pub impl TIDBCursorSource for IDBCursorSource

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

/// [IDBCursor.source](https://developer.mozilla.org/en-US/docs/Web/API/IDBCursor/source)
impl TIDBCursor with source(self : Self) -> IDBCursorSource {
  idb_cursor_source_ffi(TJsValue::to_js(self))
}

/// [IDBCursor.direction](https://developer.mozilla.org/en-US/docs/Web/API/IDBCursor/direction)
impl TIDBCursor with direction(self : Self) -> IDBCursorDirection {
  idb_cursor_direction_ffi(TJsValue::to_js(self))
}

/// [IDBCursor.key](https://developer.mozilla.org/en-US/docs/Web/API/IDBCursor/key)
impl TIDBCursor with key(self : Self) -> JsValue {
  idb_cursor_key_ffi(TJsValue::to_js(self))
}

/// [IDBCursor.primaryKey](https://developer.mozilla.org/en-US/docs/Web/API/IDBCursor/primaryKey)
impl TIDBCursor with primary_key(self : Self) -> JsValue {
  idb_cursor_primary_key_ffi(TJsValue::to_js(self))
}

/// [IDBCursor.request](https://developer.mozilla.org/en-US/docs/Web/API/IDBCursor/request)
impl TIDBCursor with request(self : Self) -> IDBRequest {
  idb_cursor_request_ffi(TJsValue::to_js(self))
}

/// [IDBCursor.advance](https://developer.mozilla.org/en-US/docs/Web/API/IDBCursor/advance)
impl TIDBCursor with advance(self : Self, 
count : UInt) -> Unit {
  idb_cursor_advance_ffi(TJsValue::to_js(self), TJsValue::to_js(count))
}

/// [IDBCursor.continue](https://developer.mozilla.org/en-US/docs/Web/API/IDBCursor/continue)
impl TIDBCursor with continue_(self : Self, 
key? : JsValue) -> Unit {
  idb_cursor_continue_ffi(TJsValue::to_js(self), opt_to_js(key))
}

/// [IDBCursor.continuePrimaryKey](https://developer.mozilla.org/en-US/docs/Web/API/IDBCursor/continuePrimaryKey)
impl TIDBCursor with continue_primary_key(self : Self, 
key : JsValue, 
primary_key : JsValue) -> Unit {
  idb_cursor_continue_primary_key_ffi(TJsValue::to_js(self), TJsValue::to_js(key), TJsValue::to_js(primary_key))
}

/// [IDBCursor.update](https://developer.mozilla.org/en-US/docs/Web/API/IDBCursor/update)
impl TIDBCursor with update(self : Self, 
value : JsValue) -> IDBRequest {
  idb_cursor_update_ffi(TJsValue::to_js(self), TJsValue::to_js(value))
}

/// [IDBCursor.delete](https://developer.mozilla.org/en-US/docs/Web/API/IDBCursor/delete)
impl TIDBCursor with delete(self : Self) -> IDBRequest {
  idb_cursor_delete_ffi(TJsValue::to_js(self))
}

#cfg(target="js")
extern "js" fn idb_cursor_source_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.source"

///|
#cfg(target="js")
fn idb_cursor_source_ffi(obj: JsValue) -> IDBCursorSource {
  idb_cursor_source_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn idb_cursor_direction_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.direction"

///|
#cfg(target="js")
fn idb_cursor_direction_ffi(obj: JsValue) -> IDBCursorDirection {
  IDBCursorDirection::from_unchecked(idb_cursor_direction_ffi_js(obj).unsafe_cast())
}

#cfg(target="js")
extern "js" fn idb_cursor_key_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.key"

///|
#cfg(target="js")
fn idb_cursor_key_ffi(obj: JsValue) -> JsValue {
  idb_cursor_key_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn idb_cursor_primary_key_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.primaryKey"

///|
#cfg(target="js")
fn idb_cursor_primary_key_ffi(obj: JsValue) -> JsValue {
  idb_cursor_primary_key_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn idb_cursor_request_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.request"

///|
#cfg(target="js")
fn idb_cursor_request_ffi(obj: JsValue) -> IDBRequest {
  idb_cursor_request_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn idb_cursor_advance_ffi(obj: JsValue, count: JsValue) -> Unit = "(obj, count) => obj.advance(count)"

#cfg(target="js")
extern "js" fn idb_cursor_continue_ffi(obj: JsValue, key: JsValue) -> Unit = "(obj, key) => obj.continue(key)"

#cfg(target="js")
extern "js" fn idb_cursor_continue_primary_key_ffi(obj: JsValue, key: JsValue, primary_key: JsValue) -> Unit = "(obj, key, primary_key) => obj.continuePrimaryKey(key, primary_key)"

#cfg(target="js")
extern "js" fn idb_cursor_update_ffi_js(obj: JsValue, value: JsValue) -> JsValue = "(obj, value) => obj.update(value)"

///|
#cfg(target="js")
fn idb_cursor_update_ffi(obj: JsValue, value: JsValue) -> IDBRequest {
  idb_cursor_update_ffi_js(obj, value).unsafe_cast()
}

#cfg(target="js")
extern "js" fn idb_cursor_delete_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.delete()"

///|
#cfg(target="js")
fn idb_cursor_delete_ffi(obj: JsValue) -> IDBRequest {
  idb_cursor_delete_ffi_js(obj).unsafe_cast()
}

#cfg(target="wasm-gc")
fn idb_cursor_source_ffi_wasm(obj: JsValue) -> JsValue = "webapi_IDBCursor" "get_source"

///|
#cfg(target="wasm-gc")
fn idb_cursor_source_ffi(obj: JsValue) -> IDBCursorSource {
  idb_cursor_source_ffi_wasm(obj).unsafe_cast()
}

#cfg(target="wasm-gc")
fn idb_cursor_direction_ffi_wasm(obj: JsValue) -> JsValue = "webapi_IDBCursor" "get_direction"

///|
#cfg(target="wasm-gc")
fn idb_cursor_direction_ffi(obj: JsValue) -> IDBCursorDirection {
  IDBCursorDirection::from_unchecked(jsvalue_to_string(idb_cursor_direction_ffi_wasm(obj)))
}

#cfg(target="wasm-gc")
fn idb_cursor_key_ffi(obj: JsValue) -> JsValue = "webapi_IDBCursor" "get_key"

#cfg(target="wasm-gc")
fn idb_cursor_primary_key_ffi(obj: JsValue) -> JsValue = "webapi_IDBCursor" "get_primaryKey"

#cfg(target="wasm-gc")
fn idb_cursor_request_ffi(obj: JsValue) -> IDBRequest = "webapi_IDBCursor" "get_request"

#cfg(target="wasm-gc")
fn idb_cursor_advance_ffi(obj: JsValue, count: JsValue) -> Unit = "webapi_IDBCursor" "advance"

#cfg(target="wasm-gc")
fn idb_cursor_continue_ffi(obj: JsValue, key: JsValue) -> Unit = "webapi_IDBCursor" "continue"

#cfg(target="wasm-gc")
fn idb_cursor_continue_primary_key_ffi(obj: JsValue, key: JsValue, primary_key: JsValue) -> Unit = "webapi_IDBCursor" "continuePrimaryKey"

#cfg(target="wasm-gc")
fn idb_cursor_update_ffi(obj: JsValue, value: JsValue) -> IDBRequest = "webapi_IDBCursor" "update"

#cfg(target="wasm-gc")
fn idb_cursor_delete_ffi(obj: JsValue) -> IDBRequest = "webapi_IDBCursor" "delete"