// Do not edit. This file is generated.
// MoonBit type: ProgressEvent
// Specifications: xhr.idl

///|
/// [ProgressEvent](https://developer.mozilla.org/en-US/docs/Web/API/ProgressEvent)
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
/// [ProgressEvent](https://developer.mozilla.org/en-US/docs/Web/API/ProgressEvent) interface.
pub trait TProgressEvent: TEvent {
  length_computable(self : Self) -> Bool = _
  loaded(self : Self) -> Double = _
  total(self : Self) -> Double = _
}

///|
/// [ProgressEvent.lengthComputable](https://developer.mozilla.org/en-US/docs/Web/API/ProgressEvent/lengthComputable)
impl TProgressEvent with length_computable(self : Self) -> Bool {
  progress_event_length_computable_ffi(TJsValue::to_js(self)).unsafe_cast()
}

///|
/// [ProgressEvent.loaded](https://developer.mozilla.org/en-US/docs/Web/API/ProgressEvent/loaded)
impl TProgressEvent with loaded(self : Self) -> Double {
  progress_event_loaded_ffi(TJsValue::to_js(self)).unsafe_cast()
}

///|
/// [ProgressEvent.total](https://developer.mozilla.org/en-US/docs/Web/API/ProgressEvent/total)
impl TProgressEvent with total(self : Self) -> Double {
  progress_event_total_ffi(TJsValue::to_js(self)).unsafe_cast()
}
