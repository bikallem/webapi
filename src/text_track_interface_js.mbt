///|
extern "js" fn text_track_kind_ffi(obj : JsValue) -> JsValue = "(obj) => obj.kind"

///|
extern "js" fn text_track_label_ffi(obj : JsValue) -> JsValue = "(obj) => obj.label"

///|
extern "js" fn text_track_language_ffi(obj : JsValue) -> JsValue = "(obj) => obj.language"

///|
extern "js" fn text_track_id_ffi(obj : JsValue) -> JsValue = "(obj) => obj.id"

///|
extern "js" fn text_track_in_band_metadata_track_dispatch_type_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.inBandMetadataTrackDispatchType"

///|
extern "js" fn text_track_mode_ffi(obj : JsValue) -> JsValue = "(obj) => obj.mode"

///|
extern "js" fn text_track_set_mode_ffi(obj : JsValue, mode : JsValue) -> Unit = "(obj, mode) => { obj.mode = mode; }"

///|
extern "js" fn text_track_cues_ffi(obj : JsValue) -> JsValue = "(obj) => obj.cues"

///|
extern "js" fn text_track_active_cues_ffi(obj : JsValue) -> JsValue = "(obj) => obj.activeCues"

///|
extern "js" fn text_track_add_cue_ffi(obj : JsValue, cue : JsValue) -> Unit = "(obj, cue) => obj.addCue(cue)"

///|
extern "js" fn text_track_remove_cue_ffi(obj : JsValue, cue : JsValue) -> Unit = "(obj, cue) => obj.removeCue(cue)"

///|
extern "js" fn text_track_oncuechange_ffi(obj : JsValue) -> JsValue = "(obj) => obj.oncuechange"

///|
extern "js" fn text_track_set_oncuechange_ffi(
  obj : JsValue,
  oncuechange : JsValue,
) -> Unit = "(obj, oncuechange) => { obj.oncuechange = oncuechange; }"
