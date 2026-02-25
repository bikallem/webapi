///|
fn close_event_new_ffi(
  type_ : JsValue,
  event_init_dict : JsValue,
) -> CloseEvent = "webapi_CloseEvent" "new"

///|
fn close_event_was_clean_ffi(obj : JsValue) -> Bool = "webapi_CloseEvent" "get_wasClean"

///|
fn close_event_code_ffi(obj : JsValue) -> UInt = "webapi_CloseEvent" "get_code"

///|
fn close_event_reason_ffi_wasm(obj : JsValue) -> JsValue = "webapi_CloseEvent" "get_reason"

///|
fn close_event_reason_ffi(obj : JsValue) -> String {
  jsvalue_to_string(close_event_reason_ffi_wasm(obj))
}
