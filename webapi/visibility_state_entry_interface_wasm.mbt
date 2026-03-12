fn visibility_state_entry_name_ffi_wasm(obj: JsValue) -> JsValue = "webapi_VisibilityStateEntry" "get_name"

///|
fn visibility_state_entry_name_ffi(obj: JsValue) -> String {
  jsvalue_to_string(visibility_state_entry_name_ffi_wasm(obj))
}

fn visibility_state_entry_entry_type_ffi_wasm(obj: JsValue) -> JsValue = "webapi_VisibilityStateEntry" "get_entryType"

///|
fn visibility_state_entry_entry_type_ffi(obj: JsValue) -> String {
  jsvalue_to_string(visibility_state_entry_entry_type_ffi_wasm(obj))
}

fn visibility_state_entry_start_time_ffi(obj: JsValue) -> DOMHighResTimeStamp = "webapi_VisibilityStateEntry" "get_startTime"

fn visibility_state_entry_duration_ffi(obj: JsValue) -> UInt = "webapi_VisibilityStateEntry" "get_duration"