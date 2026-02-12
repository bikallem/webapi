///|
fn on_error_event_handler_non_null_ffi_wasm(
  callback : (JsValue, JsValue, JsValue, JsValue, JsValue) -> JsValue,
) -> OnErrorEventHandlerNonNull = "webapi_OnErrorEventHandlerNonNull" "new"

///|
fn on_error_event_handler_non_null_ffi(
  callback : (OnErrorEventHandlerNonNullEvent, String, UInt, UInt, JsValue) -> JsValue,
) -> OnErrorEventHandlerNonNull {
  on_error_event_handler_non_null_ffi_wasm(fn(a0, a1, a2, a3, a4) {
    callback(
      a0.unsafe_cast(),
      jsvalue_to_string(a1),
      a2.unsafe_cast(),
      a3.unsafe_cast(),
      a4.unsafe_cast(),
    )
  })
}
