// Do not edit. This file is generated.
// MoonBit type: EventListenerOptions
// Specifications: dom.idl

///|
/// [EventListenerOptions](https://developer.mozilla.org/en-US/docs/Web/API/EventListenerOptions)
#external
pub type EventListenerOptions

///|
pub impl TJsValue for EventListenerOptions with to_js(
  self : EventListenerOptions,
) -> JsValue = "%identity"

///|
pub fn EventListenerOptions::new(
  capture? : Bool = false,
) -> EventListenerOptions {
  event_listener_options_ffi(TJsValue::to_js(capture))
}

///|
pub fn EventListenerOptions::empty() -> EventListenerOptions {
  event_listener_options_empty_ffi()
}
