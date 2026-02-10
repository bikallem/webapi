extern "js" fn promise_rejection_event_init_ffi(bubbles: JsValue, cancelable: JsValue, composed: JsValue, promise: JsValue, reason: JsValue) -> PromiseRejectionEventInit = 
#|(bubbles, cancelable, composed, promise, reason) => {
#|  const obj = {};
#|  if (bubbles !== undefined) obj.bubbles = bubbles;
#|  if (cancelable !== undefined) obj.cancelable = cancelable;
#|  if (composed !== undefined) obj.composed = composed;
#|  if (promise !== undefined) obj.promise = promise;
#|  if (reason !== undefined) obj.reason = reason;
#|  return obj;
#|}

extern "js" fn promise_rejection_event_init_empty_ffi() -> PromiseRejectionEventInit = "() => {}"