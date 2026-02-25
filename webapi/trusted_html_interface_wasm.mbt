///|
fn trusted_html_to_json_ffi_wasm(obj : JsValue) -> JsValue = "webapi_TrustedHTML" "toJSON"

///|
fn trusted_html_to_json_ffi(obj : JsValue) -> String {
  jsvalue_to_string(trusted_html_to_json_ffi_wasm(obj))
}
