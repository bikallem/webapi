fn dom_exception_new_ffi(message: JsValue, name: JsValue) -> DOMException = "webapi_DOMException" "new"

fn dom_exception_name_ffi_wasm(obj: JsValue) -> JsValue = "webapi_DOMException" "get_name"

///|
fn dom_exception_name_ffi(obj: JsValue) -> String {
  jsvalue_to_string(dom_exception_name_ffi_wasm(obj))
}

fn dom_exception_message_ffi_wasm(obj: JsValue) -> JsValue = "webapi_DOMException" "get_message"

///|
fn dom_exception_message_ffi(obj: JsValue) -> String {
  jsvalue_to_string(dom_exception_message_ffi_wasm(obj))
}

fn dom_exception_code_ffi(obj: JsValue) -> UInt = "webapi_DOMException" "get_code"