// Do not edit. This file is generated.
// MoonBit type: EventHandlerNonNull
// Specifications: html.idl

///|
#external
pub type EventHandlerNonNull

///|
pub impl TJsValue for EventHandlerNonNull with to_js(self : EventHandlerNonNull) -> JsValue = "%identity"

///|
extern "js" fn event_handler_non_null_ffi(
  f : (Event) -> JsValue,
) -> EventHandlerNonNull = "(f) => f"

///|
pub fn EventHandlerNonNull::new(f : (Event) -> JsValue) -> EventHandlerNonNull {
  event_handler_non_null_ffi(f)
}
