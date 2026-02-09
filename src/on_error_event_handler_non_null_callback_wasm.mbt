///|
pub fn OnErrorEventHandlerNonNull::new(
  f : (OnErrorEventHandlerNonNullEvent, String, UInt, UInt, JsValue) -> JsValue,
) -> OnErrorEventHandlerNonNull {
  let w : (JsValue, JsValue, JsValue, JsValue, JsValue) -> JsValue = fn(
    a0 : JsValue,
    a1 : JsValue,
    a2 : JsValue,
    a3 : JsValue,
    a4 : JsValue,
  ) {
    TJsValue::to_js(
      f(
        a0.unsafe_cast(),
        a1.unsafe_cast(),
        a2.unsafe_cast(),
        a3.unsafe_cast(),
        a4.unsafe_cast(),
      ),
    )
  }
  on_error_event_handler_non_null_ffi(w).unsafe_cast()
}

///|
fn on_error_event_handler_non_null_ffi(
  f : (JsValue, JsValue, JsValue, JsValue, JsValue) -> JsValue,
) -> JsValue = "webapi_OnErrorEventHandlerNonNull" "new"
