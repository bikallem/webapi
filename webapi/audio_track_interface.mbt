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
pub impl FromJsAny for AudioTrack with from_js_any(value : JsAny) -> AudioTrack = "%identity"

///|
/// Unchecked downcast — no runtime type check is performed.
/// Prefer `try_into()` for checked downcasts.
#deprecated("Use unsafe_into or try_into instead")
pub fn[T : TAudioTrack] AudioTrack::into(self : AudioTrack) -> T = "%identity"

///|
/// Unchecked downcast — no runtime type check is performed.
/// WARNING: If the underlying JS value is not of type T, this will silently
/// produce a value with incorrect type, leading to undefined behavior.
pub fn[T : TAudioTrack] AudioTrack::unsafe_into(self : AudioTrack) -> T = "%identity"

///|
pub impl HasConstructor for AudioTrack with constructor_name() {
  "AudioTrack"
}

///|
/// Checked downcast — returns None if the JS value is not an instance of T.
pub fn[T : TAudioTrack + HasConstructor] AudioTrack::try_into(
  self : AudioTrack,
) -> T? {
  if js_instanceof(TJsValue::to_js(self), T::constructor_name()) {
    Some(self.unsafe_into())
  } else {
    None
  }
}

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

///|
#cfg(target="js")
extern "js" fn audio_track_id_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.id"

///|
#cfg(target="js")
fn audio_track_id_ffi(obj : JsValue) -> String {
  audio_track_id_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn audio_track_kind_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.kind"

///|
#cfg(target="js")
fn audio_track_kind_ffi(obj : JsValue) -> String {
  audio_track_kind_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn audio_track_label_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.label"

///|
#cfg(target="js")
fn audio_track_label_ffi(obj : JsValue) -> String {
  audio_track_label_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn audio_track_language_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.language"

///|
#cfg(target="js")
fn audio_track_language_ffi(obj : JsValue) -> String {
  audio_track_language_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn audio_track_enabled_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.enabled"

///|
#cfg(target="js")
fn audio_track_enabled_ffi(obj : JsValue) -> Bool {
  audio_track_enabled_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn audio_track_set_enabled_ffi(
  obj : JsValue,
  enabled : JsValue,
) -> Unit = "(obj, enabled) => { obj.enabled = enabled; }"

///|
#cfg(target="wasm-gc")
fn audio_track_id_ffi_wasm(obj : JsValue) -> JsValue = "webapi_AudioTrack" "get_id"

///|
#cfg(target="wasm-gc")
fn audio_track_id_ffi(obj : JsValue) -> String {
  jsvalue_to_string(audio_track_id_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn audio_track_kind_ffi_wasm(obj : JsValue) -> JsValue = "webapi_AudioTrack" "get_kind"

///|
#cfg(target="wasm-gc")
fn audio_track_kind_ffi(obj : JsValue) -> String {
  jsvalue_to_string(audio_track_kind_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn audio_track_label_ffi_wasm(obj : JsValue) -> JsValue = "webapi_AudioTrack" "get_label"

///|
#cfg(target="wasm-gc")
fn audio_track_label_ffi(obj : JsValue) -> String {
  jsvalue_to_string(audio_track_label_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn audio_track_language_ffi_wasm(obj : JsValue) -> JsValue = "webapi_AudioTrack" "get_language"

///|
#cfg(target="wasm-gc")
fn audio_track_language_ffi(obj : JsValue) -> String {
  jsvalue_to_string(audio_track_language_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn audio_track_enabled_ffi(obj : JsValue) -> Bool = "webapi_AudioTrack" "get_enabled"

///|
#cfg(target="wasm-gc")
fn audio_track_set_enabled_ffi(obj : JsValue, enabled : JsValue) -> Unit = "webapi_AudioTrack" "set_enabled"
