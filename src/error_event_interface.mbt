// Do not edit. This file is generated.
// MoonBit type: ErrorEvent
// Specifications: html.idl

///|
/// [ErrorEvent](https://developer.mozilla.org/en-US/docs/Web/API/ErrorEvent)
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
/// [ErrorEvent](https://developer.mozilla.org/en-US/docs/Web/API/ErrorEvent) interface.
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
/// [ErrorEvent.message](https://developer.mozilla.org/en-US/docs/Web/API/ErrorEvent/message)
impl TErrorEvent with message(self : Self) -> String {
  error_event_message_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn error_event_filename_ffi(obj : JsValue) -> String = "(obj) => obj.filename"

///|
/// [ErrorEvent.filename](https://developer.mozilla.org/en-US/docs/Web/API/ErrorEvent/filename)
impl TErrorEvent with filename(self : Self) -> String {
  error_event_filename_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn error_event_lineno_ffi(obj : JsValue) -> UInt = "(obj) => obj.lineno"

///|
/// [ErrorEvent.lineno](https://developer.mozilla.org/en-US/docs/Web/API/ErrorEvent/lineno)
impl TErrorEvent with lineno(self : Self) -> UInt {
  error_event_lineno_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn error_event_colno_ffi(obj : JsValue) -> UInt = "(obj) => obj.colno"

///|
/// [ErrorEvent.colno](https://developer.mozilla.org/en-US/docs/Web/API/ErrorEvent/colno)
impl TErrorEvent with colno(self : Self) -> UInt {
  error_event_colno_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn error_event_error_ffi(obj : JsValue) -> JsValue = "(obj) => obj.error"

///|
/// [ErrorEvent.error](https://developer.mozilla.org/en-US/docs/Web/API/ErrorEvent/error)
impl TErrorEvent with error(self : Self) -> JsValue {
  error_event_error_ffi(TJsValue::to_js(self))
}
