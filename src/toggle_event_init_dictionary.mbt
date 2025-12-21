///|
#external
pub type ToggleEventInit

///|
pub impl TJsValue for ToggleEventInit with to_js(self : ToggleEventInit) -> JsValue = "%identity"

///|
extern "js" fn toggle_event_init_ffi(
  bubbles : JsValue,
  cancelable : JsValue,
  composed : JsValue,
  old_state : JsValue,
  new_state : JsValue,
  source : JsValue,
) -> ToggleEventInit =
  #|(bubbles, cancelable, composed, oldState, newState, source) => {
  #|  const obj = {};
  #|  if (bubbles !== undefined) obj.bubbles = bubbles;
  #|  if (cancelable !== undefined) obj.cancelable = cancelable;
  #|  if (composed !== undefined) obj.composed = composed;
  #|  if (oldState !== undefined) obj.oldState = oldState;
  #|  if (newState !== undefined) obj.newState = newState;
  #|  if (source !== undefined) obj.source = source;
  #|  return obj;
  #|}

///|
pub fn ToggleEventInit::new(
  bubbles? : Bool = false,
  cancelable? : Bool = false,
  composed? : Bool = false,
  old_state? : String = "",
  new_state? : String = "",
  source? : &TElement = JsValue::null(),
) -> ToggleEventInit {
  toggle_event_init_ffi(
    TJsValue::to_js(bubbles),
    TJsValue::to_js(cancelable),
    TJsValue::to_js(composed),
    TJsValue::to_js(old_state),
    TJsValue::to_js(new_state),
    TJsValue::to_js(source),
  )
}

///|
extern "js" fn toggle_event_init_empty_ffi() -> ToggleEventInit = "() => {}"

///|
pub fn ToggleEventInit::empty() -> ToggleEventInit {
  toggle_event_init_empty_ffi()
}
