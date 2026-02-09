///|
fn before_unload_event_return_value_ffi_wasm(obj : JsValue) -> JsValue = "webapi_BeforeUnloadEvent" "get_returnValue"

///|
fn before_unload_event_return_value_ffi(obj : JsValue) -> String {
  jsvalue_to_string(before_unload_event_return_value_ffi_wasm(obj))
}

///|
fn before_unload_event_set_return_value_ffi(
  obj : JsValue,
  return_value : JsValue,
) -> Unit = "webapi_BeforeUnloadEvent" "set_returnValue"
