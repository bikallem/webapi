///|
extern "js" fn text_track_kind_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.kind"

///|
fn text_track_kind_ffi(obj : JsValue) -> TextTrackKind {
  text_track_kind_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn text_track_label_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.label"

///|
fn text_track_label_ffi(obj : JsValue) -> String {
  text_track_label_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn text_track_language_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.language"

///|
fn text_track_language_ffi(obj : JsValue) -> String {
  text_track_language_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn text_track_id_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.id"

///|
fn text_track_id_ffi(obj : JsValue) -> String {
  text_track_id_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn text_track_in_band_metadata_track_dispatch_type_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.inBandMetadataTrackDispatchType"

///|
fn text_track_in_band_metadata_track_dispatch_type_ffi(obj : JsValue) -> String {
  text_track_in_band_metadata_track_dispatch_type_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn text_track_mode_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.mode"

///|
fn text_track_mode_ffi(obj : JsValue) -> TextTrackMode {
  text_track_mode_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn text_track_set_mode_ffi(obj : JsValue, mode : JsValue) -> Unit = "(obj, mode) => { obj.mode = mode; }"

///|
extern "js" fn text_track_cues_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.cues"

///|
fn text_track_cues_ffi(obj : JsValue) -> TextTrackCueList {
  text_track_cues_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn text_track_active_cues_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.activeCues"

///|
fn text_track_active_cues_ffi(obj : JsValue) -> TextTrackCueList {
  text_track_active_cues_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn text_track_add_cue_ffi(obj : JsValue, cue : JsValue) -> Unit = "(obj, cue) => obj.addCue(cue)"

///|
extern "js" fn text_track_remove_cue_ffi(obj : JsValue, cue : JsValue) -> Unit = "(obj, cue) => obj.removeCue(cue)"

///|
extern "js" fn text_track_oncuechange_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.oncuechange"

///|
fn text_track_oncuechange_ffi(obj : JsValue) -> EventHandlerNonNull {
  text_track_oncuechange_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn text_track_set_oncuechange_ffi(
  obj : JsValue,
  oncuechange : JsValue,
) -> Unit = "(obj, oncuechange) => { obj.oncuechange = oncuechange; }"
