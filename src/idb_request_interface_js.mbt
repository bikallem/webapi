///|
extern "js" fn idb_request_result_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.result"

///|
fn idb_request_result_ffi(obj : JsValue) -> JsValue {
  idb_request_result_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn idb_request_error_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.error"

///|
fn idb_request_error_ffi(obj : JsValue) -> DOMException {
  idb_request_error_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn idb_request_source_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.source"

///|
fn idb_request_source_ffi(obj : JsValue) -> IDBRequestSource {
  idb_request_source_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn idb_request_transaction_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.transaction"

///|
fn idb_request_transaction_ffi(obj : JsValue) -> IDBTransaction {
  idb_request_transaction_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn idb_request_ready_state_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.readyState"

///|
fn idb_request_ready_state_ffi(obj : JsValue) -> IDBRequestReadyState {
  idb_request_ready_state_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn idb_request_onsuccess_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onsuccess"

///|
fn idb_request_onsuccess_ffi(obj : JsValue) -> EventHandler {
  idb_request_onsuccess_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn idb_request_set_onsuccess_ffi(
  obj : JsValue,
  onsuccess : JsValue,
) -> Unit = "(obj, onsuccess) => { obj.onsuccess = onsuccess; }"

///|
extern "js" fn idb_request_onerror_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onerror"

///|
fn idb_request_onerror_ffi(obj : JsValue) -> EventHandler {
  idb_request_onerror_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn idb_request_set_onerror_ffi(
  obj : JsValue,
  onerror : JsValue,
) -> Unit = "(obj, onerror) => { obj.onerror = onerror; }"
