///|
#external
pub type InputEvent

///|
pub impl TJsValue for InputEvent with to_js(self : InputEvent) -> JsValue = "%identity"

///|
pub fn[T : TInputEvent] InputEvent::into(self : InputEvent) -> T = "%identity"

///|
pub impl TInputEvent for InputEvent

///|
pub impl TUIEvent for InputEvent

///|
pub impl TEvent for InputEvent

///|
extern "js" fn input_event_new_ffi(
  type_ : JsValue,
  event_init_dict : JsValue,
) -> InputEvent = "(type_, event_init_dict) => new InputEvent(type_, event_init_dict)"

///|
pub fn InputEvent::new(
  type_ : String,
  event_init_dict? : InputEventInit = InputEventInit::empty(),
) -> InputEvent {
  input_event_new_ffi(TJsValue::to_js(type_), TJsValue::to_js(event_init_dict))
}

///|
pub trait TInputEvent: TUIEvent {}
