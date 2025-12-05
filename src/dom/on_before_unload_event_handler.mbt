// Auto-generated MoonBit bindings for OnBeforeUnloadEventHandler typedef

// Do not edit manually

///|
#external
pub type OnBeforeUnloadEventHandler

///|
pub impl TJsValue for OnBeforeUnloadEventHandler with to_js(
  self : OnBeforeUnloadEventHandler,
) -> JsValue = "%identity"

///|
fn on_before_unload_event_handler_new_ffi(
  f : JsValue,
) -> OnBeforeUnloadEventHandler = "webapi_OnBeforeUnloadEventHandlerNonNull" "new"

///|
pub fn OnBeforeUnloadEventHandler::new(
  f : (Event) -> String?,
) -> OnBeforeUnloadEventHandler {
  on_before_unload_event_handler_new_ffi(fn_to_js(f))
}
