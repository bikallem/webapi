// Do not edit. This file is generated.
// MoonBit type: ErrorEventInit
// Specifications: html.idl, dom.idl

///|
/// [ErrorEventInit](https://developer.mozilla.org/en-US/docs/Web/API/ErrorEventInit)
#external
pub type ErrorEventInit

///|
pub impl TJsValue for ErrorEventInit with to_js(self : ErrorEventInit) -> JsValue = "%identity"

///|
pub impl FromJsAny for ErrorEventInit with from_js_any(value : JsAny) -> ErrorEventInit = "%identity"

///|
pub fn ErrorEventInit::new(
  bubbles? : Bool,
  cancelable? : Bool,
  composed? : Bool,
  message? : String,
  filename? : String,
  lineno? : UInt,
  colno? : UInt,
  error? : JsValue,
) -> ErrorEventInit {
  error_event_init_ffi(
    opt_to_js(bubbles),
    opt_to_js(cancelable),
    opt_to_js(composed),
    opt_to_js(message),
    opt_to_js(filename),
    opt_to_js(lineno),
    opt_to_js(colno),
    opt_to_js(error),
  )
}

///|
pub fn ErrorEventInit::empty() -> ErrorEventInit {
  error_event_init_empty_ffi()
}

///|
pub fn ErrorEventInit::bubbles(self : ErrorEventInit) -> Bool? {
  error_event_init_get_bubbles_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn ErrorEventInit::cancelable(self : ErrorEventInit) -> Bool? {
  error_event_init_get_cancelable_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn ErrorEventInit::composed(self : ErrorEventInit) -> Bool? {
  error_event_init_get_composed_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn ErrorEventInit::message(self : ErrorEventInit) -> String? {
  error_event_init_get_message_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn ErrorEventInit::filename(self : ErrorEventInit) -> String? {
  error_event_init_get_filename_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn ErrorEventInit::lineno(self : ErrorEventInit) -> UInt? {
  error_event_init_get_lineno_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn ErrorEventInit::colno(self : ErrorEventInit) -> UInt? {
  error_event_init_get_colno_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn ErrorEventInit::error(self : ErrorEventInit) -> JsValue? {
  error_event_init_get_error_ffi(TJsValue::to_js(self)).to_option()
}

///|
#cfg(target="js")
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
#cfg(target="js")
extern "js" fn error_event_init_empty_ffi() -> ErrorEventInit = "() => {}"

///|
#cfg(target="js")
extern "js" fn error_event_init_get_bubbles_ffi(obj : JsValue) -> JsValue = "(obj) => obj.bubbles"

///|
#cfg(target="js")
extern "js" fn error_event_init_get_cancelable_ffi(obj : JsValue) -> JsValue = "(obj) => obj.cancelable"

///|
#cfg(target="js")
extern "js" fn error_event_init_get_composed_ffi(obj : JsValue) -> JsValue = "(obj) => obj.composed"

///|
#cfg(target="js")
extern "js" fn error_event_init_get_message_ffi(obj : JsValue) -> JsValue = "(obj) => obj.message"

///|
#cfg(target="js")
extern "js" fn error_event_init_get_filename_ffi(obj : JsValue) -> JsValue = "(obj) => obj.filename"

///|
#cfg(target="js")
extern "js" fn error_event_init_get_lineno_ffi(obj : JsValue) -> JsValue = "(obj) => obj.lineno"

///|
#cfg(target="js")
extern "js" fn error_event_init_get_colno_ffi(obj : JsValue) -> JsValue = "(obj) => obj.colno"

///|
#cfg(target="js")
extern "js" fn error_event_init_get_error_ffi(obj : JsValue) -> JsValue = "(obj) => obj.error"

///|
#cfg(target="wasm-gc")
fn error_event_init_ffi(
  bubbles : JsValue,
  cancelable : JsValue,
  composed : JsValue,
  message : JsValue,
  filename : JsValue,
  lineno : JsValue,
  colno : JsValue,
  error : JsValue,
) -> ErrorEventInit = "webapi_ErrorEventInit" "new"

///|
#cfg(target="wasm-gc")
fn error_event_init_empty_ffi() -> ErrorEventInit = "webapi_Dictionary" "empty"

///|
#cfg(target="wasm-gc")
fn error_event_init_get_bubbles_ffi(obj : JsValue) -> JsValue = "webapi_ErrorEventInit" "get_bubbles"

///|
#cfg(target="wasm-gc")
fn error_event_init_get_cancelable_ffi(obj : JsValue) -> JsValue = "webapi_ErrorEventInit" "get_cancelable"

///|
#cfg(target="wasm-gc")
fn error_event_init_get_composed_ffi(obj : JsValue) -> JsValue = "webapi_ErrorEventInit" "get_composed"

///|
#cfg(target="wasm-gc")
fn error_event_init_get_message_ffi(obj : JsValue) -> JsValue = "webapi_ErrorEventInit" "get_message"

///|
#cfg(target="wasm-gc")
fn error_event_init_get_filename_ffi(obj : JsValue) -> JsValue = "webapi_ErrorEventInit" "get_filename"

///|
#cfg(target="wasm-gc")
fn error_event_init_get_lineno_ffi(obj : JsValue) -> JsValue = "webapi_ErrorEventInit" "get_lineno"

///|
#cfg(target="wasm-gc")
fn error_event_init_get_colno_ffi(obj : JsValue) -> JsValue = "webapi_ErrorEventInit" "get_colno"

///|
#cfg(target="wasm-gc")
fn error_event_init_get_error_ffi(obj : JsValue) -> JsValue = "webapi_ErrorEventInit" "get_error"
