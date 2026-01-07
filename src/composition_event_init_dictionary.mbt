// Do not edit. This file is generated.
// MoonBit type: CompositionEventInit
// Specifications: uievents.idl

///|
/// [CompositionEventInit](https://developer.mozilla.org/en-US/docs/Web/API/CompositionEventInit)
#external
pub type CompositionEventInit

///|
pub impl TJsValue for CompositionEventInit with to_js(
  self : CompositionEventInit,
) -> JsValue = "%identity"

///|
extern "js" fn composition_event_init_ffi(
  view : JsValue,
  detail : JsValue,
  which : JsValue,
  data : JsValue,
) -> CompositionEventInit =
  #|(view, detail, which, data) => {
  #|  const obj = {};
  #|  if (view !== undefined) obj.view = view;
  #|  if (detail !== undefined) obj.detail = detail;
  #|  if (which !== undefined) obj.which = which;
  #|  if (data !== undefined) obj.data = data;
  #|  return obj;
  #|}

///|
pub fn CompositionEventInit::new(
  view? : &TWindow = JsValue::null(),
  detail? : Int = (0 : Int),
  which? : UInt = (0 : UInt),
  data? : String = "",
) -> CompositionEventInit {
  composition_event_init_ffi(
    TJsValue::to_js(view),
    TJsValue::to_js(detail),
    TJsValue::to_js(which),
    TJsValue::to_js(data),
  )
}

///|
extern "js" fn composition_event_init_empty_ffi() -> CompositionEventInit = "() => {}"

///|
pub fn CompositionEventInit::empty() -> CompositionEventInit {
  composition_event_init_empty_ffi()
}
