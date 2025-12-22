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
pub trait TErrorEvent: TEvent {}
