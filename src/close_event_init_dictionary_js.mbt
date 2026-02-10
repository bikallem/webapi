///|
extern "js" fn close_event_init_ffi(
  bubbles : JsValue,
  cancelable : JsValue,
  composed : JsValue,
  was_clean : JsValue,
  code : JsValue,
  reason : JsValue,
) -> CloseEventInit =
  #|(bubbles, cancelable, composed, wasClean, code, reason) => {
  #|  const obj = {};
  #|  if (bubbles !== undefined) obj.bubbles = bubbles;
  #|  if (cancelable !== undefined) obj.cancelable = cancelable;
  #|  if (composed !== undefined) obj.composed = composed;
  #|  if (wasClean !== undefined) obj.wasClean = wasClean;
  #|  if (code !== undefined) obj.code = code;
  #|  if (reason !== undefined) obj.reason = reason;
  #|  return obj;
  #|}

///|
extern "js" fn close_event_init_empty_ffi() -> CloseEventInit = "() => {}"
