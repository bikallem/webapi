// Do not edit. This file is generated.
// MoonBit type: EventInit
// Specifications: dom.idl

///|
/// [EventInit](https://developer.mozilla.org/en-US/docs/Web/API/EventInit)
#external
pub type EventInit

///|
pub impl TJsValue for EventInit with to_js(self : EventInit) -> JsValue = "%identity"

///|
pub impl FromJsAny for EventInit with from_js_any(value : JsAny) -> EventInit = "%identity"

///|
pub fn EventInit::new(
  bubbles? : Bool = false,
  cancelable? : Bool = false,
  composed? : Bool = false,
) -> EventInit {
  event_init_ffi(
    TJsValue::to_js(bubbles),
    TJsValue::to_js(cancelable),
    TJsValue::to_js(composed),
  )
}

///|
pub fn EventInit::empty() -> EventInit {
  event_init_empty_ffi()
}
