///|
#external
pub type ToggleEvent

///|
pub impl TJsValue for ToggleEvent with to_js(self : ToggleEvent) -> JsValue = "%identity"

///|
pub fn[T : TToggleEvent] ToggleEvent::into(self : ToggleEvent) -> T = "%identity"

///|
pub impl TToggleEvent for ToggleEvent

///|
pub impl TEvent for ToggleEvent

///|
extern "js" fn toggle_event_ffi(
  type_ : JsValue,
  event_init_dict : JsValue,
) -> ToggleEvent = "(type_, event_init_dict) => new ToggleEvent(type_, event_init_dict)"

///|
pub fn ToggleEvent::new(
  type_ : String,
  event_init_dict? : ToggleEventInit = ToggleEventInit::empty(),
) -> ToggleEvent {
  toggle_event_ffi(TJsValue::to_js(type_), TJsValue::to_js(event_init_dict))
}

///|
pub trait TToggleEvent: TEvent {}
