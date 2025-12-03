// Auto-generated MoonBit bindings for EventHandlerNonNull callback

// Do not edit manually

//
// WebIDL Callback:
// [LegacyTreatNonObjectAsNull]
// callback EventHandlerNonNull = any (Event event);

///|
#external
pub type EventHandlerNonNull

///|
pub impl TJsValue for EventHandlerNonNull with to_js(self : EventHandlerNonNull) -> JsValue = "%identity"

///|
fn event_handler_non_null_new_ffi(
  f : (Event) -> JsValue,
) -> EventHandlerNonNull = "webapi_EventHandlerNonNull" "new"

///|
pub fn EventHandlerNonNull::new(f : (Event) -> JsValue) -> EventHandlerNonNull {
  event_handler_non_null_new_ffi(f)
}
