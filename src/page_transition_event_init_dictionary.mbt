// Do not edit. This file is generated.
// MoonBit type: PageTransitionEventInit
// Specifications: dom.idl, html.idl

///|
#external
pub type PageTransitionEventInit

///|
pub impl TJsValue for PageTransitionEventInit with to_js(
  self : PageTransitionEventInit,
) -> JsValue = "%identity"

///|
extern "js" fn page_transition_event_init_ffi(
  bubbles : JsValue,
  cancelable : JsValue,
  composed : JsValue,
  persisted : JsValue,
) -> PageTransitionEventInit =
  #|(bubbles, cancelable, composed, persisted) => {
  #|  const obj = {};
  #|  if (bubbles !== undefined) obj.bubbles = bubbles;
  #|  if (cancelable !== undefined) obj.cancelable = cancelable;
  #|  if (composed !== undefined) obj.composed = composed;
  #|  if (persisted !== undefined) obj.persisted = persisted;
  #|  return obj;
  #|}

///|
pub fn PageTransitionEventInit::new(
  bubbles? : Bool = false,
  cancelable? : Bool = false,
  composed? : Bool = false,
  persisted? : Bool = false,
) -> PageTransitionEventInit {
  page_transition_event_init_ffi(
    TJsValue::to_js(bubbles),
    TJsValue::to_js(cancelable),
    TJsValue::to_js(composed),
    TJsValue::to_js(persisted),
  )
}

///|
extern "js" fn page_transition_event_init_empty_ffi() -> PageTransitionEventInit = "() => {}"

///|
pub fn PageTransitionEventInit::empty() -> PageTransitionEventInit {
  page_transition_event_init_empty_ffi()
}
