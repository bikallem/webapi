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
  set_onabort(self : Self, onabort : (Event) -> JsValue) -> Unit = _
  oncomplete(self : Self) -> EventHandler = _
  set_oncomplete(self : Self, oncomplete : (Event) -> JsValue) -> Unit = _
  onerror(self : Self) -> EventHandler = _
  set_onerror(self : Self, onerror : (Event) -> JsValue) -> Unit = _
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
impl TIDBTransaction with set_onabort(self : Self, onabort : (Event) -> JsValue) -> Unit {
  idb_transaction_set_onabort_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onabort)),
  )
}

///|
/// [IDBTransaction.oncomplete](https://developer.mozilla.org/en-US/docs/Web/API/IDBTransaction/oncomplete)
impl TIDBTransaction with oncomplete(self : Self) -> EventHandler {
  idb_transaction_oncomplete_ffi(TJsValue::to_js(self))
}

///|
/// [IDBTransaction.oncomplete](https://developer.mozilla.org/en-US/docs/Web/API/IDBTransaction/oncomplete)
impl TIDBTransaction with set_oncomplete(
  self : Self,
  oncomplete : (Event) -> JsValue,
) -> Unit {
  idb_transaction_set_oncomplete_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(oncomplete)),
  )
}

///|
/// [IDBTransaction.onerror](https://developer.mozilla.org/en-US/docs/Web/API/IDBTransaction/onerror)
impl TIDBTransaction with onerror(self : Self) -> EventHandler {
  idb_transaction_onerror_ffi(TJsValue::to_js(self))
}

///|
/// [IDBTransaction.onerror](https://developer.mozilla.org/en-US/docs/Web/API/IDBTransaction/onerror)
impl TIDBTransaction with set_onerror(self : Self, onerror : (Event) -> JsValue) -> Unit {
  idb_transaction_set_onerror_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onerror)),
  )
}

///|
#cfg(target="js")
extern "js" fn idb_transaction_object_store_names_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.objectStoreNames"

///|
#cfg(target="js")
fn idb_transaction_object_store_names_ffi(obj : JsValue) -> DOMStringList {
  idb_transaction_object_store_names_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn idb_transaction_mode_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.mode"

///|
#cfg(target="js")
fn idb_transaction_mode_ffi(obj : JsValue) -> IDBTransactionMode {
  IDBTransactionMode::from_unchecked(
    idb_transaction_mode_ffi_js(obj).unsafe_cast(),
  )
}

///|
#cfg(target="js")
extern "js" fn idb_transaction_durability_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.durability"

///|
#cfg(target="js")
fn idb_transaction_durability_ffi(obj : JsValue) -> IDBTransactionDurability {
  IDBTransactionDurability::from_unchecked(
    idb_transaction_durability_ffi_js(obj).unsafe_cast(),
  )
}

///|
#cfg(target="js")
extern "js" fn idb_transaction_db_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.db"

///|
#cfg(target="js")
fn idb_transaction_db_ffi(obj : JsValue) -> IDBDatabase {
  idb_transaction_db_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn idb_transaction_error_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.error"

///|
#cfg(target="js")
fn idb_transaction_error_ffi(obj : JsValue) -> DOMException {
  idb_transaction_error_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn idb_transaction_object_store_ffi_js(
  obj : JsValue,
  name : JsValue,
) -> JsValue = "(obj, name) => obj.objectStore(name)"

///|
#cfg(target="js")
fn idb_transaction_object_store_ffi(
  obj : JsValue,
  name : JsValue,
) -> IDBObjectStore {
  idb_transaction_object_store_ffi_js(obj, name).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn idb_transaction_commit_ffi(obj : JsValue) -> Unit = "(obj) => obj.commit()"

///|
#cfg(target="js")
extern "js" fn idb_transaction_abort_ffi(obj : JsValue) -> Unit = "(obj) => obj.abort()"

///|
#cfg(target="js")
extern "js" fn idb_transaction_onabort_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onabort"

///|
#cfg(target="js")
fn idb_transaction_onabort_ffi(obj : JsValue) -> EventHandler {
  idb_transaction_onabort_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn idb_transaction_set_onabort_ffi(
  obj : JsValue,
  onabort : JsValue,
) -> Unit = "(obj, onabort) => { obj.onabort = onabort; }"

///|
#cfg(target="js")
extern "js" fn idb_transaction_oncomplete_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.oncomplete"

///|
#cfg(target="js")
fn idb_transaction_oncomplete_ffi(obj : JsValue) -> EventHandler {
  idb_transaction_oncomplete_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn idb_transaction_set_oncomplete_ffi(
  obj : JsValue,
  oncomplete : JsValue,
) -> Unit = "(obj, oncomplete) => { obj.oncomplete = oncomplete; }"

///|
#cfg(target="js")
extern "js" fn idb_transaction_onerror_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onerror"

///|
#cfg(target="js")
fn idb_transaction_onerror_ffi(obj : JsValue) -> EventHandler {
  idb_transaction_onerror_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn idb_transaction_set_onerror_ffi(
  obj : JsValue,
  onerror : JsValue,
) -> Unit = "(obj, onerror) => { obj.onerror = onerror; }"

///|
#cfg(target="wasm-gc")
fn idb_transaction_object_store_names_ffi(obj : JsValue) -> DOMStringList = "webapi_IDBTransaction" "get_objectStoreNames"

///|
#cfg(target="wasm-gc")
fn idb_transaction_mode_ffi_wasm(obj : JsValue) -> JsValue = "webapi_IDBTransaction" "get_mode"

///|
#cfg(target="wasm-gc")
fn idb_transaction_mode_ffi(obj : JsValue) -> IDBTransactionMode {
  IDBTransactionMode::from_unchecked(
    jsvalue_to_string(idb_transaction_mode_ffi_wasm(obj)),
  )
}

///|
#cfg(target="wasm-gc")
fn idb_transaction_durability_ffi_wasm(obj : JsValue) -> JsValue = "webapi_IDBTransaction" "get_durability"

///|
#cfg(target="wasm-gc")
fn idb_transaction_durability_ffi(obj : JsValue) -> IDBTransactionDurability {
  IDBTransactionDurability::from_unchecked(
    jsvalue_to_string(idb_transaction_durability_ffi_wasm(obj)),
  )
}

///|
#cfg(target="wasm-gc")
fn idb_transaction_db_ffi(obj : JsValue) -> IDBDatabase = "webapi_IDBTransaction" "get_db"

///|
#cfg(target="wasm-gc")
fn idb_transaction_error_ffi(obj : JsValue) -> DOMException = "webapi_IDBTransaction" "get_error"

///|
#cfg(target="wasm-gc")
fn idb_transaction_object_store_ffi(
  obj : JsValue,
  name : JsValue,
) -> IDBObjectStore = "webapi_IDBTransaction" "objectStore"

///|
#cfg(target="wasm-gc")
fn idb_transaction_commit_ffi(obj : JsValue) -> Unit = "webapi_IDBTransaction" "commit"

///|
#cfg(target="wasm-gc")
fn idb_transaction_abort_ffi(obj : JsValue) -> Unit = "webapi_IDBTransaction" "abort"

///|
#cfg(target="wasm-gc")
fn idb_transaction_onabort_ffi_wasm(obj : JsValue) -> JsValue = "webapi_IDBTransaction" "get_onabort"

///|
#cfg(target="wasm-gc")
fn idb_transaction_onabort_ffi(obj : JsValue) -> EventHandler {
  idb_transaction_onabort_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn idb_transaction_set_onabort_ffi(obj : JsValue, onabort : JsValue) -> Unit = "webapi_IDBTransaction" "set_onabort"

///|
#cfg(target="wasm-gc")
fn idb_transaction_oncomplete_ffi_wasm(obj : JsValue) -> JsValue = "webapi_IDBTransaction" "get_oncomplete"

///|
#cfg(target="wasm-gc")
fn idb_transaction_oncomplete_ffi(obj : JsValue) -> EventHandler {
  idb_transaction_oncomplete_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn idb_transaction_set_oncomplete_ffi(
  obj : JsValue,
  oncomplete : JsValue,
) -> Unit = "webapi_IDBTransaction" "set_oncomplete"

///|
#cfg(target="wasm-gc")
fn idb_transaction_onerror_ffi_wasm(obj : JsValue) -> JsValue = "webapi_IDBTransaction" "get_onerror"

///|
#cfg(target="wasm-gc")
fn idb_transaction_onerror_ffi(obj : JsValue) -> EventHandler {
  idb_transaction_onerror_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn idb_transaction_set_onerror_ffi(obj : JsValue, onerror : JsValue) -> Unit = "webapi_IDBTransaction" "set_onerror"
