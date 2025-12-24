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
extern "js" fn toggle_event_new_ffi(
  type_ : JsValue,
  event_init_dict : JsValue,
) -> ToggleEvent = "(type_, event_init_dict) => new ToggleEvent(type_, event_init_dict)"

///|
pub fn ToggleEvent::new(
  type_ : String,
  event_init_dict? : ToggleEventInit = ToggleEventInit::empty(),
) -> ToggleEvent {
  toggle_event_new_ffi(TJsValue::to_js(type_), TJsValue::to_js(event_init_dict))
}

///|
pub trait TToggleEvent: TEvent {
  old_state(self : Self) -> String = _
  new_state(self : Self) -> String = _
  source(self : Self) -> Element = _
}

///|
extern "js" fn toggle_event_old_state_ffi(obj : JsValue) -> String = "(obj) => obj.oldState"

///|
impl TToggleEvent with old_state(self : Self) -> String {
  toggle_event_old_state_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn toggle_event_new_state_ffi(obj : JsValue) -> String = "(obj) => obj.newState"

///|
impl TToggleEvent with new_state(self : Self) -> String {
  toggle_event_new_state_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn toggle_event_source_ffi(obj : JsValue) -> Element = "(obj) => obj.source"

///|
impl TToggleEvent with source(self : Self) -> Element {
  toggle_event_source_ffi(TJsValue::to_js(self))
}
