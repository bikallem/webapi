///|
extern "js" fn submit_event_init_ffi(
  bubbles : JsValue,
  cancelable : JsValue,
  composed : JsValue,
  submitter : JsValue,
) -> SubmitEventInit =
  #|(bubbles, cancelable, composed, submitter) => {
  #|  const obj = {};
  #|  if (bubbles !== undefined) obj.bubbles = bubbles;
  #|  if (cancelable !== undefined) obj.cancelable = cancelable;
  #|  if (composed !== undefined) obj.composed = composed;
  #|  if (submitter !== undefined) obj.submitter = submitter;
  #|  return obj;
  #|}

///|
extern "js" fn submit_event_init_empty_ffi() -> SubmitEventInit = "() => {}"

///|
extern "js" fn submit_event_init_get_bubbles_ffi(obj : JsValue) -> JsValue = "(obj) => obj.bubbles"

///|
extern "js" fn submit_event_init_get_cancelable_ffi(obj : JsValue) -> JsValue = "(obj) => obj.cancelable"

///|
extern "js" fn submit_event_init_get_composed_ffi(obj : JsValue) -> JsValue = "(obj) => obj.composed"

///|
extern "js" fn submit_event_init_get_submitter_ffi(obj : JsValue) -> JsValue = "(obj) => obj.submitter"
