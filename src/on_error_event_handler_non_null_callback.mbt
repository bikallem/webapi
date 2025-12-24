///|
#external
pub type OnErrorEventHandlerNonNull

///|
pub impl TJsValue for OnErrorEventHandlerNonNull with to_js(
  self : OnErrorEventHandlerNonNull,
) -> JsValue = "%identity"

///|
extern "js" fn on_error_event_handler_non_null_ffi(
  f : (OnErrorEventHandlerNonNullEvent, String, UInt, UInt, JsValue) -> JsValue,
) -> OnErrorEventHandlerNonNull = "(f) => f"

///|
pub fn OnErrorEventHandlerNonNull::new(
  f : (OnErrorEventHandlerNonNullEvent, String, UInt, UInt, JsValue) -> JsValue,
) -> OnErrorEventHandlerNonNull {
  on_error_event_handler_non_null_ffi(f)
}
