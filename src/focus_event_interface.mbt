// Do not edit. This file is generated.
// MoonBit type: FocusEvent
// Specifications: uievents.idl

///|
#external
pub type FocusEvent

///|
pub impl TJsValue for FocusEvent with to_js(self : FocusEvent) -> JsValue = "%identity"

///|
pub fn[T : TFocusEvent] FocusEvent::into(self : FocusEvent) -> T = "%identity"

///|
pub impl TFocusEvent for FocusEvent

///|
pub impl TUIEvent for FocusEvent

///|
pub impl TEvent for FocusEvent

///|
extern "js" fn focus_event_new_ffi(
  type_ : JsValue,
  event_init_dict : JsValue,
) -> FocusEvent = "(type_, event_init_dict) => new FocusEvent(type_, event_init_dict)"

///|
pub fn FocusEvent::new(
  type_ : String,
  event_init_dict? : FocusEventInit = FocusEventInit::empty(),
) -> FocusEvent {
  focus_event_new_ffi(TJsValue::to_js(type_), TJsValue::to_js(event_init_dict))
}

///|
pub trait TFocusEvent: TUIEvent {
  related_target(self : Self) -> EventTarget = _
}

///|
extern "js" fn focus_event_related_target_ffi(obj : JsValue) -> EventTarget = "(obj) => obj.relatedTarget"

///|
impl TFocusEvent with related_target(self : Self) -> EventTarget {
  focus_event_related_target_ffi(TJsValue::to_js(self))
}
