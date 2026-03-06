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
pub fn[T : TIDBIndex] IDBIndex::into(self : IDBIndex) -> T = "%identity"

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
