// Do not edit. This file is generated.
// MoonBit type: InputEventInit
// Specifications: uievents.idl

///|
#external
pub type InputEventInit

///|
pub impl TJsValue for InputEventInit with to_js(self : InputEventInit) -> JsValue = "%identity"

///|
extern "js" fn input_event_init_ffi(
  view : JsValue,
  detail : JsValue,
  which : JsValue,
  data : JsValue,
  is_composing : JsValue,
  input_type : JsValue,
) -> InputEventInit =
  #|(view, detail, which, data, isComposing, inputType) => {
  #|  const obj = {};
  #|  if (view !== undefined) obj.view = view;
  #|  if (detail !== undefined) obj.detail = detail;
  #|  if (which !== undefined) obj.which = which;
  #|  if (data !== undefined) obj.data = data;
  #|  if (isComposing !== undefined) obj.isComposing = isComposing;
  #|  if (inputType !== undefined) obj.inputType = inputType;
  #|  return obj;
  #|}

///|
pub fn InputEventInit::new(
  view? : &TWindow = JsValue::null(),
  detail? : Int = 0,
  which? : UInt = 0,
  data? : String = JsValue::null(),
  is_composing? : Bool = false,
  input_type? : String = "",
) -> InputEventInit {
  input_event_init_ffi(
    TJsValue::to_js(view),
    TJsValue::to_js(detail),
    TJsValue::to_js(which),
    TJsValue::to_js(data),
    TJsValue::to_js(is_composing),
    TJsValue::to_js(input_type),
  )
}

///|
extern "js" fn input_event_init_empty_ffi() -> InputEventInit = "() => {}"

///|
pub fn InputEventInit::empty() -> InputEventInit {
  input_event_init_empty_ffi()
}
