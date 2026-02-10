extern "js" fn submit_event_init_ffi(bubbles: JsValue, cancelable: JsValue, composed: JsValue, submitter: JsValue) -> SubmitEventInit = 
#|(bubbles, cancelable, composed, submitter) => {
#|  const obj = {};
#|  if (bubbles !== undefined) obj.bubbles = bubbles;
#|  if (cancelable !== undefined) obj.cancelable = cancelable;
#|  if (composed !== undefined) obj.composed = composed;
#|  if (submitter !== undefined) obj.submitter = submitter;
#|  return obj;
#|}

extern "js" fn submit_event_init_empty_ffi() -> SubmitEventInit = "() => {}"