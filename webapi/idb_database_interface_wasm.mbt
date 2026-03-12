fn idb_database_name_ffi_wasm(obj: JsValue) -> JsValue = "webapi_IDBDatabase" "get_name"

///|
fn idb_database_name_ffi(obj: JsValue) -> String {
  jsvalue_to_string(idb_database_name_ffi_wasm(obj))
}

fn idb_database_version_ffi(obj: JsValue) -> UInt64 = "webapi_IDBDatabase" "get_version"

fn idb_database_object_store_names_ffi(obj: JsValue) -> DOMStringList = "webapi_IDBDatabase" "get_objectStoreNames"

fn idb_database_transaction_ffi(obj: JsValue, store_names: JsValue, mode: JsValue, options: JsValue) -> IDBTransaction = "webapi_IDBDatabase" "transaction"

fn idb_database_close_ffi(obj: JsValue) -> Unit = "webapi_IDBDatabase" "close"

fn idb_database_create_object_store_ffi(obj: JsValue, name: JsValue, options: JsValue) -> IDBObjectStore = "webapi_IDBDatabase" "createObjectStore"

fn idb_database_delete_object_store_ffi(obj: JsValue, name: JsValue) -> Unit = "webapi_IDBDatabase" "deleteObjectStore"

fn idb_database_onabort_ffi_wasm(obj: JsValue) -> JsValue = "webapi_IDBDatabase" "get_onabort"

///|
fn idb_database_onabort_ffi(obj: JsValue) -> EventHandler {
  idb_database_onabort_ffi_wasm(obj).unsafe_cast()
}

fn idb_database_set_onabort_ffi(obj: JsValue, onabort: JsValue) -> Unit = "webapi_IDBDatabase" "set_onabort"

fn idb_database_onclose_ffi_wasm(obj: JsValue) -> JsValue = "webapi_IDBDatabase" "get_onclose"

///|
fn idb_database_onclose_ffi(obj: JsValue) -> EventHandler {
  idb_database_onclose_ffi_wasm(obj).unsafe_cast()
}

fn idb_database_set_onclose_ffi(obj: JsValue, onclose: JsValue) -> Unit = "webapi_IDBDatabase" "set_onclose"

fn idb_database_onerror_ffi_wasm(obj: JsValue) -> JsValue = "webapi_IDBDatabase" "get_onerror"

///|
fn idb_database_onerror_ffi(obj: JsValue) -> EventHandler {
  idb_database_onerror_ffi_wasm(obj).unsafe_cast()
}

fn idb_database_set_onerror_ffi(obj: JsValue, onerror: JsValue) -> Unit = "webapi_IDBDatabase" "set_onerror"

fn idb_database_onversionchange_ffi_wasm(obj: JsValue) -> JsValue = "webapi_IDBDatabase" "get_onversionchange"

///|
fn idb_database_onversionchange_ffi(obj: JsValue) -> EventHandler {
  idb_database_onversionchange_ffi_wasm(obj).unsafe_cast()
}

fn idb_database_set_onversionchange_ffi(obj: JsValue, onversionchange: JsValue) -> Unit = "webapi_IDBDatabase" "set_onversionchange"