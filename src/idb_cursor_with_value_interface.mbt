// Do not edit. This file is generated.
// MoonBit type: IDBCursorWithValue
// Specifications: IndexedDB.idl

/// [IDBCursorWithValue](https://developer.mozilla.org/en-US/docs/Web/API/IDBCursorWithValue)
#external
pub type IDBCursorWithValue

pub impl TJsValue for IDBCursorWithValue with to_js(self: IDBCursorWithValue) -> JsValue = "%identity"

pub impl FromJsAny for IDBCursorWithValue with from_js_any(value : JsAny) -> IDBCursorWithValue = "%identity"

/// Unchecked downcast — no runtime type check is performed.
/// Prefer `try_into()` for checked downcasts.
#deprecated("Use unsafe_into or try_into instead")
pub fn[T: TIDBCursorWithValue] IDBCursorWithValue::into(self : IDBCursorWithValue) -> T = "%identity"

/// Unchecked downcast — no runtime type check is performed.
/// WARNING: If the underlying JS value is not of type T, this will silently
/// produce a value with incorrect type, leading to undefined behavior.
pub fn[T: TIDBCursorWithValue] IDBCursorWithValue::unsafe_into(self : IDBCursorWithValue) -> T = "%identity"

pub impl HasConstructor for IDBCursorWithValue with constructor_name() { "IDBCursorWithValue" }

/// Checked downcast — returns None if the JS value is not an instance of T.
pub fn[T : TIDBCursorWithValue + HasConstructor] IDBCursorWithValue::try_into(self : IDBCursorWithValue) -> T? {
  if js_instanceof(TJsValue::to_js(self), T::constructor_name()) {
    Some(self.unsafe_into())
  } else {
    None
  }
}

pub impl TIDBCursorWithValue for IDBCursorWithValue

pub impl TIDBCursor for IDBCursorWithValue

/// [IDBCursorWithValue](https://developer.mozilla.org/en-US/docs/Web/API/IDBCursorWithValue) interface.
pub trait TIDBCursorWithValue: TIDBCursor {
  value(self : Self) -> JsValue = _
}

/// [IDBCursorWithValue.value](https://developer.mozilla.org/en-US/docs/Web/API/IDBCursorWithValue/value)
impl TIDBCursorWithValue with value(self : Self) -> JsValue {
  idb_cursor_with_value_value_ffi(TJsValue::to_js(self))
}

#cfg(target="js")
extern "js" fn idb_cursor_with_value_value_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.value"

///|
#cfg(target="js")
fn idb_cursor_with_value_value_ffi(obj: JsValue) -> JsValue {
  idb_cursor_with_value_value_ffi_js(obj).unsafe_cast()
}

#cfg(target="wasm-gc")
fn idb_cursor_with_value_value_ffi(obj: JsValue) -> JsValue = "webapi_IDBCursorWithValue" "get_value"