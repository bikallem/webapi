fn idb_object_store_parameters_ffi(key_path: JsValue, auto_increment: JsValue) -> IDBObjectStoreParameters = "webapi_IDBObjectStoreParameters" "new"

fn idb_object_store_parameters_empty_ffi() -> IDBObjectStoreParameters = "webapi_Dictionary" "empty"

fn idb_object_store_parameters_get_key_path_ffi(obj: JsValue) -> JsValue = "webapi_IDBObjectStoreParameters" "get_keyPath"

fn idb_object_store_parameters_get_auto_increment_ffi(obj: JsValue) -> JsValue = "webapi_IDBObjectStoreParameters" "get_autoIncrement"