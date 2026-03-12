///|
extern "js" fn on_error_event_handler_non_null_ffi(
  callback : (OnErrorEventHandlerNonNullEvent, String, UInt, UInt, JsValue) -> JsValue,
) -> OnErrorEventHandlerNonNull = "(callback) => callback"
