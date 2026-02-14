// Do not edit. This file is generated.
// MoonBit type: IDBDatabaseInfo
// Specifications: IndexedDB.idl

///|
/// [IDBDatabaseInfo](https://developer.mozilla.org/en-US/docs/Web/API/IDBDatabaseInfo)
#external
pub type IDBDatabaseInfo

///|
pub impl TJsValue for IDBDatabaseInfo with to_js(self : IDBDatabaseInfo) -> JsValue = "%identity"

///|
pub impl FromJsAny for IDBDatabaseInfo with from_js_any(value : JsAny) -> IDBDatabaseInfo = "%identity"

///|
pub fn IDBDatabaseInfo::new(
  name? : String,
  version? : UInt64,
) -> IDBDatabaseInfo {
  idb_database_info_ffi(opt_to_js(name), opt_to_js(version))
}

///|
pub fn IDBDatabaseInfo::empty() -> IDBDatabaseInfo {
  idb_database_info_empty_ffi()
}
