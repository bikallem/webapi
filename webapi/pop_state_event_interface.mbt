// Do not edit. This file is generated.
// MoonBit type: PopStateEvent
// Specifications: html.idl

///|
/// [PopStateEvent](https://developer.mozilla.org/en-US/docs/Web/API/PopStateEvent)
#external
pub type PopStateEvent

///|
pub impl TJsValue for PopStateEvent with to_js(self : PopStateEvent) -> JsValue = "%identity"

///|
pub impl FromJsAny for PopStateEvent with from_js_any(value : JsAny) -> PopStateEvent = "%identity"

///|
pub fn[T : TPopStateEvent] PopStateEvent::into(self : PopStateEvent) -> T = "%identity"

///|
pub impl TPopStateEvent for PopStateEvent

///|
pub impl TEvent for PopStateEvent

///|
pub fn PopStateEvent::new(
  type_ : String,
  event_init_dict? : PopStateEventInit,
) -> PopStateEvent {
  pop_state_event_new_ffi(TJsValue::to_js(type_), opt_to_js(event_init_dict))
}

///|
/// [PopStateEvent](https://developer.mozilla.org/en-US/docs/Web/API/PopStateEvent) interface.
pub trait TPopStateEvent: TEvent {
  state(self : Self) -> JsValue = _
  has_ua_visual_transition(self : Self) -> Bool = _
}

///|
/// [PopStateEvent.state](https://developer.mozilla.org/en-US/docs/Web/API/PopStateEvent/state)
impl TPopStateEvent with state(self : Self) -> JsValue {
  pop_state_event_state_ffi(TJsValue::to_js(self))
}

///|
/// [PopStateEvent.hasUAVisualTransition](https://developer.mozilla.org/en-US/docs/Web/API/PopStateEvent/hasUAVisualTransition)
impl TPopStateEvent with has_ua_visual_transition(self : Self) -> Bool {
  pop_state_event_has_ua_visual_transition_ffi(TJsValue::to_js(self))
}
