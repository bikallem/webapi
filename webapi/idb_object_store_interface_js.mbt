///|
extern "js" fn idb_object_store_name_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.name"

///|
fn idb_object_store_name_ffi(obj : JsValue) -> String {
  idb_object_store_name_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn idb_object_store_set_name_ffi(
  obj : JsValue,
  name : JsValue,
) -> Unit = "(obj, name) => { obj.name = name; }"

///|
extern "js" fn idb_object_store_key_path_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.keyPath"

///|
fn idb_object_store_key_path_ffi(obj : JsValue) -> JsValue {
  idb_object_store_key_path_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn idb_object_store_index_names_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.indexNames"

///|
fn idb_object_store_index_names_ffi(obj : JsValue) -> DOMStringList {
  idb_object_store_index_names_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn idb_object_store_transaction_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.transaction"

///|
fn idb_object_store_transaction_ffi(obj : JsValue) -> IDBTransaction {
  idb_object_store_transaction_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn idb_object_store_auto_increment_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.autoIncrement"

///|
fn idb_object_store_auto_increment_ffi(obj : JsValue) -> Bool {
  idb_object_store_auto_increment_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn idb_object_store_put_ffi_js(
  obj : JsValue,
  value : JsValue,
  key : JsValue,
) -> JsValue = "(obj, value, key) => obj.put(value, key)"

///|
fn idb_object_store_put_ffi(
  obj : JsValue,
  value : JsValue,
  key : JsValue,
) -> IDBRequest {
  idb_object_store_put_ffi_js(obj, value, key).unsafe_cast()
}

///|
extern "js" fn idb_object_store_add_ffi_js(
  obj : JsValue,
  value : JsValue,
  key : JsValue,
) -> JsValue = "(obj, value, key) => obj.add(value, key)"

///|
fn idb_object_store_add_ffi(
  obj : JsValue,
  value : JsValue,
  key : JsValue,
) -> IDBRequest {
  idb_object_store_add_ffi_js(obj, value, key).unsafe_cast()
}

///|
extern "js" fn idb_object_store_delete_ffi_js(
  obj : JsValue,
  query : JsValue,
) -> JsValue = "(obj, query) => obj.delete(query)"

///|
fn idb_object_store_delete_ffi(obj : JsValue, query : JsValue) -> IDBRequest {
  idb_object_store_delete_ffi_js(obj, query).unsafe_cast()
}

///|
extern "js" fn idb_object_store_clear_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.clear()"

///|
fn idb_object_store_clear_ffi(obj : JsValue) -> IDBRequest {
  idb_object_store_clear_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn idb_object_store_get_ffi_js(
  obj : JsValue,
  query : JsValue,
) -> JsValue = "(obj, query) => obj.get(query)"

///|
fn idb_object_store_get_ffi(obj : JsValue, query : JsValue) -> IDBRequest {
  idb_object_store_get_ffi_js(obj, query).unsafe_cast()
}

///|
extern "js" fn idb_object_store_get_key_ffi_js(
  obj : JsValue,
  query : JsValue,
) -> JsValue = "(obj, query) => obj.getKey(query)"

///|
fn idb_object_store_get_key_ffi(obj : JsValue, query : JsValue) -> IDBRequest {
  idb_object_store_get_key_ffi_js(obj, query).unsafe_cast()
}

///|
extern "js" fn idb_object_store_get_all_ffi_js(
  obj : JsValue,
  query_or_options : JsValue,
  count : JsValue,
) -> JsValue = "(obj, query_or_options, count) => obj.getAll(query_or_options, count)"

///|
fn idb_object_store_get_all_ffi(
  obj : JsValue,
  query_or_options : JsValue,
  count : JsValue,
) -> IDBRequest {
  idb_object_store_get_all_ffi_js(obj, query_or_options, count).unsafe_cast()
}

///|
extern "js" fn idb_object_store_get_all_keys_ffi_js(
  obj : JsValue,
  query_or_options : JsValue,
  count : JsValue,
) -> JsValue = "(obj, query_or_options, count) => obj.getAllKeys(query_or_options, count)"

///|
fn idb_object_store_get_all_keys_ffi(
  obj : JsValue,
  query_or_options : JsValue,
  count : JsValue,
) -> IDBRequest {
  idb_object_store_get_all_keys_ffi_js(obj, query_or_options, count).unsafe_cast()
}

///|
extern "js" fn idb_object_store_get_all_records_ffi_js(
  obj : JsValue,
  options : JsValue,
) -> JsValue = "(obj, options) => obj.getAllRecords(options)"

///|
fn idb_object_store_get_all_records_ffi(
  obj : JsValue,
  options : JsValue,
) -> IDBRequest {
  idb_object_store_get_all_records_ffi_js(obj, options).unsafe_cast()
}

///|
extern "js" fn idb_object_store_count_ffi_js(
  obj : JsValue,
  query : JsValue,
) -> JsValue = "(obj, query) => obj.count(query)"

///|
fn idb_object_store_count_ffi(obj : JsValue, query : JsValue) -> IDBRequest {
  idb_object_store_count_ffi_js(obj, query).unsafe_cast()
}

///|
extern "js" fn idb_object_store_open_cursor_ffi_js(
  obj : JsValue,
  query : JsValue,
  direction : JsValue,
) -> JsValue = "(obj, query, direction) => obj.openCursor(query, direction)"

///|
fn idb_object_store_open_cursor_ffi(
  obj : JsValue,
  query : JsValue,
  direction : JsValue,
) -> IDBRequest {
  idb_object_store_open_cursor_ffi_js(obj, query, direction).unsafe_cast()
}

///|
extern "js" fn idb_object_store_open_key_cursor_ffi_js(
  obj : JsValue,
  query : JsValue,
  direction : JsValue,
) -> JsValue = "(obj, query, direction) => obj.openKeyCursor(query, direction)"

///|
fn idb_object_store_open_key_cursor_ffi(
  obj : JsValue,
  query : JsValue,
  direction : JsValue,
) -> IDBRequest {
  idb_object_store_open_key_cursor_ffi_js(obj, query, direction).unsafe_cast()
}

///|
extern "js" fn idb_object_store_index_ffi_js(
  obj : JsValue,
  name : JsValue,
) -> JsValue = "(obj, name) => obj.index(name)"

///|
fn idb_object_store_index_ffi(obj : JsValue, name : JsValue) -> IDBIndex {
  idb_object_store_index_ffi_js(obj, name).unsafe_cast()
}

///|
extern "js" fn idb_object_store_create_index_ffi_js(
  obj : JsValue,
  name : JsValue,
  key_path : JsValue,
  options : JsValue,
) -> JsValue = "(obj, name, key_path, options) => obj.createIndex(name, key_path, options)"

///|
fn idb_object_store_create_index_ffi(
  obj : JsValue,
  name : JsValue,
  key_path : JsValue,
  options : JsValue,
) -> IDBIndex {
  idb_object_store_create_index_ffi_js(obj, name, key_path, options).unsafe_cast()
}

///|
extern "js" fn idb_object_store_delete_index_ffi(
  obj : JsValue,
  name : JsValue,
) -> Unit = "(obj, name) => obj.deleteIndex(name)"
