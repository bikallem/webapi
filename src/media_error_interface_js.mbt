extern "js" fn media_error_code_ffi(obj: JsValue) -> JsValue = "(obj) => obj.code"

extern "js" fn media_error_message_ffi(obj: JsValue) -> JsValue = "(obj) => obj.message"