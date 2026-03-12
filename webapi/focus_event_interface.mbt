// Do not edit. This file is generated.
// MoonBit type: FocusEvent
// Specifications: uievents.idl

/// [FocusEvent](https://developer.mozilla.org/en-US/docs/Web/API/FocusEvent)
#external
pub type FocusEvent

pub impl TJsValue for FocusEvent with to_js(self: FocusEvent) -> JsValue = "%identity"

pub impl FromJsAny for FocusEvent with from_js_any(value : JsAny) -> FocusEvent = "%identity"

pub fn[T: TFocusEvent] FocusEvent::into(self : FocusEvent) -> T = "%identity"

pub impl TFocusEvent for FocusEvent

pub impl TUIEvent for FocusEvent

pub impl TEvent for FocusEvent

pub fn FocusEvent::new(type_ : String, 
event_init_dict? : FocusEventInit) -> FocusEvent {
  focus_event_new_ffi(TJsValue::to_js(type_), opt_to_js(event_init_dict))
}

/// [FocusEvent](https://developer.mozilla.org/en-US/docs/Web/API/FocusEvent) interface.
pub trait TFocusEvent: TUIEvent {
  related_target(self : Self) -> EventTarget = _
}

/// [FocusEvent.relatedTarget](https://developer.mozilla.org/en-US/docs/Web/API/FocusEvent/relatedTarget)
impl TFocusEvent with related_target(self : Self) -> EventTarget {
  focus_event_related_target_ffi(TJsValue::to_js(self))
}