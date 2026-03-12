fn idb_index_name_ffi_wasm(obj: JsValue) -> JsValue = "webapi_IDBIndex" "get_name"

///|
fn idb_index_name_ffi(obj: JsValue) -> String {
  jsvalue_to_string(idb_index_name_ffi_wasm(obj))
}

fn idb_index_set_name_ffi(obj: JsValue, name: JsValue) -> Unit = "webapi_IDBIndex" "set_name"

fn idb_index_object_store_ffi(obj: JsValue) -> IDBObjectStore = "webapi_IDBIndex" "get_objectStore"

fn idb_index_key_path_ffi(obj: JsValue) -> JsValue = "webapi_IDBIndex" "get_keyPath"

fn idb_index_multi_entry_ffi(obj: JsValue) -> Bool = "webapi_IDBIndex" "get_multiEntry"

fn idb_index_unique_ffi(obj: JsValue) -> Bool = "webapi_IDBIndex" "get_unique"

fn idb_index_get_ffi(obj: JsValue, query: JsValue) -> IDBRequest = "webapi_IDBIndex" "get"

fn idb_index_get_key_ffi(obj: JsValue, query: JsValue) -> IDBRequest = "webapi_IDBIndex" "getKey"

fn idb_index_get_all_ffi(obj: JsValue, query_or_options: JsValue, count: JsValue) -> IDBRequest = "webapi_IDBIndex" "getAll"

fn idb_index_get_all_keys_ffi(obj: JsValue, query_or_options: JsValue, count: JsValue) -> IDBRequest = "webapi_IDBIndex" "getAllKeys"

fn idb_index_get_all_records_ffi(obj: JsValue, options: JsValue) -> IDBRequest = "webapi_IDBIndex" "getAllRecords"

fn idb_index_count_ffi(obj: JsValue, query: JsValue) -> IDBRequest = "webapi_IDBIndex" "count"

fn idb_index_open_cursor_ffi(obj: JsValue, query: JsValue, direction: JsValue) -> IDBRequest = "webapi_IDBIndex" "openCursor"

fn idb_index_open_key_cursor_ffi(obj: JsValue, query: JsValue, direction: JsValue) -> IDBRequest = "webapi_IDBIndex" "openKeyCursor"