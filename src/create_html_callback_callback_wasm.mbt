///|
fn create_html_callback_ffi_wasm(
  callback : (JsValue, JsValue) -> String,
) -> CreateHTMLCallback = "webapi_CreateHTMLCallback" "new"

///|
fn create_html_callback_ffi(
  callback : (String, JsValue) -> String,
) -> CreateHTMLCallback {
  create_html_callback_ffi_wasm(fn(a0, a1) {
    callback(jsvalue_to_string(a0), a1.unsafe_cast())
  })
}
