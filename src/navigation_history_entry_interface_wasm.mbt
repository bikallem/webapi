fn navigation_history_entry_url_ffi_wasm(obj: JsValue) -> JsValue = "webapi_NavigationHistoryEntry" "get_url"

///|
fn navigation_history_entry_url_ffi(obj: JsValue) -> String {
  jsvalue_to_string(navigation_history_entry_url_ffi_wasm(obj))
}

fn navigation_history_entry_key_ffi_wasm(obj: JsValue) -> JsValue = "webapi_NavigationHistoryEntry" "get_key"

///|
fn navigation_history_entry_key_ffi(obj: JsValue) -> String {
  jsvalue_to_string(navigation_history_entry_key_ffi_wasm(obj))
}

fn navigation_history_entry_id_ffi_wasm(obj: JsValue) -> JsValue = "webapi_NavigationHistoryEntry" "get_id"

///|
fn navigation_history_entry_id_ffi(obj: JsValue) -> String {
  jsvalue_to_string(navigation_history_entry_id_ffi_wasm(obj))
}

fn navigation_history_entry_index_ffi(obj: JsValue) -> Int64 = "webapi_NavigationHistoryEntry" "get_index"

fn navigation_history_entry_same_document_ffi(obj: JsValue) -> Bool = "webapi_NavigationHistoryEntry" "get_sameDocument"

fn navigation_history_entry_get_state_ffi(obj: JsValue) -> JsValue = "webapi_NavigationHistoryEntry" "getState"

fn navigation_history_entry_ondispose_ffi(obj: JsValue) -> EventHandler = "webapi_NavigationHistoryEntry" "get_ondispose"

fn navigation_history_entry_set_ondispose_ffi(obj: JsValue, ondispose: JsValue) -> Unit = "webapi_NavigationHistoryEntry" "set_ondispose"