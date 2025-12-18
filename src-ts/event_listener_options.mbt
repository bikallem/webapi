// Auto-generated MoonBit bindings for EventListenerOptions dictionary

// Do not edit manually

///|
#external
pub type EventListenerOptions

///|
pub impl TJsValue for EventListenerOptions with to_js(self : EventListenerOptions) -> JsValue = "%identity"

///|
fn event_listener_options_ffi(capture : JsValue) -> EventListenerOptions = "webapi_EventListenerOptions" "new"

///|
pub fn EventListenerOptions::new(
  capture? : Bool = false
) -> EventListenerOptions {
  event_listener_options_ffi(TJsValue::to_js(capture))
}

///|
pub fn EventListenerOptions::empty() -> EventListenerOptions = "webapi_Dictionary" "empty"