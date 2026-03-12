fn media_error_code_ffi(obj: JsValue) -> UInt = "webapi_MediaError" "get_code"

fn media_error_message_ffi_wasm(obj: JsValue) -> JsValue = "webapi_MediaError" "get_message"

///|
fn media_error_message_ffi(obj: JsValue) -> String {
  jsvalue_to_string(media_error_message_ffi_wasm(obj))
}