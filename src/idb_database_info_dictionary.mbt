// Do not edit. This file is generated.
// MoonBit type: IDBDatabaseInfo
// Specifications: IndexedDB.idl

/// [IDBDatabaseInfo](https://developer.mozilla.org/en-US/docs/Web/API/IDBDatabaseInfo)
#external
pub type IDBDatabaseInfo

pub impl TJsValue for IDBDatabaseInfo with to_js(self: IDBDatabaseInfo) -> JsValue = "%identity"

pub impl FromJsAny for IDBDatabaseInfo with from_js_any(value : JsAny) -> IDBDatabaseInfo = "%identity"

pub fn IDBDatabaseInfo::new(name? : String, 
version? : UInt64) -> IDBDatabaseInfo {
  idb_database_info_ffi(opt_to_js(name), opt_to_js(version))
}

pub fn IDBDatabaseInfo::empty() -> IDBDatabaseInfo { idb_database_info_empty_ffi() }

pub fn IDBDatabaseInfo::name(self : IDBDatabaseInfo) -> String? {
  idb_database_info_get_name_ffi(TJsValue::to_js(self)).to_option_prim()
}

pub fn IDBDatabaseInfo::version(self : IDBDatabaseInfo) -> UInt64? {
  idb_database_info_get_version_ffi(TJsValue::to_js(self)).to_option_prim()
}

#cfg(target="js")
extern "js" fn idb_database_info_ffi(name: JsValue, version: JsValue) -> IDBDatabaseInfo = 
#|(name, version) => {
#|  const obj = {};
#|  if (name !== undefined) obj.name = name;
#|  if (version !== undefined) obj.version = version;
#|  return obj;
#|}

#cfg(target="js")
extern "js" fn idb_database_info_empty_ffi() -> IDBDatabaseInfo = "() => {}"

#cfg(target="js")
extern "js" fn idb_database_info_get_name_ffi(obj: JsValue) -> JsValue = "(obj) => obj.name"

#cfg(target="js")
extern "js" fn idb_database_info_get_version_ffi(obj: JsValue) -> JsValue = "(obj) => obj.version"

#cfg(target="wasm-gc")
fn idb_database_info_ffi(name: JsValue, version: JsValue) -> IDBDatabaseInfo = "webapi_IDBDatabaseInfo" "new"

#cfg(target="wasm-gc")
fn idb_database_info_empty_ffi() -> IDBDatabaseInfo = "webapi_Dictionary" "empty"

#cfg(target="wasm-gc")
fn idb_database_info_get_name_ffi(obj: JsValue) -> JsValue = "webapi_IDBDatabaseInfo" "get_name"

#cfg(target="wasm-gc")
fn idb_database_info_get_version_ffi(obj: JsValue) -> JsValue = "webapi_IDBDatabaseInfo" "get_version"