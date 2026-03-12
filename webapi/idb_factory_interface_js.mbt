extern "js" fn idb_factory_open_ffi_js(obj: JsValue, name: JsValue, version: JsValue) -> JsValue = "(obj, name, version) => obj.open(name, version)"

///|
fn idb_factory_open_ffi(obj: JsValue, name: JsValue, version: JsValue) -> IDBOpenDBRequest {
  idb_factory_open_ffi_js(obj, name, version).unsafe_cast()
}

extern "js" fn idb_factory_delete_database_ffi_js(obj: JsValue, name: JsValue) -> JsValue = "(obj, name) => obj.deleteDatabase(name)"

///|
fn idb_factory_delete_database_ffi(obj: JsValue, name: JsValue) -> IDBOpenDBRequest {
  idb_factory_delete_database_ffi_js(obj, name).unsafe_cast()
}

extern "js" fn idb_factory_databases_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.databases()"

///|
fn idb_factory_databases_ffi(obj: JsValue) -> JsPromise[Array[IDBDatabaseInfo]] {
  idb_factory_databases_ffi_js(obj).unsafe_cast()
}

extern "js" fn idb_factory_cmp_ffi_js(obj: JsValue, first: JsValue, second: JsValue) -> JsValue = "(obj, first, second) => obj.cmp(first, second)"

///|
fn idb_factory_cmp_ffi(obj: JsValue, first: JsValue, second: JsValue) -> Int {
  idb_factory_cmp_ffi_js(obj, first, second).unsafe_cast()
}