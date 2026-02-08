///|
fn dom_exception_new_ffi(message : JsValue, name : JsValue) -> DOMException = "webapi_DOMException" "new"

///|
fn dom_exception_name_ffi(obj : JsValue) -> JsValue = "webapi_DOMException" "get_name"

///|
fn dom_exception_message_ffi(obj : JsValue) -> JsValue = "webapi_DOMException" "get_message"

///|
fn dom_exception_code_ffi(obj : JsValue) -> JsValue = "webapi_DOMException" "get_code"
