///|
#external
pub type OnBeforeUnloadEventHandlerNonNull

///|
pub impl TJsValue for OnBeforeUnloadEventHandlerNonNull with to_js(
  self : OnBeforeUnloadEventHandlerNonNull,
) -> JsValue = "%identity"

///|
extern "js" fn on_before_unload_event_handler_non_null_ffi(
  f : (&TEvent) -> JsValue,
) -> OnBeforeUnloadEventHandlerNonNull = "(f) => f"

///|
pub fn OnBeforeUnloadEventHandlerNonNull::new(
  f : (&TEvent) -> JsValue,
) -> OnBeforeUnloadEventHandlerNonNull {
  on_before_unload_event_handler_non_null_ffi(f)
}
