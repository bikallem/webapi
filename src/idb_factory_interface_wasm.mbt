///|
fn idb_factory_open_ffi(
  obj : JsValue,
  name : JsValue,
  version : JsValue,
) -> IDBOpenDBRequest = "webapi_IDBFactory" "open"

///|
fn idb_factory_delete_database_ffi(
  obj : JsValue,
  name : JsValue,
) -> IDBOpenDBRequest = "webapi_IDBFactory" "deleteDatabase"

///|
fn idb_factory_databases_ffi_wasm(obj : JsValue) -> JsValue = "webapi_IDBFactory" "databases"

///|
fn idb_factory_databases_ffi(
  obj : JsValue,
) -> JsPromise[Array[IDBDatabaseInfo]] {
  idb_factory_databases_ffi_wasm(obj).unsafe_cast()
}

///|
fn idb_factory_cmp_ffi(obj : JsValue, first : JsValue, second : JsValue) -> Int = "webapi_IDBFactory" "cmp"
