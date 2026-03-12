extern "js" fn idb_index_name_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.name"

///|
fn idb_index_name_ffi(obj: JsValue) -> String {
  idb_index_name_ffi_js(obj).unsafe_cast()
}

extern "js" fn idb_index_set_name_ffi(obj: JsValue, name: JsValue) -> Unit = "(obj, name) => { obj.name = name; }"

extern "js" fn idb_index_object_store_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.objectStore"

///|
fn idb_index_object_store_ffi(obj: JsValue) -> IDBObjectStore {
  idb_index_object_store_ffi_js(obj).unsafe_cast()
}

extern "js" fn idb_index_key_path_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.keyPath"

///|
fn idb_index_key_path_ffi(obj: JsValue) -> JsValue {
  idb_index_key_path_ffi_js(obj).unsafe_cast()
}

extern "js" fn idb_index_multi_entry_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.multiEntry"

///|
fn idb_index_multi_entry_ffi(obj: JsValue) -> Bool {
  idb_index_multi_entry_ffi_js(obj).unsafe_cast()
}

extern "js" fn idb_index_unique_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.unique"

///|
fn idb_index_unique_ffi(obj: JsValue) -> Bool {
  idb_index_unique_ffi_js(obj).unsafe_cast()
}

extern "js" fn idb_index_get_ffi_js(obj: JsValue, query: JsValue) -> JsValue = "(obj, query) => obj.get(query)"

///|
fn idb_index_get_ffi(obj: JsValue, query: JsValue) -> IDBRequest {
  idb_index_get_ffi_js(obj, query).unsafe_cast()
}

extern "js" fn idb_index_get_key_ffi_js(obj: JsValue, query: JsValue) -> JsValue = "(obj, query) => obj.getKey(query)"

///|
fn idb_index_get_key_ffi(obj: JsValue, query: JsValue) -> IDBRequest {
  idb_index_get_key_ffi_js(obj, query).unsafe_cast()
}

extern "js" fn idb_index_get_all_ffi_js(obj: JsValue, query_or_options: JsValue, count: JsValue) -> JsValue = "(obj, query_or_options, count) => obj.getAll(query_or_options, count)"

///|
fn idb_index_get_all_ffi(obj: JsValue, query_or_options: JsValue, count: JsValue) -> IDBRequest {
  idb_index_get_all_ffi_js(obj, query_or_options, count).unsafe_cast()
}

extern "js" fn idb_index_get_all_keys_ffi_js(obj: JsValue, query_or_options: JsValue, count: JsValue) -> JsValue = "(obj, query_or_options, count) => obj.getAllKeys(query_or_options, count)"

///|
fn idb_index_get_all_keys_ffi(obj: JsValue, query_or_options: JsValue, count: JsValue) -> IDBRequest {
  idb_index_get_all_keys_ffi_js(obj, query_or_options, count).unsafe_cast()
}

extern "js" fn idb_index_get_all_records_ffi_js(obj: JsValue, options: JsValue) -> JsValue = "(obj, options) => obj.getAllRecords(options)"

///|
fn idb_index_get_all_records_ffi(obj: JsValue, options: JsValue) -> IDBRequest {
  idb_index_get_all_records_ffi_js(obj, options).unsafe_cast()
}

extern "js" fn idb_index_count_ffi_js(obj: JsValue, query: JsValue) -> JsValue = "(obj, query) => obj.count(query)"

///|
fn idb_index_count_ffi(obj: JsValue, query: JsValue) -> IDBRequest {
  idb_index_count_ffi_js(obj, query).unsafe_cast()
}

extern "js" fn idb_index_open_cursor_ffi_js(obj: JsValue, query: JsValue, direction: JsValue) -> JsValue = "(obj, query, direction) => obj.openCursor(query, direction)"

///|
fn idb_index_open_cursor_ffi(obj: JsValue, query: JsValue, direction: JsValue) -> IDBRequest {
  idb_index_open_cursor_ffi_js(obj, query, direction).unsafe_cast()
}

extern "js" fn idb_index_open_key_cursor_ffi_js(obj: JsValue, query: JsValue, direction: JsValue) -> JsValue = "(obj, query, direction) => obj.openKeyCursor(query, direction)"

///|
fn idb_index_open_key_cursor_ffi(obj: JsValue, query: JsValue, direction: JsValue) -> IDBRequest {
  idb_index_open_key_cursor_ffi_js(obj, query, direction).unsafe_cast()
}