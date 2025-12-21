///|
#external
pub type SubmitEvent

///|
pub impl TJsValue for SubmitEvent with to_js(self : SubmitEvent) -> JsValue = "%identity"

///|
pub fn[T : TSubmitEvent] SubmitEvent::into(self : SubmitEvent) -> T = "%identity"

///|
pub impl TSubmitEvent for SubmitEvent

///|
pub impl TEvent for SubmitEvent

///|
extern "js" fn submit_event_ffi(
  type_ : JsValue,
  event_init_dict : JsValue,
) -> SubmitEvent = "(type_, event_init_dict) => new SubmitEvent(type_, event_init_dict)"

///|
pub fn SubmitEvent::new(
  type_ : String,
  event_init_dict? : SubmitEventInit = SubmitEventInit::empty(),
) -> SubmitEvent {
  submit_event_ffi(TJsValue::to_js(type_), TJsValue::to_js(event_init_dict))
}

///|
pub trait TSubmitEvent: TEvent {}
