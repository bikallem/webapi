///|
fn error_event_new_ffi(
  type_ : JsValue,
  event_init_dict : JsValue,
) -> ErrorEvent = "webapi_ErrorEvent" "new"

///|
fn error_event_message_ffi_wasm(obj : JsValue) -> JsValue = "webapi_ErrorEvent" "get_message"

///|
fn error_event_message_ffi(obj : JsValue) -> String {
  jsvalue_to_string(error_event_message_ffi_wasm(obj))
}

///|
fn error_event_filename_ffi_wasm(obj : JsValue) -> JsValue = "webapi_ErrorEvent" "get_filename"

///|
fn error_event_filename_ffi(obj : JsValue) -> String {
  jsvalue_to_string(error_event_filename_ffi_wasm(obj))
}

///|
fn error_event_lineno_ffi(obj : JsValue) -> UInt = "webapi_ErrorEvent" "get_lineno"

///|
fn error_event_colno_ffi(obj : JsValue) -> UInt = "webapi_ErrorEvent" "get_colno"

///|
fn error_event_error_ffi(obj : JsValue) -> JsValue = "webapi_ErrorEvent" "get_error"
