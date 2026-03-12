// Do not edit. This file is generated.
// MoonBit type: ToggleEvent
// Specifications: html.idl

///|
/// [ToggleEvent](https://developer.mozilla.org/en-US/docs/Web/API/ToggleEvent)
#external
pub type ToggleEvent

///|
pub impl TJsValue for ToggleEvent with to_js(self : ToggleEvent) -> JsValue = "%identity"

///|
pub impl FromJsAny for ToggleEvent with from_js_any(value : JsAny) -> ToggleEvent = "%identity"

///|
pub fn[T : TToggleEvent] ToggleEvent::into(self : ToggleEvent) -> T = "%identity"

///|
pub impl TToggleEvent for ToggleEvent

///|
pub impl TEvent for ToggleEvent

///|
pub fn ToggleEvent::new(
  type_ : String,
  event_init_dict? : ToggleEventInit,
) -> ToggleEvent {
  toggle_event_new_ffi(TJsValue::to_js(type_), opt_to_js(event_init_dict))
}

///|
/// [ToggleEvent](https://developer.mozilla.org/en-US/docs/Web/API/ToggleEvent) interface.
pub trait TToggleEvent: TEvent {
  old_state(self : Self) -> String = _
  new_state(self : Self) -> String = _
  source(self : Self) -> Element = _
}

///|
/// [ToggleEvent.oldState](https://developer.mozilla.org/en-US/docs/Web/API/ToggleEvent/oldState)
impl TToggleEvent with old_state(self : Self) -> String {
  toggle_event_old_state_ffi(TJsValue::to_js(self))
}

///|
/// [ToggleEvent.newState](https://developer.mozilla.org/en-US/docs/Web/API/ToggleEvent/newState)
impl TToggleEvent with new_state(self : Self) -> String {
  toggle_event_new_state_ffi(TJsValue::to_js(self))
}

///|
/// [ToggleEvent.source](https://developer.mozilla.org/en-US/docs/Web/API/ToggleEvent/source)
impl TToggleEvent with source(self : Self) -> Element {
  toggle_event_source_ffi(TJsValue::to_js(self))
}
