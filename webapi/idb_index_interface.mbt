// Do not edit. This file is generated.
// MoonBit type: IDBIndex
// Specifications: IndexedDB.idl

///|
/// [IDBIndex](https://developer.mozilla.org/en-US/docs/Web/API/IDBIndex)
#external
pub type IDBIndex

///|
pub impl TJsValue for IDBIndex with to_js(self : IDBIndex) -> JsValue = "%identity"

///|
pub impl FromJsAny for IDBIndex with from_js_any(value : JsAny) -> IDBIndex = "%identity"

///|
/// Unchecked downcast — no runtime type check is performed.
/// Prefer `try_into()` for checked downcasts.
#deprecated("Use unsafe_into or try_into instead")
pub fn[T : TIDBIndex] IDBIndex::into(self : IDBIndex) -> T = "%identity"

///|
/// Unchecked downcast — no runtime type check is performed.
/// WARNING: If the underlying JS value is not of type T, this will silently
/// produce a value with incorrect type, leading to undefined behavior.
pub fn[T : TIDBIndex] IDBIndex::unsafe_into(self : IDBIndex) -> T = "%identity"

///|
pub impl HasConstructor for IDBIndex with constructor_name() {
  "IDBIndex"
}

///|
/// Checked downcast — returns None if the JS value is not an instance of T.
pub fn[T : TIDBIndex + HasConstructor] IDBIndex::try_into(
  self : IDBIndex,
) -> T? {
  if js_instanceof(TJsValue::to_js(self), T::constructor_name()) {
    Some(self.unsafe_into())
  } else {
    None
  }
}

///|
pub impl TIDBIndex for IDBIndex

///|
/// [IDBIndex](https://developer.mozilla.org/en-US/docs/Web/API/IDBIndex) interface.
pub trait TIDBIndex: TJsValue {
  name(self : Self) -> String = _
  set_name(self : Self, name : String) -> Unit = _
  object_store(self : Self) -> IDBObjectStore = _
  key_path(self : Self) -> JsValue = _
  multi_entry(self : Self) -> Bool = _
  unique(self : Self) -> Bool = _
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
}

///|
/// [IDBIndex.name](https://developer.mozilla.org/en-US/docs/Web/API/IDBIndex/name)
impl TIDBIndex with name(self : Self) -> String {
  idb_index_name_ffi(TJsValue::to_js(self))
}

///|
/// [IDBIndex.name](https://developer.mozilla.org/en-US/docs/Web/API/IDBIndex/name)
impl TIDBIndex with set_name(self : Self, name : String) -> Unit {
  idb_index_set_name_ffi(TJsValue::to_js(self), TJsValue::to_js(name))
}

///|
/// [IDBIndex.objectStore](https://developer.mozilla.org/en-US/docs/Web/API/IDBIndex/objectStore)
impl TIDBIndex with object_store(self : Self) -> IDBObjectStore {
  idb_index_object_store_ffi(TJsValue::to_js(self))
}

///|
/// [IDBIndex.keyPath](https://developer.mozilla.org/en-US/docs/Web/API/IDBIndex/keyPath)
impl TIDBIndex with key_path(self : Self) -> JsValue {
  idb_index_key_path_ffi(TJsValue::to_js(self))
}

///|
/// [IDBIndex.multiEntry](https://developer.mozilla.org/en-US/docs/Web/API/IDBIndex/multiEntry)
impl TIDBIndex with multi_entry(self : Self) -> Bool {
  idb_index_multi_entry_ffi(TJsValue::to_js(self))
}

///|
/// [IDBIndex.unique](https://developer.mozilla.org/en-US/docs/Web/API/IDBIndex/unique)
impl TIDBIndex with unique(self : Self) -> Bool {
  idb_index_unique_ffi(TJsValue::to_js(self))
}

///|
/// [IDBIndex.get](https://developer.mozilla.org/en-US/docs/Web/API/IDBIndex/get)
impl TIDBIndex with get(self : Self, query : JsValue) -> IDBRequest {
  idb_index_get_ffi(TJsValue::to_js(self), TJsValue::to_js(query))
}

///|
/// [IDBIndex.getKey](https://developer.mozilla.org/en-US/docs/Web/API/IDBIndex/getKey)
impl TIDBIndex with get_key(self : Self, query : JsValue) -> IDBRequest {
  idb_index_get_key_ffi(TJsValue::to_js(self), TJsValue::to_js(query))
}

///|
/// [IDBIndex.getAll](https://developer.mozilla.org/en-US/docs/Web/API/IDBIndex/getAll)
impl TIDBIndex with get_all(
  self : Self,
  query_or_options? : JsValue,
  count? : UInt,
) -> IDBRequest {
  idb_index_get_all_ffi(
    TJsValue::to_js(self),
    opt_to_js(query_or_options),
    opt_to_js(count),
  )
}

///|
/// [IDBIndex.getAllKeys](https://developer.mozilla.org/en-US/docs/Web/API/IDBIndex/getAllKeys)
impl TIDBIndex with get_all_keys(
  self : Self,
  query_or_options? : JsValue,
  count? : UInt,
) -> IDBRequest {
  idb_index_get_all_keys_ffi(
    TJsValue::to_js(self),
    opt_to_js(query_or_options),
    opt_to_js(count),
  )
}

///|
/// [IDBIndex.getAllRecords](https://developer.mozilla.org/en-US/docs/Web/API/IDBIndex/getAllRecords)
impl TIDBIndex with get_all_records(self : Self, options? : IDBGetAllOptions) -> IDBRequest {
  idb_index_get_all_records_ffi(TJsValue::to_js(self), opt_to_js(options))
}

///|
/// [IDBIndex.count](https://developer.mozilla.org/en-US/docs/Web/API/IDBIndex/count)
impl TIDBIndex with count(self : Self, query? : JsValue) -> IDBRequest {
  idb_index_count_ffi(TJsValue::to_js(self), opt_to_js(query))
}

///|
/// [IDBIndex.openCursor](https://developer.mozilla.org/en-US/docs/Web/API/IDBIndex/openCursor)
impl TIDBIndex with open_cursor(
  self : Self,
  query? : JsValue,
  direction? : IDBCursorDirection,
) -> IDBRequest {
  idb_index_open_cursor_ffi(
    TJsValue::to_js(self),
    opt_to_js(query),
    opt_to_js(direction),
  )
}

///|
/// [IDBIndex.openKeyCursor](https://developer.mozilla.org/en-US/docs/Web/API/IDBIndex/openKeyCursor)
impl TIDBIndex with open_key_cursor(
  self : Self,
  query? : JsValue,
  direction? : IDBCursorDirection,
) -> IDBRequest {
  idb_index_open_key_cursor_ffi(
    TJsValue::to_js(self),
    opt_to_js(query),
    opt_to_js(direction),
  )
}

///|
#cfg(target="js")
extern "js" fn idb_index_name_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.name"

///|
#cfg(target="js")
fn idb_index_name_ffi(obj : JsValue) -> String {
  idb_index_name_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn idb_index_set_name_ffi(obj : JsValue, name : JsValue) -> Unit = "(obj, name) => { obj.name = name; }"

///|
#cfg(target="js")
extern "js" fn idb_index_object_store_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.objectStore"

///|
#cfg(target="js")
fn idb_index_object_store_ffi(obj : JsValue) -> IDBObjectStore {
  idb_index_object_store_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn idb_index_key_path_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.keyPath"

///|
#cfg(target="js")
fn idb_index_key_path_ffi(obj : JsValue) -> JsValue {
  idb_index_key_path_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn idb_index_multi_entry_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.multiEntry"

///|
#cfg(target="js")
fn idb_index_multi_entry_ffi(obj : JsValue) -> Bool {
  idb_index_multi_entry_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn idb_index_unique_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.unique"

///|
#cfg(target="js")
fn idb_index_unique_ffi(obj : JsValue) -> Bool {
  idb_index_unique_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn idb_index_get_ffi_js(obj : JsValue, query : JsValue) -> JsValue = "(obj, query) => obj.get(query)"

///|
#cfg(target="js")
fn idb_index_get_ffi(obj : JsValue, query : JsValue) -> IDBRequest {
  idb_index_get_ffi_js(obj, query).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn idb_index_get_key_ffi_js(
  obj : JsValue,
  query : JsValue,
) -> JsValue = "(obj, query) => obj.getKey(query)"

///|
#cfg(target="js")
fn idb_index_get_key_ffi(obj : JsValue, query : JsValue) -> IDBRequest {
  idb_index_get_key_ffi_js(obj, query).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn idb_index_get_all_ffi_js(
  obj : JsValue,
  query_or_options : JsValue,
  count : JsValue,
) -> JsValue = "(obj, query_or_options, count) => obj.getAll(query_or_options, count)"

///|
#cfg(target="js")
fn idb_index_get_all_ffi(
  obj : JsValue,
  query_or_options : JsValue,
  count : JsValue,
) -> IDBRequest {
  idb_index_get_all_ffi_js(obj, query_or_options, count).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn idb_index_get_all_keys_ffi_js(
  obj : JsValue,
  query_or_options : JsValue,
  count : JsValue,
) -> JsValue = "(obj, query_or_options, count) => obj.getAllKeys(query_or_options, count)"

///|
#cfg(target="js")
fn idb_index_get_all_keys_ffi(
  obj : JsValue,
  query_or_options : JsValue,
  count : JsValue,
) -> IDBRequest {
  idb_index_get_all_keys_ffi_js(obj, query_or_options, count).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn idb_index_get_all_records_ffi_js(
  obj : JsValue,
  options : JsValue,
) -> JsValue = "(obj, options) => obj.getAllRecords(options)"

///|
#cfg(target="js")
fn idb_index_get_all_records_ffi(
  obj : JsValue,
  options : JsValue,
) -> IDBRequest {
  idb_index_get_all_records_ffi_js(obj, options).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn idb_index_count_ffi_js(
  obj : JsValue,
  query : JsValue,
) -> JsValue = "(obj, query) => obj.count(query)"

///|
#cfg(target="js")
fn idb_index_count_ffi(obj : JsValue, query : JsValue) -> IDBRequest {
  idb_index_count_ffi_js(obj, query).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn idb_index_open_cursor_ffi_js(
  obj : JsValue,
  query : JsValue,
  direction : JsValue,
) -> JsValue = "(obj, query, direction) => obj.openCursor(query, direction)"

///|
#cfg(target="js")
fn idb_index_open_cursor_ffi(
  obj : JsValue,
  query : JsValue,
  direction : JsValue,
) -> IDBRequest {
  idb_index_open_cursor_ffi_js(obj, query, direction).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn idb_index_open_key_cursor_ffi_js(
  obj : JsValue,
  query : JsValue,
  direction : JsValue,
) -> JsValue = "(obj, query, direction) => obj.openKeyCursor(query, direction)"

///|
#cfg(target="js")
fn idb_index_open_key_cursor_ffi(
  obj : JsValue,
  query : JsValue,
  direction : JsValue,
) -> IDBRequest {
  idb_index_open_key_cursor_ffi_js(obj, query, direction).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn idb_index_name_ffi_wasm(obj : JsValue) -> JsValue = "webapi_IDBIndex" "get_name"

///|
#cfg(target="wasm-gc")
fn idb_index_name_ffi(obj : JsValue) -> String {
  jsvalue_to_string(idb_index_name_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn idb_index_set_name_ffi(obj : JsValue, name : JsValue) -> Unit = "webapi_IDBIndex" "set_name"

///|
#cfg(target="wasm-gc")
fn idb_index_object_store_ffi(obj : JsValue) -> IDBObjectStore = "webapi_IDBIndex" "get_objectStore"

///|
#cfg(target="wasm-gc")
fn idb_index_key_path_ffi(obj : JsValue) -> JsValue = "webapi_IDBIndex" "get_keyPath"

///|
#cfg(target="wasm-gc")
fn idb_index_multi_entry_ffi(obj : JsValue) -> Bool = "webapi_IDBIndex" "get_multiEntry"

///|
#cfg(target="wasm-gc")
fn idb_index_unique_ffi(obj : JsValue) -> Bool = "webapi_IDBIndex" "get_unique"

///|
#cfg(target="wasm-gc")
fn idb_index_get_ffi(obj : JsValue, query : JsValue) -> IDBRequest = "webapi_IDBIndex" "get"

///|
#cfg(target="wasm-gc")
fn idb_index_get_key_ffi(obj : JsValue, query : JsValue) -> IDBRequest = "webapi_IDBIndex" "getKey"

///|
#cfg(target="wasm-gc")
fn idb_index_get_all_ffi(
  obj : JsValue,
  query_or_options : JsValue,
  count : JsValue,
) -> IDBRequest = "webapi_IDBIndex" "getAll"

///|
#cfg(target="wasm-gc")
fn idb_index_get_all_keys_ffi(
  obj : JsValue,
  query_or_options : JsValue,
  count : JsValue,
) -> IDBRequest = "webapi_IDBIndex" "getAllKeys"

///|
#cfg(target="wasm-gc")
fn idb_index_get_all_records_ffi(
  obj : JsValue,
  options : JsValue,
) -> IDBRequest = "webapi_IDBIndex" "getAllRecords"

///|
#cfg(target="wasm-gc")
fn idb_index_count_ffi(obj : JsValue, query : JsValue) -> IDBRequest = "webapi_IDBIndex" "count"

///|
#cfg(target="wasm-gc")
fn idb_index_open_cursor_ffi(
  obj : JsValue,
  query : JsValue,
  direction : JsValue,
) -> IDBRequest = "webapi_IDBIndex" "openCursor"

///|
#cfg(target="wasm-gc")
fn idb_index_open_key_cursor_ffi(
  obj : JsValue,
  query : JsValue,
  direction : JsValue,
) -> IDBRequest = "webapi_IDBIndex" "openKeyCursor"
