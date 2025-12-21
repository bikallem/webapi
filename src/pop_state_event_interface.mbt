///|
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
extern "js" fn pop_state_event_ffi(
  type_ : JsValue,
  event_init_dict : JsValue,
) -> PopStateEvent = "(type_, event_init_dict) => new PopStateEvent(type_, event_init_dict)"

///|
pub fn PopStateEvent::new(
  type_ : String,
  event_init_dict? : PopStateEventInit = PopStateEventInit::empty(),
) -> PopStateEvent {
  pop_state_event_ffi(TJsValue::to_js(type_), TJsValue::to_js(event_init_dict))
}

///|
pub trait TPopStateEvent: TEvent {}
