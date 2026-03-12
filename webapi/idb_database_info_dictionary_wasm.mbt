fn idb_database_info_ffi(name: JsValue, version: JsValue) -> IDBDatabaseInfo = "webapi_IDBDatabaseInfo" "new"

fn idb_database_info_empty_ffi() -> IDBDatabaseInfo = "webapi_Dictionary" "empty"

fn idb_database_info_get_name_ffi(obj: JsValue) -> JsValue = "webapi_IDBDatabaseInfo" "get_name"

fn idb_database_info_get_version_ffi(obj: JsValue) -> JsValue = "webapi_IDBDatabaseInfo" "get_version"