// Auto-generated MoonBit bindings for OnBeforeUnloadEventHandlerNonNull callback

// Do not edit manually

///|
#external
pub type OnBeforeUnloadEventHandlerNonNull

///|
pub impl TJsValue for OnBeforeUnloadEventHandlerNonNull with to_js(
  self : OnBeforeUnloadEventHandlerNonNull,
) -> JsValue = "%identity"

///|
fn on_before_unload_event_handler_non_null_new_ffi(
  f : JsValue,
) -> OnBeforeUnloadEventHandlerNonNull = "webapi_OnBeforeUnloadEventHandlerNonNull" "new"

///|
pub fn OnBeforeUnloadEventHandlerNonNull::new(
  f : (Event) -> String?,
) -> OnBeforeUnloadEventHandlerNonNull {
  on_before_unload_event_handler_non_null_new_ffi(fn_to_js(f))
}
