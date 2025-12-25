// Do not edit. This file is generated.
// MoonBit type: ProgressEvent
// Specifications: xhr.idl

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
extern "js" fn progress_event_new_ffi(
  type_ : JsValue,
  event_init_dict : JsValue,
) -> ProgressEvent = "(type_, event_init_dict) => new ProgressEvent(type_, event_init_dict)"

///|
pub fn ProgressEvent::new(
  type_ : String,
  event_init_dict? : ProgressEventInit = ProgressEventInit::empty(),
) -> ProgressEvent {
  progress_event_new_ffi(
    TJsValue::to_js(type_),
    TJsValue::to_js(event_init_dict),
  )
}

///|
pub trait TProgressEvent: TEvent {
  length_computable(self : Self) -> Bool = _
  loaded(self : Self) -> Double = _
  total(self : Self) -> Double = _
}

///|
extern "js" fn progress_event_length_computable_ffi(obj : JsValue) -> Bool = "(obj) => obj.lengthComputable"

///|
impl TProgressEvent with length_computable(self : Self) -> Bool {
  progress_event_length_computable_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn progress_event_loaded_ffi(obj : JsValue) -> Double = "(obj) => obj.loaded"

///|
impl TProgressEvent with loaded(self : Self) -> Double {
  progress_event_loaded_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn progress_event_total_ffi(obj : JsValue) -> Double = "(obj) => obj.total"

///|
impl TProgressEvent with total(self : Self) -> Double {
  progress_event_total_ffi(TJsValue::to_js(self))
}
