///|
fn create_script_url_callback_ffi_wasm(
  callback : (JsValue, JsValue) -> String,
) -> CreateScriptURLCallback = "webapi_CreateScriptURLCallback" "new"

///|
fn create_script_url_callback_ffi(
  callback : (String, JsValue) -> String,
) -> CreateScriptURLCallback {
  create_script_url_callback_ffi_wasm(fn(a0, a1) {
    callback(jsvalue_to_string(a0), a1.unsafe_cast())
  })
}
