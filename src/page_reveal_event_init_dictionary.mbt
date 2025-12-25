// Do not edit. This file is generated.
// MoonBit type: PageRevealEventInit
// Specifications: dom.idl, html.idl

///|
#external
pub type PageRevealEventInit

///|
pub impl TJsValue for PageRevealEventInit with to_js(self : PageRevealEventInit) -> JsValue = "%identity"

///|
extern "js" fn page_reveal_event_init_ffi(
  bubbles : JsValue,
  cancelable : JsValue,
  composed : JsValue,
  view_transition : JsValue,
) -> PageRevealEventInit =
  #|(bubbles, cancelable, composed, viewTransition) => {
  #|  const obj = {};
  #|  if (bubbles !== undefined) obj.bubbles = bubbles;
  #|  if (cancelable !== undefined) obj.cancelable = cancelable;
  #|  if (composed !== undefined) obj.composed = composed;
  #|  if (viewTransition !== undefined) obj.viewTransition = viewTransition;
  #|  return obj;
  #|}

///|
pub fn PageRevealEventInit::new(
  bubbles? : Bool = false,
  cancelable? : Bool = false,
  composed? : Bool = false,
  view_transition? : ViewTransition = JsValue::null(),
) -> PageRevealEventInit {
  page_reveal_event_init_ffi(
    TJsValue::to_js(bubbles),
    TJsValue::to_js(cancelable),
    TJsValue::to_js(composed),
    TJsValue::to_js(view_transition),
  )
}

///|
extern "js" fn page_reveal_event_init_empty_ffi() -> PageRevealEventInit = "() => {}"

///|
pub fn PageRevealEventInit::empty() -> PageRevealEventInit {
  page_reveal_event_init_empty_ffi()
}
