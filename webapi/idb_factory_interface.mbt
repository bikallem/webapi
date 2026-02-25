// Do not edit. This file is generated.
// MoonBit type: IDBFactory
// Specifications: IndexedDB.idl

///|
/// [IDBFactory](https://developer.mozilla.org/en-US/docs/Web/API/IDBFactory)
#external
pub type IDBFactory

///|
pub impl TJsValue for IDBFactory with to_js(self : IDBFactory) -> JsValue = "%identity"

///|
pub impl FromJsAny for IDBFactory with from_js_any(value : JsAny) -> IDBFactory = "%identity"

///|
pub fn[T : TIDBFactory] IDBFactory::into(self : IDBFactory) -> T = "%identity"

///|
pub impl TIDBFactory for IDBFactory

///|
/// [IDBFactory](https://developer.mozilla.org/en-US/docs/Web/API/IDBFactory) interface.
pub trait TIDBFactory: TJsValue {
  open(self : Self, name : String, version? : UInt64) -> IDBOpenDBRequest = _
  delete_database(self : Self, name : String) -> IDBOpenDBRequest = _
  databases(self : Self) -> JsPromise[Array[IDBDatabaseInfo]] = _
  cmp(self : Self, first : JsValue, second : JsValue) -> Int = _
}

///|
/// [IDBFactory.open](https://developer.mozilla.org/en-US/docs/Web/API/IDBFactory/open)
impl TIDBFactory with open(self : Self, name : String, version? : UInt64) -> IDBOpenDBRequest {
  idb_factory_open_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(name),
    opt_to_js(version),
  )
}

///|
/// [IDBFactory.deleteDatabase](https://developer.mozilla.org/en-US/docs/Web/API/IDBFactory/deleteDatabase)
impl TIDBFactory with delete_database(self : Self, name : String) -> IDBOpenDBRequest {
  idb_factory_delete_database_ffi(TJsValue::to_js(self), TJsValue::to_js(name))
}

///|
/// [IDBFactory.databases](https://developer.mozilla.org/en-US/docs/Web/API/IDBFactory/databases)
impl TIDBFactory with databases(self : Self) -> JsPromise[
  Array[IDBDatabaseInfo],
] {
  idb_factory_databases_ffi(TJsValue::to_js(self))
}

///|
/// [IDBFactory.cmp](https://developer.mozilla.org/en-US/docs/Web/API/IDBFactory/cmp)
impl TIDBFactory with cmp(self : Self, first : JsValue, second : JsValue) -> Int {
  idb_factory_cmp_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(first),
    TJsValue::to_js(second),
  )
}
