extern "js" fn idb_open_db_request_onblocked_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.onblocked"

///|
fn idb_open_db_request_onblocked_ffi(obj: JsValue) -> EventHandler {
  idb_open_db_request_onblocked_ffi_js(obj).unsafe_cast()
}

extern "js" fn idb_open_db_request_set_onblocked_ffi(obj: JsValue, onblocked: JsValue) -> Unit = "(obj, onblocked) => { obj.onblocked = onblocked; }"

extern "js" fn idb_open_db_request_onupgradeneeded_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.onupgradeneeded"

///|
fn idb_open_db_request_onupgradeneeded_ffi(obj: JsValue) -> EventHandler {
  idb_open_db_request_onupgradeneeded_ffi_js(obj).unsafe_cast()
}

extern "js" fn idb_open_db_request_set_onupgradeneeded_ffi(obj: JsValue, onupgradeneeded: JsValue) -> Unit = "(obj, onupgradeneeded) => { obj.onupgradeneeded = onupgradeneeded; }"