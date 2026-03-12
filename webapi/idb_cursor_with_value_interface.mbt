// Do not edit. This file is generated.
// MoonBit type: IDBCursorWithValue
// Specifications: IndexedDB.idl

///|
/// [IDBCursorWithValue](https://developer.mozilla.org/en-US/docs/Web/API/IDBCursorWithValue)
#external
pub type IDBCursorWithValue

///|
pub impl TJsValue for IDBCursorWithValue with to_js(self : IDBCursorWithValue) -> JsValue = "%identity"

///|
pub impl FromJsAny for IDBCursorWithValue with from_js_any(value : JsAny) -> IDBCursorWithValue = "%identity"

///|
pub fn[T : TIDBCursorWithValue] IDBCursorWithValue::into(
  self : IDBCursorWithValue,
) -> T = "%identity"

///|
pub impl TIDBCursorWithValue for IDBCursorWithValue

///|
pub impl TIDBCursor for IDBCursorWithValue

///|
/// [IDBCursorWithValue](https://developer.mozilla.org/en-US/docs/Web/API/IDBCursorWithValue) interface.
pub trait TIDBCursorWithValue: TIDBCursor {
  value(self : Self) -> JsValue = _
}

///|
/// [IDBCursorWithValue.value](https://developer.mozilla.org/en-US/docs/Web/API/IDBCursorWithValue/value)
impl TIDBCursorWithValue with value(self : Self) -> JsValue {
  idb_cursor_with_value_value_ffi(TJsValue::to_js(self))
}

///|
#cfg(target="js")
extern "js" fn idb_cursor_with_value_value_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.value"

///|
#cfg(target="js")
fn idb_cursor_with_value_value_ffi(obj : JsValue) -> JsValue {
  idb_cursor_with_value_value_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn idb_cursor_with_value_value_ffi(obj : JsValue) -> JsValue = "webapi_IDBCursorWithValue" "get_value"
