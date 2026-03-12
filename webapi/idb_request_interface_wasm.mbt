fn idb_request_result_ffi(obj: JsValue) -> JsValue = "webapi_IDBRequest" "get_result"

fn idb_request_error_ffi(obj: JsValue) -> DOMException = "webapi_IDBRequest" "get_error"

fn idb_request_source_ffi_wasm(obj: JsValue) -> JsValue = "webapi_IDBRequest" "get_source"

///|
fn idb_request_source_ffi(obj: JsValue) -> IDBRequestSource {
  idb_request_source_ffi_wasm(obj).unsafe_cast()
}

fn idb_request_transaction_ffi(obj: JsValue) -> IDBTransaction = "webapi_IDBRequest" "get_transaction"

fn idb_request_ready_state_ffi_wasm(obj: JsValue) -> JsValue = "webapi_IDBRequest" "get_readyState"

///|
fn idb_request_ready_state_ffi(obj: JsValue) -> IDBRequestReadyState {
  IDBRequestReadyState::from_unchecked(jsvalue_to_string(idb_request_ready_state_ffi_wasm(obj)))
}

fn idb_request_onsuccess_ffi_wasm(obj: JsValue) -> JsValue = "webapi_IDBRequest" "get_onsuccess"

///|
fn idb_request_onsuccess_ffi(obj: JsValue) -> EventHandler {
  idb_request_onsuccess_ffi_wasm(obj).unsafe_cast()
}

fn idb_request_set_onsuccess_ffi(obj: JsValue, onsuccess: JsValue) -> Unit = "webapi_IDBRequest" "set_onsuccess"

fn idb_request_onerror_ffi_wasm(obj: JsValue) -> JsValue = "webapi_IDBRequest" "get_onerror"

///|
fn idb_request_onerror_ffi(obj: JsValue) -> EventHandler {
  idb_request_onerror_ffi_wasm(obj).unsafe_cast()
}

fn idb_request_set_onerror_ffi(obj: JsValue, onerror: JsValue) -> Unit = "webapi_IDBRequest" "set_onerror"