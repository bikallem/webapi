fn idb_open_db_request_onblocked_ffi_wasm(obj: JsValue) -> JsValue = "webapi_IDBOpenDBRequest" "get_onblocked"

///|
fn idb_open_db_request_onblocked_ffi(obj: JsValue) -> EventHandler {
  idb_open_db_request_onblocked_ffi_wasm(obj).unsafe_cast()
}

fn idb_open_db_request_set_onblocked_ffi(obj: JsValue, onblocked: JsValue) -> Unit = "webapi_IDBOpenDBRequest" "set_onblocked"

fn idb_open_db_request_onupgradeneeded_ffi_wasm(obj: JsValue) -> JsValue = "webapi_IDBOpenDBRequest" "get_onupgradeneeded"

///|
fn idb_open_db_request_onupgradeneeded_ffi(obj: JsValue) -> EventHandler {
  idb_open_db_request_onupgradeneeded_ffi_wasm(obj).unsafe_cast()
}

fn idb_open_db_request_set_onupgradeneeded_ffi(obj: JsValue, onupgradeneeded: JsValue) -> Unit = "webapi_IDBOpenDBRequest" "set_onupgradeneeded"