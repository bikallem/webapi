///|
extern "js" fn promise_rejection_event_init_ffi(
  bubbles : JsValue,
  cancelable : JsValue,
  composed : JsValue,
  promise : JsValue,
  reason : JsValue,
) -> PromiseRejectionEventInit =
  #|(bubbles, cancelable, composed, promise, reason) => {
  #|  const obj = {};
  #|  if (bubbles !== undefined) obj.bubbles = bubbles;
  #|  if (cancelable !== undefined) obj.cancelable = cancelable;
  #|  if (composed !== undefined) obj.composed = composed;
  #|  if (promise !== undefined) obj.promise = promise;
  #|  if (reason !== undefined) obj.reason = reason;
  #|  return obj;
  #|}

///|
extern "js" fn promise_rejection_event_init_empty_ffi() -> PromiseRejectionEventInit = "() => {}"

///|
extern "js" fn promise_rejection_event_init_get_bubbles_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.bubbles"

///|
extern "js" fn promise_rejection_event_init_get_cancelable_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.cancelable"

///|
extern "js" fn promise_rejection_event_init_get_composed_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.composed"

///|
extern "js" fn promise_rejection_event_init_get_promise_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.promise"

///|
fn promise_rejection_event_init_get_promise_ffi(obj : JsValue) -> JsValue {
  promise_rejection_event_init_get_promise_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn promise_rejection_event_init_get_reason_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.reason"
