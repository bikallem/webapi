// Do not edit. This file is generated.
// MoonBit type: InputEventInit
// Specifications: uievents.idl, dom.idl

///|
/// [InputEventInit](https://developer.mozilla.org/en-US/docs/Web/API/InputEventInit)
#external
pub type InputEventInit

///|
pub impl TJsValue for InputEventInit with to_js(self : InputEventInit) -> JsValue = "%identity"

///|
pub fn InputEventInit::new(
  bubbles? : Bool = false,
  cancelable? : Bool = false,
  composed? : Bool = false,
  view? : &TWindow = JsValue::null(),
  detail? : Int = (0 : Int),
  which? : UInt = (0 : UInt),
  data? : String = JsValue::null(),
  is_composing? : Bool = false,
  input_type? : String = "",
) -> InputEventInit {
  input_event_init_ffi(
    TJsValue::to_js(bubbles),
    TJsValue::to_js(cancelable),
    TJsValue::to_js(composed),
    TJsValue::to_js(view),
    TJsValue::to_js(detail),
    TJsValue::to_js(which),
    TJsValue::to_js(data),
    TJsValue::to_js(is_composing),
    TJsValue::to_js(input_type),
  )
}

///|
pub fn InputEventInit::empty() -> InputEventInit {
  input_event_init_empty_ffi()
}
