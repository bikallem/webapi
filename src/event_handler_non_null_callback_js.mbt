///|
extern "js" fn event_handler_non_null_ffi(
  callback : (Event) -> JsValue,
) -> EventHandlerNonNull = "(callback) => callback"
