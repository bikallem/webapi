fn idb_index_parameters_ffi(unique: JsValue, multi_entry: JsValue) -> IDBIndexParameters = "webapi_IDBIndexParameters" "new"

fn idb_index_parameters_empty_ffi() -> IDBIndexParameters = "webapi_Dictionary" "empty"

fn idb_index_parameters_get_unique_ffi(obj: JsValue) -> JsValue = "webapi_IDBIndexParameters" "get_unique"

fn idb_index_parameters_get_multi_entry_ffi(obj: JsValue) -> JsValue = "webapi_IDBIndexParameters" "get_multiEntry"