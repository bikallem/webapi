///|
extern "js" fn progress_event_init_ffi(
  bubbles : JsValue,
  cancelable : JsValue,
  composed : JsValue,
  length_computable : JsValue,
  loaded : JsValue,
  total : JsValue,
) -> ProgressEventInit =
  #|(bubbles, cancelable, composed, lengthComputable, loaded, total) => {
  #|  const obj = {};
  #|  if (bubbles !== undefined) obj.bubbles = bubbles;
  #|  if (cancelable !== undefined) obj.cancelable = cancelable;
  #|  if (composed !== undefined) obj.composed = composed;
  #|  if (lengthComputable !== undefined) obj.lengthComputable = lengthComputable;
  #|  if (loaded !== undefined) obj.loaded = loaded;
  #|  if (total !== undefined) obj.total = total;
  #|  return obj;
  #|}

///|
extern "js" fn progress_event_init_empty_ffi() -> ProgressEventInit = "() => {}"
