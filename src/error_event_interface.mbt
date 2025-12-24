///|
#external
pub type ErrorEvent

///|
pub impl TJsValue for ErrorEvent with to_js(self : ErrorEvent) -> JsValue = "%identity"

///|
pub fn[T : TErrorEvent] ErrorEvent::into(self : ErrorEvent) -> T = "%identity"

///|
pub impl TErrorEvent for ErrorEvent

///|
pub impl TEvent for ErrorEvent

///|
extern "js" fn error_event_new_ffi(
  type_ : JsValue,
  event_init_dict : JsValue,
) -> ErrorEvent = "(type_, event_init_dict) => new ErrorEvent(type_, event_init_dict)"

///|
pub fn ErrorEvent::new(
  type_ : String,
  event_init_dict? : ErrorEventInit = ErrorEventInit::empty(),
) -> ErrorEvent {
  error_event_new_ffi(TJsValue::to_js(type_), TJsValue::to_js(event_init_dict))
}

///|
pub trait TErrorEvent: TEvent {
  message(self : Self) -> String = _
  filename(self : Self) -> String = _
  lineno(self : Self) -> UInt = _
  colno(self : Self) -> UInt = _
  error(self : Self) -> JsValue = _
}

///|
extern "js" fn error_event_message_ffi(obj : JsValue) -> String = "(obj) => obj.message"

///|
impl TErrorEvent with message(self : Self) -> String {
  error_event_message_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn error_event_filename_ffi(obj : JsValue) -> String = "(obj) => obj.filename"

///|
impl TErrorEvent with filename(self : Self) -> String {
  error_event_filename_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn error_event_lineno_ffi(obj : JsValue) -> UInt = "(obj) => obj.lineno"

///|
impl TErrorEvent with lineno(self : Self) -> UInt {
  error_event_lineno_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn error_event_colno_ffi(obj : JsValue) -> UInt = "(obj) => obj.colno"

///|
impl TErrorEvent with colno(self : Self) -> UInt {
  error_event_colno_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn error_event_error_ffi(obj : JsValue) -> JsValue = "(obj) => obj.error"

///|
impl TErrorEvent with error(self : Self) -> JsValue {
  error_event_error_ffi(TJsValue::to_js(self))
}
