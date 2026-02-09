///|
extern "js" fn error_event_init_ffi(
  bubbles : JsValue,
  cancelable : JsValue,
  composed : JsValue,
  message : JsValue,
  filename : JsValue,
  lineno : JsValue,
  colno : JsValue,
  error : JsValue,
) -> ErrorEventInit =
  #|(bubbles, cancelable, composed, message, filename, lineno, colno, error) => {
  #|  const obj = {};
  #|  if (bubbles !== undefined) obj.bubbles = bubbles;
  #|  if (cancelable !== undefined) obj.cancelable = cancelable;
  #|  if (composed !== undefined) obj.composed = composed;
  #|  if (message !== undefined) obj.message = message;
  #|  if (filename !== undefined) obj.filename = filename;
  #|  if (lineno !== undefined) obj.lineno = lineno;
  #|  if (colno !== undefined) obj.colno = colno;
  #|  if (error !== undefined) obj.error = error;
  #|  return obj;
  #|}

///|
extern "js" fn error_event_init_empty_ffi() -> ErrorEventInit = "() => {}"
