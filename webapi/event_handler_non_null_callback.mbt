// Do not edit. This file is generated.
// MoonBit type: EventHandlerNonNull
// Specifications: html.idl

/// [EventHandlerNonNull](https://developer.mozilla.org/en-US/docs/Web/API/EventHandlerNonNull)
#external
pub type EventHandlerNonNull

pub impl TJsValue for EventHandlerNonNull with to_js(self: EventHandlerNonNull) -> JsValue = "%identity"

pub impl FromJsAny for EventHandlerNonNull with from_js_any(value : JsAny) -> EventHandlerNonNull = "%identity"

pub fn EventHandlerNonNull::new(callback : (Event) -> JsValue) -> EventHandlerNonNull { event_handler_non_null_ffi(callback) }