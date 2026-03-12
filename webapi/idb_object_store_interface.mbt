// Do not edit. This file is generated.
// MoonBit type: IDBObjectStore
// Specifications: IndexedDB.idl

///|
/// [IDBObjectStore](https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore)
#external
pub type IDBObjectStore

///|
pub impl TJsValue for IDBObjectStore with to_js(self : IDBObjectStore) -> JsValue = "%identity"

///|
pub impl FromJsAny for IDBObjectStore with from_js_any(value : JsAny) -> IDBObjectStore = "%identity"

///|
pub fn[T : TIDBObjectStore] IDBObjectStore::into(self : IDBObjectStore) -> T = "%identity"

///|
pub impl TIDBObjectStore for IDBObjectStore

///|
pub(open) trait TIDBObjectStoreCreateIndexKeyPath: TJsValue {}

///|
pub impl TIDBObjectStoreCreateIndexKeyPath for String

///|
pub impl TIDBObjectStoreCreateIndexKeyPath for Array[String]

///|
/// [IDBObjectStore](https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore) interface.
pub trait TIDBObjectStore: TJsValue {
  name(self : Self) -> String = _
  set_name(self : Self, name : String) -> Unit = _
  key_path(self : Self) -> JsValue = _
  index_names(self : Self) -> DOMStringList = _
  transaction(self : Self) -> IDBTransaction = _
  auto_increment(self : Self) -> Bool = _
  put(self : Self, value : JsValue, key? : JsValue) -> IDBRequest = _
  add(self : Self, value : JsValue, key? : JsValue) -> IDBRequest = _
  delete(self : Self, query : JsValue) -> IDBRequest = _
  clear(self : Self) -> IDBRequest = _
  get(self : Self, query : JsValue) -> IDBRequest = _
  get_key(self : Self, query : JsValue) -> IDBRequest = _
  get_all(self : Self, query_or_options? : JsValue, count? : UInt) -> IDBRequest = _
  get_all_keys(self : Self, query_or_options? : JsValue, count? : UInt) -> IDBRequest = _
  get_all_records(self : Self, options? : IDBGetAllOptions) -> IDBRequest = _
  count(self : Self, query? : JsValue) -> IDBRequest = _
  open_cursor(self : Self, query? : JsValue, direction? : IDBCursorDirection) -> IDBRequest = _
  open_key_cursor(
    self : Self,
    query? : JsValue,
    direction? : IDBCursorDirection,
  ) -> IDBRequest = _
  index(self : Self, name : String) -> IDBIndex = _
  create_index(
    self : Self,
    name : String,
    key_path : &TIDBObjectStoreCreateIndexKeyPath,
    options? : IDBIndexParameters,
  ) -> IDBIndex = _
  delete_index(self : Self, name : String) -> Unit = _
}

///|
/// [IDBObjectStore.name](https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore/name)
impl TIDBObjectStore with name(self : Self) -> String {
  idb_object_store_name_ffi(TJsValue::to_js(self))
}

///|
/// [IDBObjectStore.name](https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore/name)
impl TIDBObjectStore with set_name(self : Self, name : String) -> Unit {
  idb_object_store_set_name_ffi(TJsValue::to_js(self), TJsValue::to_js(name))
}

///|
/// [IDBObjectStore.keyPath](https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore/keyPath)
impl TIDBObjectStore with key_path(self : Self) -> JsValue {
  idb_object_store_key_path_ffi(TJsValue::to_js(self))
}

///|
/// [IDBObjectStore.indexNames](https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore/indexNames)
impl TIDBObjectStore with index_names(self : Self) -> DOMStringList {
  idb_object_store_index_names_ffi(TJsValue::to_js(self))
}

///|
/// [IDBObjectStore.transaction](https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore/transaction)
impl TIDBObjectStore with transaction(self : Self) -> IDBTransaction {
  idb_object_store_transaction_ffi(TJsValue::to_js(self))
}

///|
/// [IDBObjectStore.autoIncrement](https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore/autoIncrement)
impl TIDBObjectStore with auto_increment(self : Self) -> Bool {
  idb_object_store_auto_increment_ffi(TJsValue::to_js(self))
}

///|
/// [IDBObjectStore.put](https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore/put)
impl TIDBObjectStore with put(self : Self, value : JsValue, key? : JsValue) -> IDBRequest {
  idb_object_store_put_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(value),
    opt_to_js(key),
  )
}

///|
/// [IDBObjectStore.add](https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore/add)
impl TIDBObjectStore with add(self : Self, value : JsValue, key? : JsValue) -> IDBRequest {
  idb_object_store_add_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(value),
    opt_to_js(key),
  )
}

///|
/// [IDBObjectStore.delete](https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore/delete)
impl TIDBObjectStore with delete(self : Self, query : JsValue) -> IDBRequest {
  idb_object_store_delete_ffi(TJsValue::to_js(self), TJsValue::to_js(query))
}

///|
/// [IDBObjectStore.clear](https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore/clear)
impl TIDBObjectStore with clear(self : Self) -> IDBRequest {
  idb_object_store_clear_ffi(TJsValue::to_js(self))
}

///|
/// [IDBObjectStore.get](https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore/get)
impl TIDBObjectStore with get(self : Self, query : JsValue) -> IDBRequest {
  idb_object_store_get_ffi(TJsValue::to_js(self), TJsValue::to_js(query))
}

///|
/// [IDBObjectStore.getKey](https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore/getKey)
impl TIDBObjectStore with get_key(self : Self, query : JsValue) -> IDBRequest {
  idb_object_store_get_key_ffi(TJsValue::to_js(self), TJsValue::to_js(query))
}

///|
/// [IDBObjectStore.getAll](https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore/getAll)
impl TIDBObjectStore with get_all(
  self : Self,
  query_or_options? : JsValue,
  count? : UInt,
) -> IDBRequest {
  idb_object_store_get_all_ffi(
    TJsValue::to_js(self),
    opt_to_js(query_or_options),
    opt_to_js(count),
  )
}

///|
/// [IDBObjectStore.getAllKeys](https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore/getAllKeys)
impl TIDBObjectStore with get_all_keys(
  self : Self,
  query_or_options? : JsValue,
  count? : UInt,
) -> IDBRequest {
  idb_object_store_get_all_keys_ffi(
    TJsValue::to_js(self),
    opt_to_js(query_or_options),
    opt_to_js(count),
  )
}

///|
/// [IDBObjectStore.getAllRecords](https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore/getAllRecords)
impl TIDBObjectStore with get_all_records(
  self : Self,
  options? : IDBGetAllOptions,
) -> IDBRequest {
  idb_object_store_get_all_records_ffi(
    TJsValue::to_js(self),
    opt_to_js(options),
  )
}

///|
/// [IDBObjectStore.count](https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore/count)
impl TIDBObjectStore with count(self : Self, query? : JsValue) -> IDBRequest {
  idb_object_store_count_ffi(TJsValue::to_js(self), opt_to_js(query))
}

///|
/// [IDBObjectStore.openCursor](https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore/openCursor)
impl TIDBObjectStore with open_cursor(
  self : Self,
  query? : JsValue,
  direction? : IDBCursorDirection,
) -> IDBRequest {
  idb_object_store_open_cursor_ffi(
    TJsValue::to_js(self),
    opt_to_js(query),
    opt_to_js(direction),
  )
}

///|
/// [IDBObjectStore.openKeyCursor](https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore/openKeyCursor)
impl TIDBObjectStore with open_key_cursor(
  self : Self,
  query? : JsValue,
  direction? : IDBCursorDirection,
) -> IDBRequest {
  idb_object_store_open_key_cursor_ffi(
    TJsValue::to_js(self),
    opt_to_js(query),
    opt_to_js(direction),
  )
}

///|
/// [IDBObjectStore.index](https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore/index)
impl TIDBObjectStore with index(self : Self, name : String) -> IDBIndex {
  idb_object_store_index_ffi(TJsValue::to_js(self), TJsValue::to_js(name))
}

///|
/// [IDBObjectStore.createIndex](https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore/createIndex)
impl TIDBObjectStore with create_index(
  self : Self,
  name : String,
  key_path : &TIDBObjectStoreCreateIndexKeyPath,
  options? : IDBIndexParameters,
) -> IDBIndex {
  idb_object_store_create_index_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(name),
    key_path.to_js(),
    opt_to_js(options),
  )
}

///|
/// [IDBObjectStore.deleteIndex](https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore/deleteIndex)
impl TIDBObjectStore with delete_index(self : Self, name : String) -> Unit {
  idb_object_store_delete_index_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(name),
  )
}

///|
#cfg(target="js")
extern "js" fn idb_object_store_name_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.name"

///|
#cfg(target="js")
fn idb_object_store_name_ffi(obj : JsValue) -> String {
  idb_object_store_name_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn idb_object_store_set_name_ffi(
  obj : JsValue,
  name : JsValue,
) -> Unit = "(obj, name) => { obj.name = name; }"

///|
#cfg(target="js")
extern "js" fn idb_object_store_key_path_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.keyPath"

///|
#cfg(target="js")
fn idb_object_store_key_path_ffi(obj : JsValue) -> JsValue {
  idb_object_store_key_path_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn idb_object_store_index_names_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.indexNames"

///|
#cfg(target="js")
fn idb_object_store_index_names_ffi(obj : JsValue) -> DOMStringList {
  idb_object_store_index_names_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn idb_object_store_transaction_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.transaction"

///|
#cfg(target="js")
fn idb_object_store_transaction_ffi(obj : JsValue) -> IDBTransaction {
  idb_object_store_transaction_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn idb_object_store_auto_increment_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.autoIncrement"

///|
#cfg(target="js")
fn idb_object_store_auto_increment_ffi(obj : JsValue) -> Bool {
  idb_object_store_auto_increment_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn idb_object_store_put_ffi_js(
  obj : JsValue,
  value : JsValue,
  key : JsValue,
) -> JsValue = "(obj, value, key) => obj.put(value, key)"

///|
#cfg(target="js")
fn idb_object_store_put_ffi(
  obj : JsValue,
  value : JsValue,
  key : JsValue,
) -> IDBRequest {
  idb_object_store_put_ffi_js(obj, value, key).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn idb_object_store_add_ffi_js(
  obj : JsValue,
  value : JsValue,
  key : JsValue,
) -> JsValue = "(obj, value, key) => obj.add(value, key)"

///|
#cfg(target="js")
fn idb_object_store_add_ffi(
  obj : JsValue,
  value : JsValue,
  key : JsValue,
) -> IDBRequest {
  idb_object_store_add_ffi_js(obj, value, key).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn idb_object_store_delete_ffi_js(
  obj : JsValue,
  query : JsValue,
) -> JsValue = "(obj, query) => obj.delete(query)"

///|
#cfg(target="js")
fn idb_object_store_delete_ffi(obj : JsValue, query : JsValue) -> IDBRequest {
  idb_object_store_delete_ffi_js(obj, query).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn idb_object_store_clear_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.clear()"

///|
#cfg(target="js")
fn idb_object_store_clear_ffi(obj : JsValue) -> IDBRequest {
  idb_object_store_clear_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn idb_object_store_get_ffi_js(
  obj : JsValue,
  query : JsValue,
) -> JsValue = "(obj, query) => obj.get(query)"

///|
#cfg(target="js")
fn idb_object_store_get_ffi(obj : JsValue, query : JsValue) -> IDBRequest {
  idb_object_store_get_ffi_js(obj, query).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn idb_object_store_get_key_ffi_js(
  obj : JsValue,
  query : JsValue,
) -> JsValue = "(obj, query) => obj.getKey(query)"

///|
#cfg(target="js")
fn idb_object_store_get_key_ffi(obj : JsValue, query : JsValue) -> IDBRequest {
  idb_object_store_get_key_ffi_js(obj, query).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn idb_object_store_get_all_ffi_js(
  obj : JsValue,
  query_or_options : JsValue,
  count : JsValue,
) -> JsValue = "(obj, query_or_options, count) => obj.getAll(query_or_options, count)"

///|
#cfg(target="js")
fn idb_object_store_get_all_ffi(
  obj : JsValue,
  query_or_options : JsValue,
  count : JsValue,
) -> IDBRequest {
  idb_object_store_get_all_ffi_js(obj, query_or_options, count).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn idb_object_store_get_all_keys_ffi_js(
  obj : JsValue,
  query_or_options : JsValue,
  count : JsValue,
) -> JsValue = "(obj, query_or_options, count) => obj.getAllKeys(query_or_options, count)"

///|
#cfg(target="js")
fn idb_object_store_get_all_keys_ffi(
  obj : JsValue,
  query_or_options : JsValue,
  count : JsValue,
) -> IDBRequest {
  idb_object_store_get_all_keys_ffi_js(obj, query_or_options, count).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn idb_object_store_get_all_records_ffi_js(
  obj : JsValue,
  options : JsValue,
) -> JsValue = "(obj, options) => obj.getAllRecords(options)"

///|
#cfg(target="js")
fn idb_object_store_get_all_records_ffi(
  obj : JsValue,
  options : JsValue,
) -> IDBRequest {
  idb_object_store_get_all_records_ffi_js(obj, options).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn idb_object_store_count_ffi_js(
  obj : JsValue,
  query : JsValue,
) -> JsValue = "(obj, query) => obj.count(query)"

///|
#cfg(target="js")
fn idb_object_store_count_ffi(obj : JsValue, query : JsValue) -> IDBRequest {
  idb_object_store_count_ffi_js(obj, query).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn idb_object_store_open_cursor_ffi_js(
  obj : JsValue,
  query : JsValue,
  direction : JsValue,
) -> JsValue = "(obj, query, direction) => obj.openCursor(query, direction)"

///|
#cfg(target="js")
fn idb_object_store_open_cursor_ffi(
  obj : JsValue,
  query : JsValue,
  direction : JsValue,
) -> IDBRequest {
  idb_object_store_open_cursor_ffi_js(obj, query, direction).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn idb_object_store_open_key_cursor_ffi_js(
  obj : JsValue,
  query : JsValue,
  direction : JsValue,
) -> JsValue = "(obj, query, direction) => obj.openKeyCursor(query, direction)"

///|
#cfg(target="js")
fn idb_object_store_open_key_cursor_ffi(
  obj : JsValue,
  query : JsValue,
  direction : JsValue,
) -> IDBRequest {
  idb_object_store_open_key_cursor_ffi_js(obj, query, direction).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn idb_object_store_index_ffi_js(
  obj : JsValue,
  name : JsValue,
) -> JsValue = "(obj, name) => obj.index(name)"

///|
#cfg(target="js")
fn idb_object_store_index_ffi(obj : JsValue, name : JsValue) -> IDBIndex {
  idb_object_store_index_ffi_js(obj, name).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn idb_object_store_create_index_ffi_js(
  obj : JsValue,
  name : JsValue,
  key_path : JsValue,
  options : JsValue,
) -> JsValue = "(obj, name, key_path, options) => obj.createIndex(name, key_path, options)"

///|
#cfg(target="js")
fn idb_object_store_create_index_ffi(
  obj : JsValue,
  name : JsValue,
  key_path : JsValue,
  options : JsValue,
) -> IDBIndex {
  idb_object_store_create_index_ffi_js(obj, name, key_path, options).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn idb_object_store_delete_index_ffi(
  obj : JsValue,
  name : JsValue,
) -> Unit = "(obj, name) => obj.deleteIndex(name)"

///|
#cfg(target="wasm-gc")
fn idb_object_store_name_ffi_wasm(obj : JsValue) -> JsValue = "webapi_IDBObjectStore" "get_name"

///|
#cfg(target="wasm-gc")
fn idb_object_store_name_ffi(obj : JsValue) -> String {
  jsvalue_to_string(idb_object_store_name_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn idb_object_store_set_name_ffi(obj : JsValue, name : JsValue) -> Unit = "webapi_IDBObjectStore" "set_name"

///|
#cfg(target="wasm-gc")
fn idb_object_store_key_path_ffi(obj : JsValue) -> JsValue = "webapi_IDBObjectStore" "get_keyPath"

///|
#cfg(target="wasm-gc")
fn idb_object_store_index_names_ffi(obj : JsValue) -> DOMStringList = "webapi_IDBObjectStore" "get_indexNames"

///|
#cfg(target="wasm-gc")
fn idb_object_store_transaction_ffi(obj : JsValue) -> IDBTransaction = "webapi_IDBObjectStore" "get_transaction"

///|
#cfg(target="wasm-gc")
fn idb_object_store_auto_increment_ffi(obj : JsValue) -> Bool = "webapi_IDBObjectStore" "get_autoIncrement"

///|
#cfg(target="wasm-gc")
fn idb_object_store_put_ffi(
  obj : JsValue,
  value : JsValue,
  key : JsValue,
) -> IDBRequest = "webapi_IDBObjectStore" "put"

///|
#cfg(target="wasm-gc")
fn idb_object_store_add_ffi(
  obj : JsValue,
  value : JsValue,
  key : JsValue,
) -> IDBRequest = "webapi_IDBObjectStore" "add"

///|
#cfg(target="wasm-gc")
fn idb_object_store_delete_ffi(obj : JsValue, query : JsValue) -> IDBRequest = "webapi_IDBObjectStore" "delete"

///|
#cfg(target="wasm-gc")
fn idb_object_store_clear_ffi(obj : JsValue) -> IDBRequest = "webapi_IDBObjectStore" "clear"

///|
#cfg(target="wasm-gc")
fn idb_object_store_get_ffi(obj : JsValue, query : JsValue) -> IDBRequest = "webapi_IDBObjectStore" "get"

///|
#cfg(target="wasm-gc")
fn idb_object_store_get_key_ffi(obj : JsValue, query : JsValue) -> IDBRequest = "webapi_IDBObjectStore" "getKey"

///|
#cfg(target="wasm-gc")
fn idb_object_store_get_all_ffi(
  obj : JsValue,
  query_or_options : JsValue,
  count : JsValue,
) -> IDBRequest = "webapi_IDBObjectStore" "getAll"

///|
#cfg(target="wasm-gc")
fn idb_object_store_get_all_keys_ffi(
  obj : JsValue,
  query_or_options : JsValue,
  count : JsValue,
) -> IDBRequest = "webapi_IDBObjectStore" "getAllKeys"

///|
#cfg(target="wasm-gc")
fn idb_object_store_get_all_records_ffi(
  obj : JsValue,
  options : JsValue,
) -> IDBRequest = "webapi_IDBObjectStore" "getAllRecords"

///|
#cfg(target="wasm-gc")
fn idb_object_store_count_ffi(obj : JsValue, query : JsValue) -> IDBRequest = "webapi_IDBObjectStore" "count"

///|
#cfg(target="wasm-gc")
fn idb_object_store_open_cursor_ffi(
  obj : JsValue,
  query : JsValue,
  direction : JsValue,
) -> IDBRequest = "webapi_IDBObjectStore" "openCursor"

///|
#cfg(target="wasm-gc")
fn idb_object_store_open_key_cursor_ffi(
  obj : JsValue,
  query : JsValue,
  direction : JsValue,
) -> IDBRequest = "webapi_IDBObjectStore" "openKeyCursor"

///|
#cfg(target="wasm-gc")
fn idb_object_store_index_ffi(obj : JsValue, name : JsValue) -> IDBIndex = "webapi_IDBObjectStore" "index"

///|
#cfg(target="wasm-gc")
fn idb_object_store_create_index_ffi(
  obj : JsValue,
  name : JsValue,
  key_path : JsValue,
  options : JsValue,
) -> IDBIndex = "webapi_IDBObjectStore" "createIndex"

///|
#cfg(target="wasm-gc")
fn idb_object_store_delete_index_ffi(obj : JsValue, name : JsValue) -> Unit = "webapi_IDBObjectStore" "deleteIndex"
