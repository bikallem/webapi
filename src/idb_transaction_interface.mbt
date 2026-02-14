// Do not edit. This file is generated.
// MoonBit type: IDBTransaction
// Specifications: IndexedDB.idl

///|
/// [IDBTransaction](https://developer.mozilla.org/en-US/docs/Web/API/IDBTransaction)
#external
pub type IDBTransaction

///|
pub impl TJsValue for IDBTransaction with to_js(self : IDBTransaction) -> JsValue = "%identity"

///|
pub impl FromJsAny for IDBTransaction with from_js_any(value : JsAny) -> IDBTransaction = "%identity"

///|
pub fn[T : TIDBTransaction] IDBTransaction::into(self : IDBTransaction) -> T = "%identity"

///|
pub impl TIDBTransaction for IDBTransaction

///|
pub impl TEventTarget for IDBTransaction

///|
/// [IDBTransaction](https://developer.mozilla.org/en-US/docs/Web/API/IDBTransaction) interface.
pub trait TIDBTransaction: TEventTarget {
  object_store_names(self : Self) -> DOMStringList = _
  mode(self : Self) -> IDBTransactionMode = _
  durability(self : Self) -> IDBTransactionDurability = _
  db(self : Self) -> IDBDatabase = _
  error(self : Self) -> DOMException = _
  object_store(self : Self, name : String) -> IDBObjectStore = _
  commit(self : Self) -> Unit = _
  abort(self : Self) -> Unit = _
  onabort(self : Self) -> EventHandler = _
  set_onabort(self : Self, onabort : EventHandler) -> Unit = _
  oncomplete(self : Self) -> EventHandler = _
  set_oncomplete(self : Self, oncomplete : EventHandler) -> Unit = _
  onerror(self : Self) -> EventHandler = _
  set_onerror(self : Self, onerror : EventHandler) -> Unit = _
}

///|
/// [IDBTransaction.objectStoreNames](https://developer.mozilla.org/en-US/docs/Web/API/IDBTransaction/objectStoreNames)
impl TIDBTransaction with object_store_names(self : Self) -> DOMStringList {
  idb_transaction_object_store_names_ffi(TJsValue::to_js(self))
}

///|
/// [IDBTransaction.mode](https://developer.mozilla.org/en-US/docs/Web/API/IDBTransaction/mode)
impl TIDBTransaction with mode(self : Self) -> IDBTransactionMode {
  idb_transaction_mode_ffi(TJsValue::to_js(self))
}

///|
/// [IDBTransaction.durability](https://developer.mozilla.org/en-US/docs/Web/API/IDBTransaction/durability)
impl TIDBTransaction with durability(self : Self) -> IDBTransactionDurability {
  idb_transaction_durability_ffi(TJsValue::to_js(self))
}

///|
/// [IDBTransaction.db](https://developer.mozilla.org/en-US/docs/Web/API/IDBTransaction/db)
impl TIDBTransaction with db(self : Self) -> IDBDatabase {
  idb_transaction_db_ffi(TJsValue::to_js(self))
}

///|
/// [IDBTransaction.error](https://developer.mozilla.org/en-US/docs/Web/API/IDBTransaction/error)
impl TIDBTransaction with error(self : Self) -> DOMException {
  idb_transaction_error_ffi(TJsValue::to_js(self))
}

///|
/// [IDBTransaction.objectStore](https://developer.mozilla.org/en-US/docs/Web/API/IDBTransaction/objectStore)
impl TIDBTransaction with object_store(self : Self, name : String) -> IDBObjectStore {
  idb_transaction_object_store_ffi(TJsValue::to_js(self), TJsValue::to_js(name))
}

///|
/// [IDBTransaction.commit](https://developer.mozilla.org/en-US/docs/Web/API/IDBTransaction/commit)
impl TIDBTransaction with commit(self : Self) -> Unit {
  idb_transaction_commit_ffi(TJsValue::to_js(self))
}

///|
/// [IDBTransaction.abort](https://developer.mozilla.org/en-US/docs/Web/API/IDBTransaction/abort)
impl TIDBTransaction with abort(self : Self) -> Unit {
  idb_transaction_abort_ffi(TJsValue::to_js(self))
}

///|
/// [IDBTransaction.onabort](https://developer.mozilla.org/en-US/docs/Web/API/IDBTransaction/onabort)
impl TIDBTransaction with onabort(self : Self) -> EventHandler {
  idb_transaction_onabort_ffi(TJsValue::to_js(self))
}

///|
/// [IDBTransaction.onabort](https://developer.mozilla.org/en-US/docs/Web/API/IDBTransaction/onabort)
impl TIDBTransaction with set_onabort(self : Self, onabort : EventHandler) -> Unit {
  idb_transaction_set_onabort_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onabort),
  )
}

///|
/// [IDBTransaction.oncomplete](https://developer.mozilla.org/en-US/docs/Web/API/IDBTransaction/oncomplete)
impl TIDBTransaction with oncomplete(self : Self) -> EventHandler {
  idb_transaction_oncomplete_ffi(TJsValue::to_js(self))
}

///|
/// [IDBTransaction.oncomplete](https://developer.mozilla.org/en-US/docs/Web/API/IDBTransaction/oncomplete)
impl TIDBTransaction with set_oncomplete(self : Self, oncomplete : EventHandler) -> Unit {
  idb_transaction_set_oncomplete_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(oncomplete),
  )
}

///|
/// [IDBTransaction.onerror](https://developer.mozilla.org/en-US/docs/Web/API/IDBTransaction/onerror)
impl TIDBTransaction with onerror(self : Self) -> EventHandler {
  idb_transaction_onerror_ffi(TJsValue::to_js(self))
}

///|
/// [IDBTransaction.onerror](https://developer.mozilla.org/en-US/docs/Web/API/IDBTransaction/onerror)
impl TIDBTransaction with set_onerror(self : Self, onerror : EventHandler) -> Unit {
  idb_transaction_set_onerror_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onerror),
  )
}
