///|
extern "js" fn media_error_code_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.code"

///|
fn media_error_code_ffi(obj : JsValue) -> UInt {
  media_error_code_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn media_error_message_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.message"

///|
fn media_error_message_ffi(obj : JsValue) -> String {
  media_error_message_ffi_js(obj).unsafe_cast()
}
