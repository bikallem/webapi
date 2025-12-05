// Auto-generated MoonBit bindings for EventHandler typedef

// Do not edit manually

///|
#external
pub type EventHandler

///|
pub impl TJsValue for EventHandler with to_js(self : EventHandler) -> JsValue = "%identity"

///|
pub fn EventHandler::new(f : (Event) -> JsValue) -> EventHandler = "webapi_EventHandlerNonNull" "new"
