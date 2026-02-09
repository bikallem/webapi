///|
extern "js" fn dom_exception_new_ffi(
  message : JsValue,
  name : JsValue,
) -> DOMException = "(message, name) => new DOMException(message, name)"

///|
extern "js" fn dom_exception_name_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.name"

///|
fn dom_exception_name_ffi(obj : JsValue) -> String {
  dom_exception_name_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn dom_exception_message_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.message"

///|
fn dom_exception_message_ffi(obj : JsValue) -> String {
  dom_exception_message_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn dom_exception_code_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.code"

///|
fn dom_exception_code_ffi(obj : JsValue) -> UInt {
  dom_exception_code_ffi_js(obj).unsafe_cast()
}
