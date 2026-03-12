extern "js" fn idb_database_name_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.name"

///|
fn idb_database_name_ffi(obj: JsValue) -> String {
  idb_database_name_ffi_js(obj).unsafe_cast()
}

extern "js" fn idb_database_version_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.version"

///|
fn idb_database_version_ffi(obj: JsValue) -> UInt64 {
  idb_database_version_ffi_js(obj).unsafe_cast()
}

extern "js" fn idb_database_object_store_names_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.objectStoreNames"

///|
fn idb_database_object_store_names_ffi(obj: JsValue) -> DOMStringList {
  idb_database_object_store_names_ffi_js(obj).unsafe_cast()
}

extern "js" fn idb_database_transaction_ffi_js(obj: JsValue, store_names: JsValue, mode: JsValue, options: JsValue) -> JsValue = "(obj, store_names, mode, options) => obj.transaction(store_names, mode, options)"

///|
fn idb_database_transaction_ffi(obj: JsValue, store_names: JsValue, mode: JsValue, options: JsValue) -> IDBTransaction {
  idb_database_transaction_ffi_js(obj, store_names, mode, options).unsafe_cast()
}

extern "js" fn idb_database_close_ffi(obj: JsValue) -> Unit = "(obj) => obj.close()"

extern "js" fn idb_database_create_object_store_ffi_js(obj: JsValue, name: JsValue, options: JsValue) -> JsValue = "(obj, name, options) => obj.createObjectStore(name, options)"

///|
fn idb_database_create_object_store_ffi(obj: JsValue, name: JsValue, options: JsValue) -> IDBObjectStore {
  idb_database_create_object_store_ffi_js(obj, name, options).unsafe_cast()
}

extern "js" fn idb_database_delete_object_store_ffi(obj: JsValue, name: JsValue) -> Unit = "(obj, name) => obj.deleteObjectStore(name)"

extern "js" fn idb_database_onabort_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.onabort"

///|
fn idb_database_onabort_ffi(obj: JsValue) -> EventHandler {
  idb_database_onabort_ffi_js(obj).unsafe_cast()
}

extern "js" fn idb_database_set_onabort_ffi(obj: JsValue, onabort: JsValue) -> Unit = "(obj, onabort) => { obj.onabort = onabort; }"

extern "js" fn idb_database_onclose_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.onclose"

///|
fn idb_database_onclose_ffi(obj: JsValue) -> EventHandler {
  idb_database_onclose_ffi_js(obj).unsafe_cast()
}

extern "js" fn idb_database_set_onclose_ffi(obj: JsValue, onclose: JsValue) -> Unit = "(obj, onclose) => { obj.onclose = onclose; }"

extern "js" fn idb_database_onerror_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.onerror"

///|
fn idb_database_onerror_ffi(obj: JsValue) -> EventHandler {
  idb_database_onerror_ffi_js(obj).unsafe_cast()
}

extern "js" fn idb_database_set_onerror_ffi(obj: JsValue, onerror: JsValue) -> Unit = "(obj, onerror) => { obj.onerror = onerror; }"

extern "js" fn idb_database_onversionchange_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.onversionchange"

///|
fn idb_database_onversionchange_ffi(obj: JsValue) -> EventHandler {
  idb_database_onversionchange_ffi_js(obj).unsafe_cast()
}

extern "js" fn idb_database_set_onversionchange_ffi(obj: JsValue, onversionchange: JsValue) -> Unit = "(obj, onversionchange) => { obj.onversionchange = onversionchange; }"