///|
#external
pub type ProgressEvent

///|
pub impl TJsValue for ProgressEvent with to_js(self : ProgressEvent) -> JsValue = "%identity"

///|
pub fn[T : TProgressEvent] ProgressEvent::into(self : ProgressEvent) -> T = "%identity"

///|
pub impl TProgressEvent for ProgressEvent

///|
pub impl TEvent for ProgressEvent

///|
extern "js" fn progress_event_ffi(
  type_ : JsValue,
  event_init_dict : JsValue,
) -> ProgressEvent = "(type_, event_init_dict) => new ProgressEvent(type_, event_init_dict)"

///|
pub fn ProgressEvent::new(
  type_ : String,
  event_init_dict? : ProgressEventInit = ProgressEventInit::empty(),
) -> ProgressEvent {
  progress_event_ffi(TJsValue::to_js(type_), TJsValue::to_js(event_init_dict))
}

///|
pub trait TProgressEvent: TEvent {}
