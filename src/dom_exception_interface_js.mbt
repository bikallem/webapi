///|
extern "js" fn dom_exception_new_ffi(
  message : JsValue,
  name : JsValue,
) -> DOMException = "(message, name) => new DOMException(message, name)"

///|
extern "js" fn dom_exception_name_ffi(obj : JsValue) -> JsValue = "(obj) => obj.name"

///|
extern "js" fn dom_exception_message_ffi(obj : JsValue) -> JsValue = "(obj) => obj.message"

///|
extern "js" fn dom_exception_code_ffi(obj : JsValue) -> JsValue = "(obj) => obj.code"
