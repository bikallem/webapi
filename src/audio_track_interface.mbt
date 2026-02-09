// Do not edit. This file is generated.
// MoonBit type: AudioTrack
// Specifications: html.idl

///|
/// [AudioTrack](https://developer.mozilla.org/en-US/docs/Web/API/AudioTrack)
#external
pub type AudioTrack

///|
pub impl TJsValue for AudioTrack with to_js(self : AudioTrack) -> JsValue = "%identity"

///|
pub fn[T : TAudioTrack] AudioTrack::into(self : AudioTrack) -> T = "%identity"

///|
pub impl TAudioTrack for AudioTrack

///|
/// [AudioTrack](https://developer.mozilla.org/en-US/docs/Web/API/AudioTrack) interface.
pub trait TAudioTrack: TJsValue {
  id(self : Self) -> String = _
  kind(self : Self) -> String = _
  label(self : Self) -> String = _
  language(self : Self) -> String = _
  enabled(self : Self) -> Bool = _
  set_enabled(self : Self, enabled : Bool) -> Unit = _
}

///|
/// [AudioTrack.id](https://developer.mozilla.org/en-US/docs/Web/API/AudioTrack/id)
impl TAudioTrack with id(self : Self) -> String {
  audio_track_id_ffi(TJsValue::to_js(self))
}

///|
/// [AudioTrack.kind](https://developer.mozilla.org/en-US/docs/Web/API/AudioTrack/kind)
impl TAudioTrack with kind(self : Self) -> String {
  audio_track_kind_ffi(TJsValue::to_js(self))
}

///|
/// [AudioTrack.label](https://developer.mozilla.org/en-US/docs/Web/API/AudioTrack/label)
impl TAudioTrack with label(self : Self) -> String {
  audio_track_label_ffi(TJsValue::to_js(self))
}

///|
/// [AudioTrack.language](https://developer.mozilla.org/en-US/docs/Web/API/AudioTrack/language)
impl TAudioTrack with language(self : Self) -> String {
  audio_track_language_ffi(TJsValue::to_js(self))
}

///|
/// [AudioTrack.enabled](https://developer.mozilla.org/en-US/docs/Web/API/AudioTrack/enabled)
impl TAudioTrack with enabled(self : Self) -> Bool {
  audio_track_enabled_ffi(TJsValue::to_js(self))
}

///|
/// [AudioTrack.enabled](https://developer.mozilla.org/en-US/docs/Web/API/AudioTrack/enabled)
impl TAudioTrack with set_enabled(self : Self, enabled : Bool) -> Unit {
  audio_track_set_enabled_ffi(TJsValue::to_js(self), TJsValue::to_js(enabled))
}
