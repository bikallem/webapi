// Do not edit. This file is generated.
// MoonBit type: VideoTrack
// Specifications: html.idl

///|
/// [VideoTrack](https://developer.mozilla.org/en-US/docs/Web/API/VideoTrack)
#external
pub type VideoTrack

///|
pub impl TJsValue for VideoTrack with to_js(self : VideoTrack) -> JsValue = "%identity"

///|
pub impl FromJsAny for VideoTrack with from_js_any(value : JsAny) -> VideoTrack = "%identity"

///|
pub fn[T : TVideoTrack] VideoTrack::into(self : VideoTrack) -> T = "%identity"

///|
pub impl TVideoTrack for VideoTrack

///|
/// [VideoTrack](https://developer.mozilla.org/en-US/docs/Web/API/VideoTrack) interface.
pub trait TVideoTrack: TJsValue {
  id(self : Self) -> String = _
  kind(self : Self) -> String = _
  label(self : Self) -> String = _
  language(self : Self) -> String = _
  selected(self : Self) -> Bool = _
  set_selected(self : Self, selected : Bool) -> Unit = _
}

///|
/// [VideoTrack.id](https://developer.mozilla.org/en-US/docs/Web/API/VideoTrack/id)
impl TVideoTrack with id(self : Self) -> String {
  video_track_id_ffi(TJsValue::to_js(self))
}

///|
/// [VideoTrack.kind](https://developer.mozilla.org/en-US/docs/Web/API/VideoTrack/kind)
impl TVideoTrack with kind(self : Self) -> String {
  video_track_kind_ffi(TJsValue::to_js(self))
}

///|
/// [VideoTrack.label](https://developer.mozilla.org/en-US/docs/Web/API/VideoTrack/label)
impl TVideoTrack with label(self : Self) -> String {
  video_track_label_ffi(TJsValue::to_js(self))
}

///|
/// [VideoTrack.language](https://developer.mozilla.org/en-US/docs/Web/API/VideoTrack/language)
impl TVideoTrack with language(self : Self) -> String {
  video_track_language_ffi(TJsValue::to_js(self))
}

///|
/// [VideoTrack.selected](https://developer.mozilla.org/en-US/docs/Web/API/VideoTrack/selected)
impl TVideoTrack with selected(self : Self) -> Bool {
  video_track_selected_ffi(TJsValue::to_js(self))
}

///|
/// [VideoTrack.selected](https://developer.mozilla.org/en-US/docs/Web/API/VideoTrack/selected)
impl TVideoTrack with set_selected(self : Self, selected : Bool) -> Unit {
  video_track_set_selected_ffi(TJsValue::to_js(self), TJsValue::to_js(selected))
}

///|
#cfg(target="js")
extern "js" fn video_track_id_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.id"

///|
#cfg(target="js")
fn video_track_id_ffi(obj : JsValue) -> String {
  video_track_id_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn video_track_kind_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.kind"

///|
#cfg(target="js")
fn video_track_kind_ffi(obj : JsValue) -> String {
  video_track_kind_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn video_track_label_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.label"

///|
#cfg(target="js")
fn video_track_label_ffi(obj : JsValue) -> String {
  video_track_label_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn video_track_language_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.language"

///|
#cfg(target="js")
fn video_track_language_ffi(obj : JsValue) -> String {
  video_track_language_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn video_track_selected_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.selected"

///|
#cfg(target="js")
fn video_track_selected_ffi(obj : JsValue) -> Bool {
  video_track_selected_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn video_track_set_selected_ffi(
  obj : JsValue,
  selected : JsValue,
) -> Unit = "(obj, selected) => { obj.selected = selected; }"

///|
#cfg(target="wasm-gc")
fn video_track_id_ffi_wasm(obj : JsValue) -> JsValue = "webapi_VideoTrack" "get_id"

///|
#cfg(target="wasm-gc")
fn video_track_id_ffi(obj : JsValue) -> String {
  jsvalue_to_string(video_track_id_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn video_track_kind_ffi_wasm(obj : JsValue) -> JsValue = "webapi_VideoTrack" "get_kind"

///|
#cfg(target="wasm-gc")
fn video_track_kind_ffi(obj : JsValue) -> String {
  jsvalue_to_string(video_track_kind_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn video_track_label_ffi_wasm(obj : JsValue) -> JsValue = "webapi_VideoTrack" "get_label"

///|
#cfg(target="wasm-gc")
fn video_track_label_ffi(obj : JsValue) -> String {
  jsvalue_to_string(video_track_label_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn video_track_language_ffi_wasm(obj : JsValue) -> JsValue = "webapi_VideoTrack" "get_language"

///|
#cfg(target="wasm-gc")
fn video_track_language_ffi(obj : JsValue) -> String {
  jsvalue_to_string(video_track_language_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn video_track_selected_ffi(obj : JsValue) -> Bool = "webapi_VideoTrack" "get_selected"

///|
#cfg(target="wasm-gc")
fn video_track_set_selected_ffi(obj : JsValue, selected : JsValue) -> Unit = "webapi_VideoTrack" "set_selected"
