// Do not edit. This file is generated.
// MoonBit type: TextTrack
// Specifications: html.idl

/// [TextTrack](https://developer.mozilla.org/en-US/docs/Web/API/TextTrack)
#external
pub type TextTrack

pub impl TJsValue for TextTrack with to_js(self: TextTrack) -> JsValue = "%identity"

pub impl FromJsAny for TextTrack with from_js_any(value : JsAny) -> TextTrack = "%identity"

/// Unchecked downcast — no runtime type check is performed.
/// Prefer `try_into()` for checked downcasts.
#deprecated("Use unsafe_into or try_into instead")
pub fn[T: TTextTrack] TextTrack::into(self : TextTrack) -> T = "%identity"

/// Unchecked downcast — no runtime type check is performed.
/// WARNING: If the underlying JS value is not of type T, this will silently
/// produce a value with incorrect type, leading to undefined behavior.
pub fn[T: TTextTrack] TextTrack::unsafe_into(self : TextTrack) -> T = "%identity"

pub impl HasConstructor for TextTrack with constructor_name() { "TextTrack" }

/// Checked downcast — returns None if the JS value is not an instance of T.
pub fn[T : TTextTrack + HasConstructor] TextTrack::try_into(self : TextTrack) -> T? {
  if js_instanceof(TJsValue::to_js(self), T::constructor_name()) {
    Some(self.unsafe_into())
  } else {
    None
  }
}

pub impl TTextTrack for TextTrack

pub impl TEventTarget for TextTrack

/// [TextTrack](https://developer.mozilla.org/en-US/docs/Web/API/TextTrack) interface.
pub trait TTextTrack: TEventTarget {
  kind(self : Self) -> TextTrackKind = _
  label(self : Self) -> String = _
  language(self : Self) -> String = _
  id(self : Self) -> String = _
  in_band_metadata_track_dispatch_type(self : Self) -> String = _
  mode(self : Self) -> TextTrackMode = _
  set_mode(self : Self, mode : TextTrackMode) -> Unit = _
  cues(self : Self) -> TextTrackCueList = _
  active_cues(self : Self) -> TextTrackCueList = _
  add_cue(self : Self, cue : &TTextTrackCue) -> Unit = _
  remove_cue(self : Self, cue : &TTextTrackCue) -> Unit = _
  oncuechange(self : Self) -> EventHandler = _
  set_oncuechange(self : Self, oncuechange : (Event) -> JsValue) -> Unit = _
}

/// [TextTrack.kind](https://developer.mozilla.org/en-US/docs/Web/API/TextTrack/kind)
impl TTextTrack with kind(self : Self) -> TextTrackKind {
  text_track_kind_ffi(TJsValue::to_js(self))
}

/// [TextTrack.label](https://developer.mozilla.org/en-US/docs/Web/API/TextTrack/label)
impl TTextTrack with label(self : Self) -> String {
  text_track_label_ffi(TJsValue::to_js(self))
}

/// [TextTrack.language](https://developer.mozilla.org/en-US/docs/Web/API/TextTrack/language)
impl TTextTrack with language(self : Self) -> String {
  text_track_language_ffi(TJsValue::to_js(self))
}

/// [TextTrack.id](https://developer.mozilla.org/en-US/docs/Web/API/TextTrack/id)
impl TTextTrack with id(self : Self) -> String {
  text_track_id_ffi(TJsValue::to_js(self))
}

/// [TextTrack.inBandMetadataTrackDispatchType](https://developer.mozilla.org/en-US/docs/Web/API/TextTrack/inBandMetadataTrackDispatchType)
impl TTextTrack with in_band_metadata_track_dispatch_type(self : Self) -> String {
  text_track_in_band_metadata_track_dispatch_type_ffi(TJsValue::to_js(self))
}

/// [TextTrack.mode](https://developer.mozilla.org/en-US/docs/Web/API/TextTrack/mode)
impl TTextTrack with mode(self : Self) -> TextTrackMode {
  text_track_mode_ffi(TJsValue::to_js(self))
}

/// [TextTrack.mode](https://developer.mozilla.org/en-US/docs/Web/API/TextTrack/mode)
impl TTextTrack with set_mode(self : Self, 
mode : TextTrackMode) -> Unit {
  text_track_set_mode_ffi(TJsValue::to_js(self), TJsValue::to_js(mode))
}

/// [TextTrack.cues](https://developer.mozilla.org/en-US/docs/Web/API/TextTrack/cues)
impl TTextTrack with cues(self : Self) -> TextTrackCueList {
  text_track_cues_ffi(TJsValue::to_js(self))
}

/// [TextTrack.activeCues](https://developer.mozilla.org/en-US/docs/Web/API/TextTrack/activeCues)
impl TTextTrack with active_cues(self : Self) -> TextTrackCueList {
  text_track_active_cues_ffi(TJsValue::to_js(self))
}

/// [TextTrack.addCue](https://developer.mozilla.org/en-US/docs/Web/API/TextTrack/addCue)
impl TTextTrack with add_cue(self : Self, 
cue : &TTextTrackCue) -> Unit {
  text_track_add_cue_ffi(TJsValue::to_js(self), TJsValue::to_js(cue))
}

/// [TextTrack.removeCue](https://developer.mozilla.org/en-US/docs/Web/API/TextTrack/removeCue)
impl TTextTrack with remove_cue(self : Self, 
cue : &TTextTrackCue) -> Unit {
  text_track_remove_cue_ffi(TJsValue::to_js(self), TJsValue::to_js(cue))
}

/// [TextTrack.oncuechange](https://developer.mozilla.org/en-US/docs/Web/API/TextTrack/oncuechange)
impl TTextTrack with oncuechange(self : Self) -> EventHandler {
  text_track_oncuechange_ffi(TJsValue::to_js(self))
}

/// [TextTrack.oncuechange](https://developer.mozilla.org/en-US/docs/Web/API/TextTrack/oncuechange)
impl TTextTrack with set_oncuechange(self : Self, 
oncuechange : (Event) -> JsValue) -> Unit {
  text_track_set_oncuechange_ffi(TJsValue::to_js(self), TJsValue::to_js(event_handler_non_null_ffi(oncuechange)))
}

#cfg(target="js")
extern "js" fn text_track_kind_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.kind"

///|
#cfg(target="js")
fn text_track_kind_ffi(obj: JsValue) -> TextTrackKind {
  TextTrackKind::from_unchecked(text_track_kind_ffi_js(obj).unsafe_cast())
}

#cfg(target="js")
extern "js" fn text_track_label_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.label"

///|
#cfg(target="js")
fn text_track_label_ffi(obj: JsValue) -> String {
  text_track_label_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn text_track_language_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.language"

///|
#cfg(target="js")
fn text_track_language_ffi(obj: JsValue) -> String {
  text_track_language_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn text_track_id_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.id"

///|
#cfg(target="js")
fn text_track_id_ffi(obj: JsValue) -> String {
  text_track_id_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn text_track_in_band_metadata_track_dispatch_type_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.inBandMetadataTrackDispatchType"

///|
#cfg(target="js")
fn text_track_in_band_metadata_track_dispatch_type_ffi(obj: JsValue) -> String {
  text_track_in_band_metadata_track_dispatch_type_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn text_track_mode_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.mode"

///|
#cfg(target="js")
fn text_track_mode_ffi(obj: JsValue) -> TextTrackMode {
  TextTrackMode::from_unchecked(text_track_mode_ffi_js(obj).unsafe_cast())
}

#cfg(target="js")
extern "js" fn text_track_set_mode_ffi(obj: JsValue, mode: JsValue) -> Unit = "(obj, mode) => { obj.mode = mode; }"

#cfg(target="js")
extern "js" fn text_track_cues_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.cues"

///|
#cfg(target="js")
fn text_track_cues_ffi(obj: JsValue) -> TextTrackCueList {
  text_track_cues_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn text_track_active_cues_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.activeCues"

///|
#cfg(target="js")
fn text_track_active_cues_ffi(obj: JsValue) -> TextTrackCueList {
  text_track_active_cues_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn text_track_add_cue_ffi(obj: JsValue, cue: JsValue) -> Unit = "(obj, cue) => obj.addCue(cue)"

#cfg(target="js")
extern "js" fn text_track_remove_cue_ffi(obj: JsValue, cue: JsValue) -> Unit = "(obj, cue) => obj.removeCue(cue)"

#cfg(target="js")
extern "js" fn text_track_oncuechange_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.oncuechange"

///|
#cfg(target="js")
fn text_track_oncuechange_ffi(obj: JsValue) -> EventHandler {
  text_track_oncuechange_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn text_track_set_oncuechange_ffi(obj: JsValue, oncuechange: JsValue) -> Unit = "(obj, oncuechange) => { obj.oncuechange = oncuechange; }"

#cfg(target="wasm-gc")
fn text_track_kind_ffi_wasm(obj: JsValue) -> JsValue = "webapi_TextTrack" "get_kind"

///|
#cfg(target="wasm-gc")
fn text_track_kind_ffi(obj: JsValue) -> TextTrackKind {
  TextTrackKind::from_unchecked(jsvalue_to_string(text_track_kind_ffi_wasm(obj)))
}

#cfg(target="wasm-gc")
fn text_track_label_ffi_wasm(obj: JsValue) -> JsValue = "webapi_TextTrack" "get_label"

///|
#cfg(target="wasm-gc")
fn text_track_label_ffi(obj: JsValue) -> String {
  jsvalue_to_string(text_track_label_ffi_wasm(obj))
}

#cfg(target="wasm-gc")
fn text_track_language_ffi_wasm(obj: JsValue) -> JsValue = "webapi_TextTrack" "get_language"

///|
#cfg(target="wasm-gc")
fn text_track_language_ffi(obj: JsValue) -> String {
  jsvalue_to_string(text_track_language_ffi_wasm(obj))
}

#cfg(target="wasm-gc")
fn text_track_id_ffi_wasm(obj: JsValue) -> JsValue = "webapi_TextTrack" "get_id"

///|
#cfg(target="wasm-gc")
fn text_track_id_ffi(obj: JsValue) -> String {
  jsvalue_to_string(text_track_id_ffi_wasm(obj))
}

#cfg(target="wasm-gc")
fn text_track_in_band_metadata_track_dispatch_type_ffi_wasm(obj: JsValue) -> JsValue = "webapi_TextTrack" "get_inBandMetadataTrackDispatchType"

///|
#cfg(target="wasm-gc")
fn text_track_in_band_metadata_track_dispatch_type_ffi(obj: JsValue) -> String {
  jsvalue_to_string(text_track_in_band_metadata_track_dispatch_type_ffi_wasm(obj))
}

#cfg(target="wasm-gc")
fn text_track_mode_ffi_wasm(obj: JsValue) -> JsValue = "webapi_TextTrack" "get_mode"

///|
#cfg(target="wasm-gc")
fn text_track_mode_ffi(obj: JsValue) -> TextTrackMode {
  TextTrackMode::from_unchecked(jsvalue_to_string(text_track_mode_ffi_wasm(obj)))
}

#cfg(target="wasm-gc")
fn text_track_set_mode_ffi(obj: JsValue, mode: JsValue) -> Unit = "webapi_TextTrack" "set_mode"

#cfg(target="wasm-gc")
fn text_track_cues_ffi(obj: JsValue) -> TextTrackCueList = "webapi_TextTrack" "get_cues"

#cfg(target="wasm-gc")
fn text_track_active_cues_ffi(obj: JsValue) -> TextTrackCueList = "webapi_TextTrack" "get_activeCues"

#cfg(target="wasm-gc")
fn text_track_add_cue_ffi(obj: JsValue, cue: JsValue) -> Unit = "webapi_TextTrack" "addCue"

#cfg(target="wasm-gc")
fn text_track_remove_cue_ffi(obj: JsValue, cue: JsValue) -> Unit = "webapi_TextTrack" "removeCue"

#cfg(target="wasm-gc")
fn text_track_oncuechange_ffi_wasm(obj: JsValue) -> JsValue = "webapi_TextTrack" "get_oncuechange"

///|
#cfg(target="wasm-gc")
fn text_track_oncuechange_ffi(obj: JsValue) -> EventHandler {
  text_track_oncuechange_ffi_wasm(obj).unsafe_cast()
}

#cfg(target="wasm-gc")
fn text_track_set_oncuechange_ffi(obj: JsValue, oncuechange: JsValue) -> Unit = "webapi_TextTrack" "set_oncuechange"