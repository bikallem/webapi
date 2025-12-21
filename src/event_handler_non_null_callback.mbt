///|
#external
pub type EventHandlerNonNull

///|
pub impl TJsValue for EventHandlerNonNull with to_js(self : EventHandlerNonNull) -> JsValue = "%identity"

///|
extern "js" fn event_handler_non_null_ffi(
  f : (&TEvent) -> JsValue,
) -> EventHandlerNonNull = "(f) => f"

///|
pub fn EventHandlerNonNull::new(
  f : (&TEvent) -> JsValue,
) -> EventHandlerNonNull {
  event_handler_non_null_ffi(f)
}
