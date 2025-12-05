///|
/// EventListener - Callback interface for handling events

///|
#external
pub type EventListener

///|
pub impl TJsValue for EventListener with to_js(self : EventListener) -> JsValue = "%identity"

///|
#as_free_fn(event_listener)
pub fn EventListener::new(f : (Event) -> Unit) -> EventListener = "webapi_EventListener" "new"

///|
pub fn EventListener::null() -> EventListener = "JsValue" "null"
