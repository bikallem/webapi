// Do not edit. This file is generated.
// MoonBit type: TrackEventInit
// Specifications: dom.idl, html.idl

/// [TrackEventInit](https://developer.mozilla.org/en-US/docs/Web/API/TrackEventInit)
#external
pub type TrackEventInit

pub impl TJsValue for TrackEventInit with to_js(self: TrackEventInit) -> JsValue = "%identity"

pub impl FromJsAny for TrackEventInit with from_js_any(value : JsAny) -> TrackEventInit = "%identity"

pub(open) trait TTrackEventInitNewTrack : TJsValue {}

pub impl TTrackEventInitNewTrack for VideoTrack

pub impl TTrackEventInitNewTrack for AudioTrack

pub impl TTrackEventInitNewTrack for TextTrack

pub fn TrackEventInit::new(bubbles? : Bool, 
cancelable? : Bool, 
composed? : Bool, 
track? : &TTrackEventInitNewTrack) -> TrackEventInit {
  track_event_init_ffi(opt_to_js(bubbles), opt_to_js(cancelable), opt_to_js(composed), match track {
Some(v) => v.to_js()
None => JsValue::undefined()
})
}

pub fn TrackEventInit::empty() -> TrackEventInit { track_event_init_empty_ffi() }

pub(open) trait TTrackEventInitGetTrack : TJsValue {}

pub impl TTrackEventInitGetTrack for VideoTrack

pub impl TTrackEventInitGetTrack for AudioTrack

pub impl TTrackEventInitGetTrack for TextTrack

#external
pub type TrackEventInitGetTrack

pub impl TJsValue for TrackEventInitGetTrack with to_js(self: TrackEventInitGetTrack) -> JsValue = "%identity"

pub impl FromJsAny for TrackEventInitGetTrack with from_js_any(value : JsAny) -> TrackEventInitGetTrack = "%identity"

#deprecated("Use unsafe_into or try_into instead")
pub fn[T : TTrackEventInitGetTrack + FromJsAny] TrackEventInitGetTrack::into(self : TrackEventInitGetTrack) -> T {
  FromJsAny::from_js_any(jsvalue_to_jsany(TJsValue::to_js(self)))
}

pub fn[T : TTrackEventInitGetTrack + FromJsAny] TrackEventInitGetTrack::unsafe_into(self : TrackEventInitGetTrack) -> T {
  FromJsAny::from_js_any(jsvalue_to_jsany(TJsValue::to_js(self)))
}

pub fn[T : TTrackEventInitGetTrack] TrackEventInitGetTrack::from(value : T) -> TrackEventInitGetTrack = "%identity"

pub impl TTrackEventInitGetTrack for TrackEventInitGetTrack

pub fn TrackEventInit::bubbles(self : TrackEventInit) -> Bool? {
  track_event_init_get_bubbles_ffi(TJsValue::to_js(self)).to_option_prim()
}

pub fn TrackEventInit::cancelable(self : TrackEventInit) -> Bool? {
  track_event_init_get_cancelable_ffi(TJsValue::to_js(self)).to_option_prim()
}

pub fn TrackEventInit::composed(self : TrackEventInit) -> Bool? {
  track_event_init_get_composed_ffi(TJsValue::to_js(self)).to_option_prim()
}

pub fn TrackEventInit::track(self : TrackEventInit) -> TrackEventInitGetTrack? {
  track_event_init_get_track_ffi(TJsValue::to_js(self)).to_option()
}

#cfg(target="js")
extern "js" fn track_event_init_ffi(bubbles: JsValue, cancelable: JsValue, composed: JsValue, track: JsValue) -> TrackEventInit = 
#|(bubbles, cancelable, composed, track) => {
#|  const obj = {};
#|  if (bubbles !== undefined) obj.bubbles = bubbles;
#|  if (cancelable !== undefined) obj.cancelable = cancelable;
#|  if (composed !== undefined) obj.composed = composed;
#|  if (track !== undefined) obj.track = track;
#|  return obj;
#|}

#cfg(target="js")
extern "js" fn track_event_init_empty_ffi() -> TrackEventInit = "() => {}"

#cfg(target="js")
extern "js" fn track_event_init_get_bubbles_ffi(obj: JsValue) -> JsValue = "(obj) => obj.bubbles"

#cfg(target="js")
extern "js" fn track_event_init_get_cancelable_ffi(obj: JsValue) -> JsValue = "(obj) => obj.cancelable"

#cfg(target="js")
extern "js" fn track_event_init_get_composed_ffi(obj: JsValue) -> JsValue = "(obj) => obj.composed"

#cfg(target="js")
extern "js" fn track_event_init_get_track_ffi(obj: JsValue) -> JsValue = "(obj) => obj.track"

#cfg(target="wasm-gc")
fn track_event_init_ffi(bubbles: JsValue, cancelable: JsValue, composed: JsValue, track: JsValue) -> TrackEventInit = "webapi_TrackEventInit" "new"

#cfg(target="wasm-gc")
fn track_event_init_empty_ffi() -> TrackEventInit = "webapi_Dictionary" "empty"

#cfg(target="wasm-gc")
fn track_event_init_get_bubbles_ffi(obj: JsValue) -> JsValue = "webapi_TrackEventInit" "get_bubbles"

#cfg(target="wasm-gc")
fn track_event_init_get_cancelable_ffi(obj: JsValue) -> JsValue = "webapi_TrackEventInit" "get_cancelable"

#cfg(target="wasm-gc")
fn track_event_init_get_composed_ffi(obj: JsValue) -> JsValue = "webapi_TrackEventInit" "get_composed"

#cfg(target="wasm-gc")
fn track_event_init_get_track_ffi(obj: JsValue) -> JsValue = "webapi_TrackEventInit" "get_track"