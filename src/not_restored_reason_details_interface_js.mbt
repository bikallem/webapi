extern "js" fn not_restored_reason_details_reason_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.reason"

///|
fn not_restored_reason_details_reason_ffi(obj: JsValue) -> String {
  not_restored_reason_details_reason_ffi_js(obj).unsafe_cast()
}

extern "js" fn not_restored_reason_details_to_json_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.toJSON()"

///|
fn not_restored_reason_details_to_json_ffi(obj: JsValue) -> JsValue {
  not_restored_reason_details_to_json_ffi_js(obj).unsafe_cast()
}