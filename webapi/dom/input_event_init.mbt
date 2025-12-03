// Auto-generated MoonBit bindings for InputEventInit dictionary

// Do not edit manually

//
// WebIDL Dictionary:
// dictionary InputEventInit : UIEventInit {
//   DOMString? data = null;
//   boolean isComposing = false;
//   DOMString inputType = "";
// };

///|
#external
pub type InputEventInit

///|
pub impl TJsValue for InputEventInit with to_js(self : InputEventInit) -> JsValue = "%identity"

///|
fn input_event_init_ffi(data : JsValue, is_composing : JsValue, input_type : JsValue) -> InputEventInit = "webapi_InputEventInit" "new"

///|
pub fn InputEventInit::new(
  data? : String = JsValue::null(),
  is_composing? : Bool = false,
  input_type? : String = ""
) -> InputEventInit {
  input_event_init_ffi(TJsValue::to_js(data), TJsValue::to_js(is_composing), TJsValue::to_js(input_type))
}

///|
pub fn InputEventInit::empty() -> InputEventInit = "webapi_Dictionary" "empty"