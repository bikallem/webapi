// Do not edit. This file is generated.
// MoonBit type: InputEvent
// Specifications: uievents.idl

/// [InputEvent](https://developer.mozilla.org/en-US/docs/Web/API/InputEvent)
#external
pub type InputEvent

pub impl TJsValue for InputEvent with to_js(self: InputEvent) -> JsValue = "%identity"

pub fn[T: TInputEvent] InputEvent::into(self : InputEvent) -> T = "%identity"

pub impl TInputEvent for InputEvent

pub impl TUIEvent for InputEvent

pub impl TEvent for InputEvent

pub fn InputEvent::new(type_ : String, 
event_init_dict? : InputEventInit = InputEventInit::empty()) -> InputEvent {
  input_event_new_ffi(TJsValue::to_js(type_), TJsValue::to_js(event_init_dict))
}

/// [InputEvent](https://developer.mozilla.org/en-US/docs/Web/API/InputEvent) interface.
pub trait TInputEvent: TUIEvent {
  data(self : Self) -> String = _
  is_composing(self : Self) -> Bool = _
  input_type(self : Self) -> String = _
}

/// [InputEvent.data](https://developer.mozilla.org/en-US/docs/Web/API/InputEvent/data)
impl TInputEvent with data(self : Self) -> String {
  input_event_data_ffi(TJsValue::to_js(self))
}

/// [InputEvent.isComposing](https://developer.mozilla.org/en-US/docs/Web/API/InputEvent/isComposing)
impl TInputEvent with is_composing(self : Self) -> Bool {
  input_event_is_composing_ffi(TJsValue::to_js(self))
}

/// [InputEvent.inputType](https://developer.mozilla.org/en-US/docs/Web/API/InputEvent/inputType)
impl TInputEvent with input_type(self : Self) -> String {
  input_event_input_type_ffi(TJsValue::to_js(self))
}