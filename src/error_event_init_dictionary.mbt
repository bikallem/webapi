///|
#external
pub type ErrorEventInit

///|
pub impl TJsValue for ErrorEventInit with to_js(self : ErrorEventInit) -> JsValue = "%identity"

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
pub fn ErrorEventInit::new(
  bubbles? : Bool = false,
  cancelable? : Bool = false,
  composed? : Bool = false,
  message? : String = "",
  filename? : String = "",
  lineno? : UInt = 0,
  colno? : UInt = 0,
  error? : JsValue,
) -> ErrorEventInit {
  error_event_init_ffi(
    TJsValue::to_js(bubbles),
    TJsValue::to_js(cancelable),
    TJsValue::to_js(composed),
    TJsValue::to_js(message),
    TJsValue::to_js(filename),
    TJsValue::to_js(lineno),
    TJsValue::to_js(colno),
    opt_to_js(error),
  )
}

///|
extern "js" fn error_event_init_empty_ffi() -> ErrorEventInit = "() => {}"

///|
pub fn ErrorEventInit::empty() -> ErrorEventInit {
  error_event_init_empty_ffi()
}
