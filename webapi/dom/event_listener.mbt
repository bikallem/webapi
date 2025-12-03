// Auto-generated MoonBit bindings for EventListener

// Do not edit manually

//
// WebIDL Interface:
// callback interface EventListener {
//   undefined handleEvent(Event event);
// };

///|
#external
pub type EventListener

///|
pub trait TEventListener: TJsValue {
  handle_event(self : Self, event : Event) -> Unit = _
}

///|
pub impl TEventListener for EventListener

///|
pub impl TJsValue for EventListener with to_js(self : EventListener) -> JsValue = "%identity"

///|
fn event_listener_handle_event_ffi(obj : JsValue, event : JsValue) -> Unit = "webapi_EventListener" "handleEvent"

///|
impl TEventListener with handle_event(self : Self, event : Event) -> Unit {
  event_listener_handle_event_ffi(TJsValue::to_js(self), TJsValue::to_js(event))
}
