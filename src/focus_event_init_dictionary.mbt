// Do not edit. This file is generated.
// MoonBit type: FocusEventInit
// Specifications: uievents.idl, dom.idl

///|
/// [FocusEventInit](https://developer.mozilla.org/en-US/docs/Web/API/FocusEventInit)
#external
pub type FocusEventInit

///|
pub impl TJsValue for FocusEventInit with to_js(self : FocusEventInit) -> JsValue = "%identity"

///|
extern "js" fn focus_event_init_ffi(
  bubbles : JsValue,
  cancelable : JsValue,
  composed : JsValue,
  view : JsValue,
  detail : JsValue,
  which : JsValue,
  related_target : JsValue,
) -> FocusEventInit =
  #|(bubbles, cancelable, composed, view, detail, which, relatedTarget) => {
  #|  const obj = {};
  #|  if (bubbles !== undefined) obj.bubbles = bubbles;
  #|  if (cancelable !== undefined) obj.cancelable = cancelable;
  #|  if (composed !== undefined) obj.composed = composed;
  #|  if (view !== undefined) obj.view = view;
  #|  if (detail !== undefined) obj.detail = detail;
  #|  if (which !== undefined) obj.which = which;
  #|  if (relatedTarget !== undefined) obj.relatedTarget = relatedTarget;
  #|  return obj;
  #|}

///|
pub fn FocusEventInit::new(
  bubbles? : Bool = false,
  cancelable? : Bool = false,
  composed? : Bool = false,
  view? : &TWindow = JsValue::null(),
  detail? : Int = (0 : Int),
  which? : UInt = (0 : UInt),
  related_target? : &TEventTarget = JsValue::null(),
) -> FocusEventInit {
  focus_event_init_ffi(
    TJsValue::to_js(bubbles),
    TJsValue::to_js(cancelable),
    TJsValue::to_js(composed),
    TJsValue::to_js(view),
    TJsValue::to_js(detail),
    TJsValue::to_js(which),
    TJsValue::to_js(related_target),
  )
}

///|
extern "js" fn focus_event_init_empty_ffi() -> FocusEventInit = "() => {}"

///|
pub fn FocusEventInit::empty() -> FocusEventInit {
  focus_event_init_empty_ffi()
}
