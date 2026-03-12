// Do not edit. This file is generated.
// MoonBit type: EventListener
// Specifications: dom.idl

/// [EventListener](https://developer.mozilla.org/en-US/docs/Web/API/EventListener)
#external
pub type EventListener

pub impl TJsValue for EventListener with to_js(self: EventListener) -> JsValue = "%identity"

pub impl FromJsAny for EventListener with from_js_any(value : JsAny) -> EventListener = "%identity"

pub fn EventListener::new(callback : (Event) -> Unit) -> EventListener { event_listener_ffi(callback) }