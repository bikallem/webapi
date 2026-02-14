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

///|
extern "js" fn error_event_init_get_bubbles_ffi(obj : JsValue) -> JsValue = "(obj) => obj.bubbles"

///|
extern "js" fn error_event_init_get_cancelable_ffi(obj : JsValue) -> JsValue = "(obj) => obj.cancelable"

///|
extern "js" fn error_event_init_get_composed_ffi(obj : JsValue) -> JsValue = "(obj) => obj.composed"

///|
extern "js" fn error_event_init_get_message_ffi(obj : JsValue) -> JsValue = "(obj) => obj.message"

///|
extern "js" fn error_event_init_get_filename_ffi(obj : JsValue) -> JsValue = "(obj) => obj.filename"

///|
extern "js" fn error_event_init_get_lineno_ffi(obj : JsValue) -> JsValue = "(obj) => obj.lineno"

///|
extern "js" fn error_event_init_get_colno_ffi(obj : JsValue) -> JsValue = "(obj) => obj.colno"

///|
extern "js" fn error_event_init_get_error_ffi(obj : JsValue) -> JsValue = "(obj) => obj.error"
