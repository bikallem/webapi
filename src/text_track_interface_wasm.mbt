///|
fn text_track_kind_ffi(obj : JsValue) -> JsValue = "webapi_TextTrack" "get_kind"

///|
fn text_track_label_ffi(obj : JsValue) -> JsValue = "webapi_TextTrack" "get_label"

///|
fn text_track_language_ffi(obj : JsValue) -> JsValue = "webapi_TextTrack" "get_language"

///|
fn text_track_id_ffi(obj : JsValue) -> JsValue = "webapi_TextTrack" "get_id"

///|
fn text_track_in_band_metadata_track_dispatch_type_ffi(
  obj : JsValue,
) -> JsValue = "webapi_TextTrack" "get_inBandMetadataTrackDispatchType"

///|
fn text_track_mode_ffi(obj : JsValue) -> JsValue = "webapi_TextTrack" "get_mode"

///|
fn text_track_set_mode_ffi(obj : JsValue, mode : JsValue) -> Unit = "webapi_TextTrack" "set_mode"

///|
fn text_track_cues_ffi(obj : JsValue) -> JsValue = "webapi_TextTrack" "get_cues"

///|
fn text_track_active_cues_ffi(obj : JsValue) -> JsValue = "webapi_TextTrack" "get_activeCues"

///|
fn text_track_add_cue_ffi(obj : JsValue, cue : JsValue) -> Unit = "webapi_TextTrack" "addCue"

///|
fn text_track_remove_cue_ffi(obj : JsValue, cue : JsValue) -> Unit = "webapi_TextTrack" "removeCue"

///|
fn text_track_oncuechange_ffi(obj : JsValue) -> JsValue = "webapi_TextTrack" "get_oncuechange"

///|
fn text_track_set_oncuechange_ffi(obj : JsValue, oncuechange : JsValue) -> Unit = "webapi_TextTrack" "set_oncuechange"
