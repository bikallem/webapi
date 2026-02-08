// Do not edit. This file is generated.
// MoonBit type: CompositionEventInit
// Specifications: uievents.idl, dom.idl

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
  bubbles : JsValue,
  cancelable : JsValue,
  composed : JsValue,
  view : JsValue,
  detail : JsValue,
  which : JsValue,
  data : JsValue,
) -> CompositionEventInit =
  #|(bubbles, cancelable, composed, view, detail, which, data) => {
  #|  const obj = {};
  #|  if (bubbles !== undefined) obj.bubbles = bubbles;
  #|  if (cancelable !== undefined) obj.cancelable = cancelable;
  #|  if (composed !== undefined) obj.composed = composed;
  #|  if (view !== undefined) obj.view = view;
  #|  if (detail !== undefined) obj.detail = detail;
  #|  if (which !== undefined) obj.which = which;
  #|  if (data !== undefined) obj.data = data;
  #|  return obj;
  #|}

///|
pub fn CompositionEventInit::new(
  bubbles? : Bool = false,
  cancelable? : Bool = false,
  composed? : Bool = false,
  view? : &TWindow = JsValue::null(),
  detail? : Int = (0 : Int),
  which? : UInt = (0 : UInt),
  data? : String = "",
) -> CompositionEventInit {
  composition_event_init_ffi(
    TJsValue::to_js(bubbles),
    TJsValue::to_js(cancelable),
    TJsValue::to_js(composed),
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
