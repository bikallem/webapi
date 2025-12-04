// Auto-generated MoonBit bindings for InputEvent

// Do not edit manually

//
// WebIDL Interface:
// [Exposed=Window]
// interface InputEvent : UIEvent {
//   constructor(DOMString type, optional InputEventInit eventInitDict = {});
//   readonly attribute USVString? data;
//   readonly attribute boolean isComposing;
//   readonly attribute DOMString inputType;
// };

///|
#external
pub type InputEvent

///|
pub trait TInputEvent: TJsValue + TUIEvent {
  data(self : Self) -> String? = _
  is_composing(self : Self) -> Bool = _
  input_type(self : Self) -> String = _
}

///|
pub impl TEvent for InputEvent

///|
pub impl TUIEvent for InputEvent

///|
pub impl TInputEvent for InputEvent

///|
pub impl TJsValue for InputEvent with to_js(self : InputEvent) -> JsValue = "%identity"

///|
pub fn InputEvent::null() -> InputEvent {
  JsValue::null()
}

///|
fn input_event_new_ffi(
  type_ : JsValue,
  event_init_dict : JsValue,
) -> InputEvent = "webapi_InputEvent" "new"

///|
pub fn InputEvent::new(
  type_ : String,
  event_init_dict? : InputEventInit = InputEventInit::empty(),
) -> InputEvent {
  input_event_new_ffi(TJsValue::to_js(type_), TJsValue::to_js(event_init_dict))
}

///|
fn input_event_data_ffi(obj : JsValue) -> JsValue = "webapi_InputEvent" "data"

///|
impl TInputEvent with data(self : Self) -> String? {
  input_event_data_ffi(self.to_js()).as_option()
}

///|
fn input_event_is_composing_ffi(obj : JsValue) -> Bool = "webapi_InputEvent" "isComposing"

///|
impl TInputEvent with is_composing(self : Self) -> Bool {
  input_event_is_composing_ffi(self.to_js())
}

///|
fn input_event_input_type_ffi(obj : JsValue) -> String = "webapi_InputEvent" "inputType"

///|
impl TInputEvent with input_type(self : Self) -> String {
  input_event_input_type_ffi(self.to_js())
}
