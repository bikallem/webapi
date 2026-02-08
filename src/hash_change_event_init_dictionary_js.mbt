///|
extern "js" fn hash_change_event_init_ffi(
  bubbles : JsValue,
  cancelable : JsValue,
  composed : JsValue,
  old_url : JsValue,
  new_url : JsValue,
) -> HashChangeEventInit =
  #|(bubbles, cancelable, composed, oldURL, newURL) => {
  #|  const obj = {};
  #|  if (bubbles !== undefined) obj.bubbles = bubbles;
  #|  if (cancelable !== undefined) obj.cancelable = cancelable;
  #|  if (composed !== undefined) obj.composed = composed;
  #|  if (oldURL !== undefined) obj.oldURL = oldURL;
  #|  if (newURL !== undefined) obj.newURL = newURL;
  #|  return obj;
  #|}

///|
extern "js" fn hash_change_event_init_empty_ffi() -> HashChangeEventInit = "() => {}"
