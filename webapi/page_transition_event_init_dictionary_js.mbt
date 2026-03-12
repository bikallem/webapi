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
extern "js" fn page_transition_event_init_empty_ffi() -> PageTransitionEventInit = "() => {}"

///|
extern "js" fn page_transition_event_init_get_bubbles_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.bubbles"

///|
extern "js" fn page_transition_event_init_get_cancelable_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.cancelable"

///|
extern "js" fn page_transition_event_init_get_composed_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.composed"

///|
extern "js" fn page_transition_event_init_get_persisted_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.persisted"
