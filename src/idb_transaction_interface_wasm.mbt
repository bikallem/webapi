///|
fn idb_transaction_object_store_names_ffi(obj : JsValue) -> DOMStringList = "webapi_IDBTransaction" "get_objectStoreNames"

///|
fn idb_transaction_mode_ffi_wasm(obj : JsValue) -> JsValue = "webapi_IDBTransaction" "get_mode"

///|
fn idb_transaction_mode_ffi(obj : JsValue) -> IDBTransactionMode {
  IDBTransactionMode::from_unchecked(
    jsvalue_to_string(idb_transaction_mode_ffi_wasm(obj)),
  )
}

///|
fn idb_transaction_durability_ffi_wasm(obj : JsValue) -> JsValue = "webapi_IDBTransaction" "get_durability"

///|
fn idb_transaction_durability_ffi(obj : JsValue) -> IDBTransactionDurability {
  IDBTransactionDurability::from_unchecked(
    jsvalue_to_string(idb_transaction_durability_ffi_wasm(obj)),
  )
}

///|
fn idb_transaction_db_ffi(obj : JsValue) -> IDBDatabase = "webapi_IDBTransaction" "get_db"

///|
fn idb_transaction_error_ffi(obj : JsValue) -> DOMException = "webapi_IDBTransaction" "get_error"

///|
fn idb_transaction_object_store_ffi(
  obj : JsValue,
  name : JsValue,
) -> IDBObjectStore = "webapi_IDBTransaction" "objectStore"

///|
fn idb_transaction_commit_ffi(obj : JsValue) -> Unit = "webapi_IDBTransaction" "commit"

///|
fn idb_transaction_abort_ffi(obj : JsValue) -> Unit = "webapi_IDBTransaction" "abort"

///|
fn idb_transaction_onabort_ffi_wasm(obj : JsValue) -> JsValue = "webapi_IDBTransaction" "get_onabort"

///|
fn idb_transaction_onabort_ffi(obj : JsValue) -> EventHandler {
  idb_transaction_onabort_ffi_wasm(obj).unsafe_cast()
}

///|
fn idb_transaction_set_onabort_ffi(obj : JsValue, onabort : JsValue) -> Unit = "webapi_IDBTransaction" "set_onabort"

///|
fn idb_transaction_oncomplete_ffi_wasm(obj : JsValue) -> JsValue = "webapi_IDBTransaction" "get_oncomplete"

///|
fn idb_transaction_oncomplete_ffi(obj : JsValue) -> EventHandler {
  idb_transaction_oncomplete_ffi_wasm(obj).unsafe_cast()
}

///|
fn idb_transaction_set_oncomplete_ffi(
  obj : JsValue,
  oncomplete : JsValue,
) -> Unit = "webapi_IDBTransaction" "set_oncomplete"

///|
fn idb_transaction_onerror_ffi_wasm(obj : JsValue) -> JsValue = "webapi_IDBTransaction" "get_onerror"

///|
fn idb_transaction_onerror_ffi(obj : JsValue) -> EventHandler {
  idb_transaction_onerror_ffi_wasm(obj).unsafe_cast()
}

///|
fn idb_transaction_set_onerror_ffi(obj : JsValue, onerror : JsValue) -> Unit = "webapi_IDBTransaction" "set_onerror"
