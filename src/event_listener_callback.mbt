// Auto-generated MoonBit bindings for EventListener callback

// Do not edit manually

///|
#external
pub type EventListener

///|
pub impl TJsValue for EventListener with to_js(self : EventListener) -> JsValue = "%identity"

///|
pub fn EventListener::new(f : (&TEvent) -> Unit) -> EventListener = "webapi_EventListener" "new"
