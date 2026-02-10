///|
fn not_restored_reason_details_reason_ffi_wasm(obj : JsValue) -> JsValue = "webapi_NotRestoredReasonDetails" "get_reason"

///|
fn not_restored_reason_details_reason_ffi(obj : JsValue) -> String {
  jsvalue_to_string(not_restored_reason_details_reason_ffi_wasm(obj))
}

///|
fn not_restored_reason_details_to_json_ffi(obj : JsValue) -> JsValue = "webapi_NotRestoredReasonDetails" "toJSON"
