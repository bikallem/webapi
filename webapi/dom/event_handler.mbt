// Auto-generated MoonBit bindings for EventHandler typedef

// Do not edit manually

//
// WebIDL Typedef:
// typedef EventHandlerNonNull? EventHandler;

///|
#external
pub type EventHandler

///|
pub impl TJsValue for EventHandler with to_js(self : EventHandler) -> JsValue = "%identity"

///|
fn event_handler_new_ffi(f : JsValue) -> EventHandler = "webapi_EventHandlerNonNull" "new"

///|
pub fn EventHandler::new(f : (Event) -> JsValue) -> EventHandler {
  event_handler_new_ffi(fn_to_js(f))
}

///|
pub fn EventHandler::null() -> EventHandler = "JsValue" "null"

///|
pub fn EventHandler::is_null(self : EventHandler) -> Bool = "JsValue" "isNull"
