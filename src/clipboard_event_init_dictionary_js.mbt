///|
extern "js" fn clipboard_event_init_ffi(
  bubbles : JsValue,
  cancelable : JsValue,
  composed : JsValue,
  clipboard_data : JsValue,
) -> ClipboardEventInit =
  #|(bubbles, cancelable, composed, clipboardData) => {
  #|  const obj = {};
  #|  if (bubbles !== undefined) obj.bubbles = bubbles;
  #|  if (cancelable !== undefined) obj.cancelable = cancelable;
  #|  if (composed !== undefined) obj.composed = composed;
  #|  if (clipboardData !== undefined) obj.clipboardData = clipboardData;
  #|  return obj;
  #|}

///|
extern "js" fn clipboard_event_init_empty_ffi() -> ClipboardEventInit = "() => {}"
