// Do not edit. This file is generated.
// MoonBit type: TrackEvent
// Specifications: html.idl

/// [TrackEvent](https://developer.mozilla.org/en-US/docs/Web/API/TrackEvent)
#external
pub type TrackEvent

pub impl TJsValue for TrackEvent with to_js(self: TrackEvent) -> JsValue = "%identity"

pub impl FromJsAny for TrackEvent with from_js_any(value : JsAny) -> TrackEvent = "%identity"

/// Unchecked downcast — no runtime type check is performed.
/// Prefer `try_into()` for checked downcasts.
#deprecated("Use unsafe_into or try_into instead")
pub fn[T: TTrackEvent] TrackEvent::into(self : TrackEvent) -> T = "%identity"

/// Unchecked downcast — no runtime type check is performed.
/// WARNING: If the underlying JS value is not of type T, this will silently
/// produce a value with incorrect type, leading to undefined behavior.
pub fn[T: TTrackEvent] TrackEvent::unsafe_into(self : TrackEvent) -> T = "%identity"

pub impl HasConstructor for TrackEvent with constructor_name() { "TrackEvent" }

/// Checked downcast — returns None if the JS value is not an instance of T.
pub fn[T : TTrackEvent + HasConstructor] TrackEvent::try_into(self : TrackEvent) -> T? {
  if js_instanceof(TJsValue::to_js(self), T::constructor_name()) {
    Some(self.unsafe_into())
  } else {
    None
  }
}

pub impl TTrackEvent for TrackEvent

pub impl TEvent for TrackEvent

pub fn TrackEvent::new(type_ : String, 
event_init_dict? : TrackEventInit) -> TrackEvent {
  track_event_new_ffi(TJsValue::to_js(type_), opt_to_js(event_init_dict))
}

pub(open) trait TTrackEventTrack : TJsValue {}

pub impl TTrackEventTrack for VideoTrack

pub impl TTrackEventTrack for AudioTrack

pub impl TTrackEventTrack for TextTrack

#external
pub type TrackEventTrack

pub impl TJsValue for TrackEventTrack with to_js(self: TrackEventTrack) -> JsValue = "%identity"

pub impl FromJsAny for TrackEventTrack with from_js_any(value : JsAny) -> TrackEventTrack = "%identity"

#deprecated("Use unsafe_into or try_into instead")
pub fn[T : TTrackEventTrack + FromJsAny] TrackEventTrack::into(self : TrackEventTrack) -> T {
  FromJsAny::from_js_any(jsvalue_to_jsany(TJsValue::to_js(self)))
}

pub fn[T : TTrackEventTrack + FromJsAny] TrackEventTrack::unsafe_into(self : TrackEventTrack) -> T {
  FromJsAny::from_js_any(jsvalue_to_jsany(TJsValue::to_js(self)))
}

pub fn[T : TTrackEventTrack] TrackEventTrack::from(value : T) -> TrackEventTrack = "%identity"

pub impl TTrackEventTrack for TrackEventTrack

/// [TrackEvent](https://developer.mozilla.org/en-US/docs/Web/API/TrackEvent) interface.
pub trait TTrackEvent: TEvent {
  track(self : Self) -> TrackEventTrack = _
}

/// [TrackEvent.track](https://developer.mozilla.org/en-US/docs/Web/API/TrackEvent/track)
impl TTrackEvent with track(self : Self) -> TrackEventTrack {
  track_event_track_ffi(TJsValue::to_js(self))
}

#cfg(target="js")
extern "js" fn track_event_new_ffi(type_: JsValue, event_init_dict: JsValue) -> TrackEvent = "(type_, event_init_dict) => new TrackEvent(type_, event_init_dict)"

#cfg(target="js")
extern "js" fn track_event_track_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.track"

///|
#cfg(target="js")
fn track_event_track_ffi(obj: JsValue) -> TrackEventTrack {
  track_event_track_ffi_js(obj).unsafe_cast()
}

#cfg(target="wasm-gc")
fn track_event_new_ffi(type_: JsValue, event_init_dict: JsValue) -> TrackEvent = "webapi_TrackEvent" "new"

#cfg(target="wasm-gc")
fn track_event_track_ffi_wasm(obj: JsValue) -> JsValue = "webapi_TrackEvent" "get_track"

///|
#cfg(target="wasm-gc")
fn track_event_track_ffi(obj: JsValue) -> TrackEventTrack {
  track_event_track_ffi_wasm(obj).unsafe_cast()
}