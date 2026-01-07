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
pub fn[T : TPopStateEvent] PopStateEvent::into(self : PopStateEvent) -> T = "%identity"

///|
pub impl TPopStateEvent for PopStateEvent

///|
pub impl TEvent for PopStateEvent

///|
extern "js" fn pop_state_event_new_ffi(
  type_ : JsValue,
  event_init_dict : JsValue,
) -> PopStateEvent = "(type_, event_init_dict) => new PopStateEvent(type_, event_init_dict)"

///|
pub fn PopStateEvent::new(
  type_ : String,
  event_init_dict? : PopStateEventInit = PopStateEventInit::empty(),
) -> PopStateEvent {
  pop_state_event_new_ffi(
    TJsValue::to_js(type_),
    TJsValue::to_js(event_init_dict),
  )
}

///|
/// [PopStateEvent](https://developer.mozilla.org/en-US/docs/Web/API/PopStateEvent) interface.
pub trait TPopStateEvent: TEvent {
  state(self : Self) -> JsValue = _
  has_ua_visual_transition(self : Self) -> Bool = _
}

///|
extern "js" fn pop_state_event_state_ffi(obj : JsValue) -> JsValue = "(obj) => obj.state"

///|
/// [PopStateEvent.state](https://developer.mozilla.org/en-US/docs/Web/API/PopStateEvent/state)
impl TPopStateEvent with state(self : Self) -> JsValue {
  pop_state_event_state_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn pop_state_event_has_ua_visual_transition_ffi(
  obj : JsValue,
) -> Bool = "(obj) => obj.hasUAVisualTransition"

///|
/// [PopStateEvent.hasUAVisualTransition](https://developer.mozilla.org/en-US/docs/Web/API/PopStateEvent/hasUAVisualTransition)
impl TPopStateEvent with has_ua_visual_transition(self : Self) -> Bool {
  pop_state_event_has_ua_visual_transition_ffi(TJsValue::to_js(self))
}
