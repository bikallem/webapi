///|
fn trusted_script_to_json_ffi_wasm(obj : JsValue) -> JsValue = "webapi_TrustedScript" "toJSON"

///|
fn trusted_script_to_json_ffi(obj : JsValue) -> String {
  jsvalue_to_string(trusted_script_to_json_ffi_wasm(obj))
}
