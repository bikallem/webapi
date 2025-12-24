///|
#external
pub type AudioTrack

///|
pub impl TJsValue for AudioTrack with to_js(self : AudioTrack) -> JsValue = "%identity"

///|
pub fn[T : TAudioTrack] AudioTrack::into(self : AudioTrack) -> T = "%identity"

///|
pub impl TAudioTrack for AudioTrack

///|
pub trait TAudioTrack: TJsValue {
  id(self : Self) -> String = _
  kind(self : Self) -> String = _
  label(self : Self) -> String = _
  language(self : Self) -> String = _
  enabled(self : Self) -> Bool = _
  set_enabled(self : Self, enabled : Bool) -> Unit = _
}

///|
extern "js" fn audio_track_id_ffi(obj : JsValue) -> String = "(obj) => obj.id"

///|
impl TAudioTrack with id(self : Self) -> String {
  audio_track_id_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn audio_track_kind_ffi(obj : JsValue) -> String = "(obj) => obj.kind"

///|
impl TAudioTrack with kind(self : Self) -> String {
  audio_track_kind_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn audio_track_label_ffi(obj : JsValue) -> String = "(obj) => obj.label"

///|
impl TAudioTrack with label(self : Self) -> String {
  audio_track_label_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn audio_track_language_ffi(obj : JsValue) -> String = "(obj) => obj.language"

///|
impl TAudioTrack with language(self : Self) -> String {
  audio_track_language_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn audio_track_enabled_ffi(obj : JsValue) -> Bool = "(obj) => obj.enabled"

///|
impl TAudioTrack with enabled(self : Self) -> Bool {
  audio_track_enabled_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn audio_track_set_enabled_ffi(
  obj : JsValue,
  enabled : JsValue,
) -> Unit = "(obj, enabled) => { obj.enabled = enabled; }"

///|
impl TAudioTrack with set_enabled(self : Self, enabled : Bool) -> Unit {
  audio_track_set_enabled_ffi(TJsValue::to_js(self), TJsValue::to_js(enabled))
}
