// Do not edit. This file is generated.
// MoonBit type: InputEvent
// Specifications: uievents.idl

///|
/// [InputEvent](https://developer.mozilla.org/en-US/docs/Web/API/InputEvent)
#external
pub type InputEvent

///|
pub impl TJsValue for InputEvent with to_js(self : InputEvent) -> JsValue = "%identity"

///|
pub impl FromJsAny for InputEvent with from_js_any(value : JsAny) -> InputEvent = "%identity"

///|
pub fn[T : TInputEvent] InputEvent::into(self : InputEvent) -> T = "%identity"

///|
pub impl TInputEvent for InputEvent

///|
pub impl TUIEvent for InputEvent

///|
pub impl TEvent for InputEvent

///|
pub fn InputEvent::new(
  type_ : String,
  event_init_dict? : InputEventInit,
) -> InputEvent {
  input_event_new_ffi(TJsValue::to_js(type_), opt_to_js(event_init_dict))
}

///|
/// [InputEvent](https://developer.mozilla.org/en-US/docs/Web/API/InputEvent) interface.
pub trait TInputEvent: TUIEvent {
  data(self : Self) -> String = _
  is_composing(self : Self) -> Bool = _
  input_type(self : Self) -> String = _
}

///|
/// [InputEvent.data](https://developer.mozilla.org/en-US/docs/Web/API/InputEvent/data)
impl TInputEvent with data(self : Self) -> String {
  input_event_data_ffi(TJsValue::to_js(self))
}

///|
/// [InputEvent.isComposing](https://developer.mozilla.org/en-US/docs/Web/API/InputEvent/isComposing)
impl TInputEvent with is_composing(self : Self) -> Bool {
  input_event_is_composing_ffi(TJsValue::to_js(self))
}

///|
/// [InputEvent.inputType](https://developer.mozilla.org/en-US/docs/Web/API/InputEvent/inputType)
impl TInputEvent with input_type(self : Self) -> String {
  input_event_input_type_ffi(TJsValue::to_js(self))
}

///|
#cfg(target="js")
extern "js" fn input_event_new_ffi(
  type_ : JsValue,
  event_init_dict : JsValue,
) -> InputEvent = "(type_, event_init_dict) => new InputEvent(type_, event_init_dict)"

///|
#cfg(target="js")
extern "js" fn input_event_data_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.data"

///|
#cfg(target="js")
fn input_event_data_ffi(obj : JsValue) -> String {
  input_event_data_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn input_event_is_composing_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.isComposing"

///|
#cfg(target="js")
fn input_event_is_composing_ffi(obj : JsValue) -> Bool {
  input_event_is_composing_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn input_event_input_type_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.inputType"

///|
#cfg(target="js")
fn input_event_input_type_ffi(obj : JsValue) -> String {
  input_event_input_type_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn input_event_new_ffi(
  type_ : JsValue,
  event_init_dict : JsValue,
) -> InputEvent = "webapi_InputEvent" "new"

///|
#cfg(target="wasm-gc")
fn input_event_data_ffi_wasm(obj : JsValue) -> JsValue = "webapi_InputEvent" "get_data"

///|
#cfg(target="wasm-gc")
fn input_event_data_ffi(obj : JsValue) -> String {
  jsvalue_to_string(input_event_data_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn input_event_is_composing_ffi(obj : JsValue) -> Bool = "webapi_InputEvent" "get_isComposing"

///|
#cfg(target="wasm-gc")
fn input_event_input_type_ffi_wasm(obj : JsValue) -> JsValue = "webapi_InputEvent" "get_inputType"

///|
#cfg(target="wasm-gc")
fn input_event_input_type_ffi(obj : JsValue) -> String {
  jsvalue_to_string(input_event_input_type_ffi_wasm(obj))
}
