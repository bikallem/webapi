///|
pub fn OnErrorEventHandlerNonNull::new(
  f : (OnErrorEventHandlerNonNullEvent, String, UInt, UInt, JsValue) -> JsValue,
) -> OnErrorEventHandlerNonNull {
  on_error_event_handler_non_null_ffi(js_of(f)).unsafe_cast()
}

///|
extern "js" fn on_error_event_handler_non_null_ffi(f : JsValue) -> JsValue = "(f) => f"
