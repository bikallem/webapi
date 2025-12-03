// Auto-generated MoonBit bindings for OnBeforeUnloadEventHandler typedef

// Do not edit manually

//
// WebIDL Typedef:
// typedef OnBeforeUnloadEventHandlerNonNull? OnBeforeUnloadEventHandler;

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

///|
pub fn OnBeforeUnloadEventHandler::null() -> OnBeforeUnloadEventHandler = "JsValue" "null"

///|
pub fn OnBeforeUnloadEventHandler::is_null(
  self : OnBeforeUnloadEventHandler,
) -> Bool = "JsValue" "isNull"
