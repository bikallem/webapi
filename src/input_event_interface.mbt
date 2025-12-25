// Do not edit. This file is generated.
// MoonBit type: InputEvent
// Specifications: uievents.idl

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
pub trait TInputEvent: TUIEvent {
  data(self : Self) -> String = _
  is_composing(self : Self) -> Bool = _
  input_type(self : Self) -> String = _
}

///|
extern "js" fn input_event_data_ffi(obj : JsValue) -> String = "(obj) => obj.data"

///|
impl TInputEvent with data(self : Self) -> String {
  input_event_data_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn input_event_is_composing_ffi(obj : JsValue) -> Bool = "(obj) => obj.isComposing"

///|
impl TInputEvent with is_composing(self : Self) -> Bool {
  input_event_is_composing_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn input_event_input_type_ffi(obj : JsValue) -> String = "(obj) => obj.inputType"

///|
impl TInputEvent with input_type(self : Self) -> String {
  input_event_input_type_ffi(TJsValue::to_js(self))
}
