// Do not edit. This file is generated.
// MoonBit type: UIEventInit
// Specifications: uievents.idl, dom.idl

///|
#external
pub type UIEventInit

///|
pub impl TJsValue for UIEventInit with to_js(self : UIEventInit) -> JsValue = "%identity"

///|
extern "js" fn ui_event_init_ffi(
  bubbles : JsValue,
  cancelable : JsValue,
  composed : JsValue,
  view : JsValue,
  detail : JsValue,
  which : JsValue,
) -> UIEventInit =
  #|(bubbles, cancelable, composed, view, detail, which) => {
  #|  const obj = {};
  #|  if (bubbles !== undefined) obj.bubbles = bubbles;
  #|  if (cancelable !== undefined) obj.cancelable = cancelable;
  #|  if (composed !== undefined) obj.composed = composed;
  #|  if (view !== undefined) obj.view = view;
  #|  if (detail !== undefined) obj.detail = detail;
  #|  if (which !== undefined) obj.which = which;
  #|  return obj;
  #|}

///|
pub fn UIEventInit::new(
  bubbles? : Bool = false,
  cancelable? : Bool = false,
  composed? : Bool = false,
  view? : &TWindow = JsValue::null(),
  detail? : Int = 0,
  which? : UInt = 0,
) -> UIEventInit {
  ui_event_init_ffi(
    TJsValue::to_js(bubbles),
    TJsValue::to_js(cancelable),
    TJsValue::to_js(composed),
    TJsValue::to_js(view),
    TJsValue::to_js(detail),
    TJsValue::to_js(which),
  )
}

///|
extern "js" fn ui_event_init_empty_ffi() -> UIEventInit = "() => {}"

///|
pub fn UIEventInit::empty() -> UIEventInit {
  ui_event_init_empty_ffi()
}
