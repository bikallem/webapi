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
pub impl FromJsAny for ErrorEvent with from_js_any(value : JsAny) -> ErrorEvent = "%identity"

///|
/// Unchecked downcast — no runtime type check is performed.
/// Prefer `try_into()` for checked downcasts.
#deprecated("Use unsafe_into or try_into instead")
pub fn[T : TErrorEvent] ErrorEvent::into(self : ErrorEvent) -> T = "%identity"

///|
/// Unchecked downcast — no runtime type check is performed.
/// WARNING: If the underlying JS value is not of type T, this will silently
/// produce a value with incorrect type, leading to undefined behavior.
pub fn[T : TErrorEvent] ErrorEvent::unsafe_into(self : ErrorEvent) -> T = "%identity"

///|
pub impl HasConstructor for ErrorEvent with constructor_name() {
  "ErrorEvent"
}

///|
/// Checked downcast — returns None if the JS value is not an instance of T.
pub fn[T : TErrorEvent + HasConstructor] ErrorEvent::try_into(
  self : ErrorEvent,
) -> T? {
  if js_instanceof(TJsValue::to_js(self), T::constructor_name()) {
    Some(self.unsafe_into())
  } else {
    None
  }
}

///|
pub impl TErrorEvent for ErrorEvent

///|
pub impl TEvent for ErrorEvent

///|
pub fn ErrorEvent::new(
  type_ : String,
  event_init_dict? : ErrorEventInit,
) -> ErrorEvent {
  error_event_new_ffi(TJsValue::to_js(type_), opt_to_js(event_init_dict))
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
/// [ErrorEvent.message](https://developer.mozilla.org/en-US/docs/Web/API/ErrorEvent/message)
impl TErrorEvent with message(self : Self) -> String {
  error_event_message_ffi(TJsValue::to_js(self))
}

///|
/// [ErrorEvent.filename](https://developer.mozilla.org/en-US/docs/Web/API/ErrorEvent/filename)
impl TErrorEvent with filename(self : Self) -> String {
  error_event_filename_ffi(TJsValue::to_js(self))
}

///|
/// [ErrorEvent.lineno](https://developer.mozilla.org/en-US/docs/Web/API/ErrorEvent/lineno)
impl TErrorEvent with lineno(self : Self) -> UInt {
  error_event_lineno_ffi(TJsValue::to_js(self))
}

///|
/// [ErrorEvent.colno](https://developer.mozilla.org/en-US/docs/Web/API/ErrorEvent/colno)
impl TErrorEvent with colno(self : Self) -> UInt {
  error_event_colno_ffi(TJsValue::to_js(self))
}

///|
/// [ErrorEvent.error](https://developer.mozilla.org/en-US/docs/Web/API/ErrorEvent/error)
impl TErrorEvent with error(self : Self) -> JsValue {
  error_event_error_ffi(TJsValue::to_js(self))
}

///|
#cfg(target="js")
extern "js" fn error_event_new_ffi(
  type_ : JsValue,
  event_init_dict : JsValue,
) -> ErrorEvent = "(type_, event_init_dict) => new ErrorEvent(type_, event_init_dict)"

///|
#cfg(target="js")
extern "js" fn error_event_message_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.message"

///|
#cfg(target="js")
fn error_event_message_ffi(obj : JsValue) -> String {
  error_event_message_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn error_event_filename_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.filename"

///|
#cfg(target="js")
fn error_event_filename_ffi(obj : JsValue) -> String {
  error_event_filename_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn error_event_lineno_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.lineno"

///|
#cfg(target="js")
fn error_event_lineno_ffi(obj : JsValue) -> UInt {
  error_event_lineno_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn error_event_colno_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.colno"

///|
#cfg(target="js")
fn error_event_colno_ffi(obj : JsValue) -> UInt {
  error_event_colno_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn error_event_error_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.error"

///|
#cfg(target="js")
fn error_event_error_ffi(obj : JsValue) -> JsValue {
  error_event_error_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn error_event_new_ffi(
  type_ : JsValue,
  event_init_dict : JsValue,
) -> ErrorEvent = "webapi_ErrorEvent" "new"

///|
#cfg(target="wasm-gc")
fn error_event_message_ffi_wasm(obj : JsValue) -> JsValue = "webapi_ErrorEvent" "get_message"

///|
#cfg(target="wasm-gc")
fn error_event_message_ffi(obj : JsValue) -> String {
  jsvalue_to_string(error_event_message_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn error_event_filename_ffi_wasm(obj : JsValue) -> JsValue = "webapi_ErrorEvent" "get_filename"

///|
#cfg(target="wasm-gc")
fn error_event_filename_ffi(obj : JsValue) -> String {
  jsvalue_to_string(error_event_filename_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn error_event_lineno_ffi(obj : JsValue) -> UInt = "webapi_ErrorEvent" "get_lineno"

///|
#cfg(target="wasm-gc")
fn error_event_colno_ffi(obj : JsValue) -> UInt = "webapi_ErrorEvent" "get_colno"

///|
#cfg(target="wasm-gc")
fn error_event_error_ffi(obj : JsValue) -> JsValue = "webapi_ErrorEvent" "get_error"
