///|
#external
pub type TrackEvent

///|
pub impl TJsValue for TrackEvent with to_js(self : TrackEvent) -> JsValue = "%identity"

///|
pub fn[T : TTrackEvent] TrackEvent::into(self : TrackEvent) -> T = "%identity"

///|
pub impl TTrackEvent for TrackEvent

///|
pub impl TEvent for TrackEvent

///|
extern "js" fn track_event_ffi(
  type_ : JsValue,
  event_init_dict : JsValue,
) -> TrackEvent = "(type_, event_init_dict) => new TrackEvent(type_, event_init_dict)"

///|
pub fn TrackEvent::new(
  type_ : String,
  event_init_dict? : TrackEventInit = TrackEventInit::empty(),
) -> TrackEvent {
  track_event_ffi(TJsValue::to_js(type_), TJsValue::to_js(event_init_dict))
}

///|
pub trait TTrackEvent: TEvent {}
