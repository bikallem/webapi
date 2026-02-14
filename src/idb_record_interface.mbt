// Do not edit. This file is generated.
// MoonBit type: IDBRecord
// Specifications: IndexedDB.idl

///|
/// [IDBRecord](https://developer.mozilla.org/en-US/docs/Web/API/IDBRecord)
#external
pub type IDBRecord

///|
pub impl TJsValue for IDBRecord with to_js(self : IDBRecord) -> JsValue = "%identity"

///|
pub impl FromJsAny for IDBRecord with from_js_any(value : JsAny) -> IDBRecord = "%identity"

///|
pub fn[T : TIDBRecord] IDBRecord::into(self : IDBRecord) -> T = "%identity"

///|
pub impl TIDBRecord for IDBRecord

///|
/// [IDBRecord](https://developer.mozilla.org/en-US/docs/Web/API/IDBRecord) interface.
pub trait TIDBRecord: TJsValue {
  key(self : Self) -> JsValue = _
  primary_key(self : Self) -> JsValue = _
  value(self : Self) -> JsValue = _
}

///|
/// [IDBRecord.key](https://developer.mozilla.org/en-US/docs/Web/API/IDBRecord/key)
impl TIDBRecord with key(self : Self) -> JsValue {
  idb_record_key_ffi(TJsValue::to_js(self))
}

///|
/// [IDBRecord.primaryKey](https://developer.mozilla.org/en-US/docs/Web/API/IDBRecord/primaryKey)
impl TIDBRecord with primary_key(self : Self) -> JsValue {
  idb_record_primary_key_ffi(TJsValue::to_js(self))
}

///|
/// [IDBRecord.value](https://developer.mozilla.org/en-US/docs/Web/API/IDBRecord/value)
impl TIDBRecord with value(self : Self) -> JsValue {
  idb_record_value_ffi(TJsValue::to_js(self))
}
