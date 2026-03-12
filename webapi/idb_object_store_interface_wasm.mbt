fn idb_object_store_name_ffi_wasm(obj: JsValue) -> JsValue = "webapi_IDBObjectStore" "get_name"

///|
fn idb_object_store_name_ffi(obj: JsValue) -> String {
  jsvalue_to_string(idb_object_store_name_ffi_wasm(obj))
}

fn idb_object_store_set_name_ffi(obj: JsValue, name: JsValue) -> Unit = "webapi_IDBObjectStore" "set_name"

fn idb_object_store_key_path_ffi(obj: JsValue) -> JsValue = "webapi_IDBObjectStore" "get_keyPath"

fn idb_object_store_index_names_ffi(obj: JsValue) -> DOMStringList = "webapi_IDBObjectStore" "get_indexNames"

fn idb_object_store_transaction_ffi(obj: JsValue) -> IDBTransaction = "webapi_IDBObjectStore" "get_transaction"

fn idb_object_store_auto_increment_ffi(obj: JsValue) -> Bool = "webapi_IDBObjectStore" "get_autoIncrement"

fn idb_object_store_put_ffi(obj: JsValue, value: JsValue, key: JsValue) -> IDBRequest = "webapi_IDBObjectStore" "put"

fn idb_object_store_add_ffi(obj: JsValue, value: JsValue, key: JsValue) -> IDBRequest = "webapi_IDBObjectStore" "add"

fn idb_object_store_delete_ffi(obj: JsValue, query: JsValue) -> IDBRequest = "webapi_IDBObjectStore" "delete"

fn idb_object_store_clear_ffi(obj: JsValue) -> IDBRequest = "webapi_IDBObjectStore" "clear"

fn idb_object_store_get_ffi(obj: JsValue, query: JsValue) -> IDBRequest = "webapi_IDBObjectStore" "get"

fn idb_object_store_get_key_ffi(obj: JsValue, query: JsValue) -> IDBRequest = "webapi_IDBObjectStore" "getKey"

fn idb_object_store_get_all_ffi(obj: JsValue, query_or_options: JsValue, count: JsValue) -> IDBRequest = "webapi_IDBObjectStore" "getAll"

fn idb_object_store_get_all_keys_ffi(obj: JsValue, query_or_options: JsValue, count: JsValue) -> IDBRequest = "webapi_IDBObjectStore" "getAllKeys"

fn idb_object_store_get_all_records_ffi(obj: JsValue, options: JsValue) -> IDBRequest = "webapi_IDBObjectStore" "getAllRecords"

fn idb_object_store_count_ffi(obj: JsValue, query: JsValue) -> IDBRequest = "webapi_IDBObjectStore" "count"

fn idb_object_store_open_cursor_ffi(obj: JsValue, query: JsValue, direction: JsValue) -> IDBRequest = "webapi_IDBObjectStore" "openCursor"

fn idb_object_store_open_key_cursor_ffi(obj: JsValue, query: JsValue, direction: JsValue) -> IDBRequest = "webapi_IDBObjectStore" "openKeyCursor"

fn idb_object_store_index_ffi(obj: JsValue, name: JsValue) -> IDBIndex = "webapi_IDBObjectStore" "index"

fn idb_object_store_create_index_ffi(obj: JsValue, name: JsValue, key_path: JsValue, options: JsValue) -> IDBIndex = "webapi_IDBObjectStore" "createIndex"

fn idb_object_store_delete_index_ffi(obj: JsValue, name: JsValue) -> Unit = "webapi_IDBObjectStore" "deleteIndex"