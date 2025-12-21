///|
#external
pub type PageSwapEventInit

///|
pub impl TJsValue for PageSwapEventInit with to_js(self : PageSwapEventInit) -> JsValue = "%identity"

///|
extern "js" fn page_swap_event_init_ffi(
  bubbles : JsValue,
  cancelable : JsValue,
  composed : JsValue,
  activation : JsValue,
  view_transition : JsValue,
) -> PageSwapEventInit =
  #|(bubbles, cancelable, composed, activation, viewTransition) => {
  #|  const obj = {};
  #|  if (bubbles !== undefined) obj.bubbles = bubbles;
  #|  if (cancelable !== undefined) obj.cancelable = cancelable;
  #|  if (composed !== undefined) obj.composed = composed;
  #|  if (activation !== undefined) obj.activation = activation;
  #|  if (viewTransition !== undefined) obj.viewTransition = viewTransition;
  #|  return obj;
  #|}

///|
pub fn PageSwapEventInit::new(
  bubbles? : Bool = false,
  cancelable? : Bool = false,
  composed? : Bool = false,
  activation? : &TNavigationActivation = JsValue::null(),
  view_transition? : ViewTransition = JsValue::null(),
) -> PageSwapEventInit {
  page_swap_event_init_ffi(
    TJsValue::to_js(bubbles),
    TJsValue::to_js(cancelable),
    TJsValue::to_js(composed),
    TJsValue::to_js(activation),
    TJsValue::to_js(view_transition),
  )
}

///|
extern "js" fn page_swap_event_init_empty_ffi() -> PageSwapEventInit = "() => {}"

///|
pub fn PageSwapEventInit::empty() -> PageSwapEventInit {
  page_swap_event_init_empty_ffi()
}
