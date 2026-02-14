// Do not edit. This file is generated.
// MoonBit type: IDBDatabase
// Specifications: IndexedDB.idl

///|
/// [IDBDatabase](https://developer.mozilla.org/en-US/docs/Web/API/IDBDatabase)
#external
pub type IDBDatabase

///|
pub impl TJsValue for IDBDatabase with to_js(self : IDBDatabase) -> JsValue = "%identity"

///|
pub impl FromJsAny for IDBDatabase with from_js_any(value : JsAny) -> IDBDatabase = "%identity"

///|
pub fn[T : TIDBDatabase] IDBDatabase::into(self : IDBDatabase) -> T = "%identity"

///|
pub impl TIDBDatabase for IDBDatabase

///|
pub impl TEventTarget for IDBDatabase

///|
pub(open) trait TIDBDatabaseTransactionStoreNames {
  to_js(self : Self) -> JsValue
}

///|
pub impl TIDBDatabaseTransactionStoreNames for String with to_js(self : String) -> JsValue = "%identity"

///|
pub impl TIDBDatabaseTransactionStoreNames for Array[String] with to_js(
  self : Array[String],
) -> JsValue = "%identity"

///|
/// [IDBDatabase](https://developer.mozilla.org/en-US/docs/Web/API/IDBDatabase) interface.
pub trait TIDBDatabase: TEventTarget {
  name(self : Self) -> String = _
  version(self : Self) -> UInt64 = _
  object_store_names(self : Self) -> DOMStringList = _
  transaction(
    self : Self,
    store_names : &TIDBDatabaseTransactionStoreNames,
    mode? : IDBTransactionMode,
    options? : IDBTransactionOptions,
  ) -> IDBTransaction = _
  close(self : Self) -> Unit = _
  create_object_store(
    self : Self,
    name : String,
    options? : IDBObjectStoreParameters,
  ) -> IDBObjectStore = _
  delete_object_store(self : Self, name : String) -> Unit = _
  onabort(self : Self) -> EventHandler = _
  set_onabort(self : Self, onabort : EventHandler) -> Unit = _
  onclose(self : Self) -> EventHandler = _
  set_onclose(self : Self, onclose : EventHandler) -> Unit = _
  onerror(self : Self) -> EventHandler = _
  set_onerror(self : Self, onerror : EventHandler) -> Unit = _
  onversionchange(self : Self) -> EventHandler = _
  set_onversionchange(self : Self, onversionchange : EventHandler) -> Unit = _
}

///|
/// [IDBDatabase.name](https://developer.mozilla.org/en-US/docs/Web/API/IDBDatabase/name)
impl TIDBDatabase with name(self : Self) -> String {
  idb_database_name_ffi(TJsValue::to_js(self))
}

///|
/// [IDBDatabase.version](https://developer.mozilla.org/en-US/docs/Web/API/IDBDatabase/version)
impl TIDBDatabase with version(self : Self) -> UInt64 {
  idb_database_version_ffi(TJsValue::to_js(self))
}

///|
/// [IDBDatabase.objectStoreNames](https://developer.mozilla.org/en-US/docs/Web/API/IDBDatabase/objectStoreNames)
impl TIDBDatabase with object_store_names(self : Self) -> DOMStringList {
  idb_database_object_store_names_ffi(TJsValue::to_js(self))
}

///|
/// [IDBDatabase.transaction](https://developer.mozilla.org/en-US/docs/Web/API/IDBDatabase/transaction)
impl TIDBDatabase with transaction(
  self : Self,
  store_names : &TIDBDatabaseTransactionStoreNames,
  mode? : IDBTransactionMode,
  options? : IDBTransactionOptions,
) -> IDBTransaction {
  idb_database_transaction_ffi(
    TJsValue::to_js(self),
    store_names.to_js(),
    opt_to_js(mode),
    opt_to_js(options),
  )
}

///|
/// [IDBDatabase.close](https://developer.mozilla.org/en-US/docs/Web/API/IDBDatabase/close)
impl TIDBDatabase with close(self : Self) -> Unit {
  idb_database_close_ffi(TJsValue::to_js(self))
}

///|
/// [IDBDatabase.createObjectStore](https://developer.mozilla.org/en-US/docs/Web/API/IDBDatabase/createObjectStore)
impl TIDBDatabase with create_object_store(
  self : Self,
  name : String,
  options? : IDBObjectStoreParameters,
) -> IDBObjectStore {
  idb_database_create_object_store_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(name),
    opt_to_js(options),
  )
}

///|
/// [IDBDatabase.deleteObjectStore](https://developer.mozilla.org/en-US/docs/Web/API/IDBDatabase/deleteObjectStore)
impl TIDBDatabase with delete_object_store(self : Self, name : String) -> Unit {
  idb_database_delete_object_store_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(name),
  )
}

///|
/// [IDBDatabase.onabort](https://developer.mozilla.org/en-US/docs/Web/API/IDBDatabase/onabort)
impl TIDBDatabase with onabort(self : Self) -> EventHandler {
  idb_database_onabort_ffi(TJsValue::to_js(self))
}

///|
/// [IDBDatabase.onabort](https://developer.mozilla.org/en-US/docs/Web/API/IDBDatabase/onabort)
impl TIDBDatabase with set_onabort(self : Self, onabort : EventHandler) -> Unit {
  idb_database_set_onabort_ffi(TJsValue::to_js(self), TJsValue::to_js(onabort))
}

///|
/// [IDBDatabase.onclose](https://developer.mozilla.org/en-US/docs/Web/API/IDBDatabase/onclose)
impl TIDBDatabase with onclose(self : Self) -> EventHandler {
  idb_database_onclose_ffi(TJsValue::to_js(self))
}

///|
/// [IDBDatabase.onclose](https://developer.mozilla.org/en-US/docs/Web/API/IDBDatabase/onclose)
impl TIDBDatabase with set_onclose(self : Self, onclose : EventHandler) -> Unit {
  idb_database_set_onclose_ffi(TJsValue::to_js(self), TJsValue::to_js(onclose))
}

///|
/// [IDBDatabase.onerror](https://developer.mozilla.org/en-US/docs/Web/API/IDBDatabase/onerror)
impl TIDBDatabase with onerror(self : Self) -> EventHandler {
  idb_database_onerror_ffi(TJsValue::to_js(self))
}

///|
/// [IDBDatabase.onerror](https://developer.mozilla.org/en-US/docs/Web/API/IDBDatabase/onerror)
impl TIDBDatabase with set_onerror(self : Self, onerror : EventHandler) -> Unit {
  idb_database_set_onerror_ffi(TJsValue::to_js(self), TJsValue::to_js(onerror))
}

///|
/// [IDBDatabase.onversionchange](https://developer.mozilla.org/en-US/docs/Web/API/IDBDatabase/onversionchange)
impl TIDBDatabase with onversionchange(self : Self) -> EventHandler {
  idb_database_onversionchange_ffi(TJsValue::to_js(self))
}

///|
/// [IDBDatabase.onversionchange](https://developer.mozilla.org/en-US/docs/Web/API/IDBDatabase/onversionchange)
impl TIDBDatabase with set_onversionchange(
  self : Self,
  onversionchange : EventHandler,
) -> Unit {
  idb_database_set_onversionchange_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onversionchange),
  )
}
