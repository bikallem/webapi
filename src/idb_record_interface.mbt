// Do not edit. This file is generated.
// MoonBit type: IDBRecord
// Specifications: IndexedDB.idl

/// [IDBRecord](https://developer.mozilla.org/en-US/docs/Web/API/IDBRecord)
#external
pub type IDBRecord

pub impl TJsValue for IDBRecord with to_js(self: IDBRecord) -> JsValue = "%identity"

pub impl FromJsAny for IDBRecord with from_js_any(value : JsAny) -> IDBRecord = "%identity"

/// Unchecked downcast — no runtime type check is performed.
/// Prefer `try_into()` for checked downcasts.
#deprecated("Use unsafe_into or try_into instead")
pub fn[T: TIDBRecord] IDBRecord::into(self : IDBRecord) -> T = "%identity"

/// Unchecked downcast — no runtime type check is performed.
/// WARNING: If the underlying JS value is not of type T, this will silently
/// produce a value with incorrect type, leading to undefined behavior.
pub fn[T: TIDBRecord] IDBRecord::unsafe_into(self : IDBRecord) -> T = "%identity"

pub impl HasConstructor for IDBRecord with constructor_name() { "IDBRecord" }

/// Checked downcast — returns None if the JS value is not an instance of T.
pub fn[T : TIDBRecord + HasConstructor] IDBRecord::try_into(self : IDBRecord) -> T? {
  if js_instanceof(TJsValue::to_js(self), T::constructor_name()) {
    Some(self.unsafe_into())
  } else {
    None
  }
}

pub impl TIDBRecord for IDBRecord

/// [IDBRecord](https://developer.mozilla.org/en-US/docs/Web/API/IDBRecord) interface.
pub trait TIDBRecord: TJsValue {
  key(self : Self) -> JsValue = _
  primary_key(self : Self) -> JsValue = _
  value(self : Self) -> JsValue = _
}

/// [IDBRecord.key](https://developer.mozilla.org/en-US/docs/Web/API/IDBRecord/key)
impl TIDBRecord with key(self : Self) -> JsValue {
  idb_record_key_ffi(TJsValue::to_js(self))
}

/// [IDBRecord.primaryKey](https://developer.mozilla.org/en-US/docs/Web/API/IDBRecord/primaryKey)
impl TIDBRecord with primary_key(self : Self) -> JsValue {
  idb_record_primary_key_ffi(TJsValue::to_js(self))
}

/// [IDBRecord.value](https://developer.mozilla.org/en-US/docs/Web/API/IDBRecord/value)
impl TIDBRecord with value(self : Self) -> JsValue {
  idb_record_value_ffi(TJsValue::to_js(self))
}

#cfg(target="js")
extern "js" fn idb_record_key_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.key"

///|
#cfg(target="js")
fn idb_record_key_ffi(obj: JsValue) -> JsValue {
  idb_record_key_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn idb_record_primary_key_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.primaryKey"

///|
#cfg(target="js")
fn idb_record_primary_key_ffi(obj: JsValue) -> JsValue {
  idb_record_primary_key_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn idb_record_value_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.value"

///|
#cfg(target="js")
fn idb_record_value_ffi(obj: JsValue) -> JsValue {
  idb_record_value_ffi_js(obj).unsafe_cast()
}

#cfg(target="wasm-gc")
fn idb_record_key_ffi(obj: JsValue) -> JsValue = "webapi_IDBRecord" "get_key"

#cfg(target="wasm-gc")
fn idb_record_primary_key_ffi(obj: JsValue) -> JsValue = "webapi_IDBRecord" "get_primaryKey"

#cfg(target="wasm-gc")
fn idb_record_value_ffi(obj: JsValue) -> JsValue = "webapi_IDBRecord" "get_value"