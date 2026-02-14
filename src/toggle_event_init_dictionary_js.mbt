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
extern "js" fn toggle_event_init_empty_ffi() -> ToggleEventInit = "() => {}"

///|
extern "js" fn toggle_event_init_get_bubbles_ffi(obj : JsValue) -> JsValue = "(obj) => obj.bubbles"

///|
extern "js" fn toggle_event_init_get_cancelable_ffi(obj : JsValue) -> JsValue = "(obj) => obj.cancelable"

///|
extern "js" fn toggle_event_init_get_composed_ffi(obj : JsValue) -> JsValue = "(obj) => obj.composed"

///|
extern "js" fn toggle_event_init_get_old_state_ffi(obj : JsValue) -> JsValue = "(obj) => obj.oldState"

///|
extern "js" fn toggle_event_init_get_new_state_ffi(obj : JsValue) -> JsValue = "(obj) => obj.newState"

///|
extern "js" fn toggle_event_init_get_source_ffi(obj : JsValue) -> JsValue = "(obj) => obj.source"
