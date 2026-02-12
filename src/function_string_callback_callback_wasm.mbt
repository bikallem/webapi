///|
fn function_string_callback_ffi_wasm(
  callback : (JsValue) -> Unit,
) -> FunctionStringCallback = "webapi_FunctionStringCallback" "new"

///|
fn function_string_callback_ffi(
  callback : (String) -> Unit,
) -> FunctionStringCallback {
  function_string_callback_ffi_wasm(fn(a0) { callback(jsvalue_to_string(a0)) })
}
