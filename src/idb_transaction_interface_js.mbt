///|
extern "js" fn idb_transaction_object_store_names_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.objectStoreNames"

///|
fn idb_transaction_object_store_names_ffi(obj : JsValue) -> DOMStringList {
  idb_transaction_object_store_names_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn idb_transaction_mode_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.mode"

///|
fn idb_transaction_mode_ffi(obj : JsValue) -> IDBTransactionMode {
  IDBTransactionMode::from_unchecked(
    idb_transaction_mode_ffi_js(obj).unsafe_cast(),
  )
}

///|
extern "js" fn idb_transaction_durability_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.durability"

///|
fn idb_transaction_durability_ffi(obj : JsValue) -> IDBTransactionDurability {
  IDBTransactionDurability::from_unchecked(
    idb_transaction_durability_ffi_js(obj).unsafe_cast(),
  )
}

///|
extern "js" fn idb_transaction_db_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.db"

///|
fn idb_transaction_db_ffi(obj : JsValue) -> IDBDatabase {
  idb_transaction_db_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn idb_transaction_error_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.error"

///|
fn idb_transaction_error_ffi(obj : JsValue) -> DOMException {
  idb_transaction_error_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn idb_transaction_object_store_ffi_js(
  obj : JsValue,
  name : JsValue,
) -> JsValue = "(obj, name) => obj.objectStore(name)"

///|
fn idb_transaction_object_store_ffi(
  obj : JsValue,
  name : JsValue,
) -> IDBObjectStore {
  idb_transaction_object_store_ffi_js(obj, name).unsafe_cast()
}

///|
extern "js" fn idb_transaction_commit_ffi(obj : JsValue) -> Unit = "(obj) => obj.commit()"

///|
extern "js" fn idb_transaction_abort_ffi(obj : JsValue) -> Unit = "(obj) => obj.abort()"

///|
extern "js" fn idb_transaction_onabort_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onabort"

///|
fn idb_transaction_onabort_ffi(obj : JsValue) -> EventHandler {
  idb_transaction_onabort_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn idb_transaction_set_onabort_ffi(
  obj : JsValue,
  onabort : JsValue,
) -> Unit = "(obj, onabort) => { obj.onabort = onabort; }"

///|
extern "js" fn idb_transaction_oncomplete_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.oncomplete"

///|
fn idb_transaction_oncomplete_ffi(obj : JsValue) -> EventHandler {
  idb_transaction_oncomplete_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn idb_transaction_set_oncomplete_ffi(
  obj : JsValue,
  oncomplete : JsValue,
) -> Unit = "(obj, oncomplete) => { obj.oncomplete = oncomplete; }"

///|
extern "js" fn idb_transaction_onerror_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onerror"

///|
fn idb_transaction_onerror_ffi(obj : JsValue) -> EventHandler {
  idb_transaction_onerror_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn idb_transaction_set_onerror_ffi(
  obj : JsValue,
  onerror : JsValue,
) -> Unit = "(obj, onerror) => { obj.onerror = onerror; }"
