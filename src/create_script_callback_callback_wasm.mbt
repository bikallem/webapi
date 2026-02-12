///|
fn create_script_callback_ffi_wasm(
  callback : (JsValue, JsValue) -> String,
) -> CreateScriptCallback = "webapi_CreateScriptCallback" "new"

///|
fn create_script_callback_ffi(
  callback : (String, JsValue) -> String,
) -> CreateScriptCallback {
  create_script_callback_ffi_wasm(fn(a0, a1) {
    callback(jsvalue_to_string(a0), a1.unsafe_cast())
  })
}
