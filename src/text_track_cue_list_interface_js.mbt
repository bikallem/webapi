///|
extern "js" fn text_track_cue_list_length_ffi(obj : JsValue) -> JsValue = "(obj) => obj.length"

///|
extern "js" fn text_track_cue_list_get_cue_by_id_ffi(
  obj : JsValue,
  id : JsValue,
) -> JsValue = "(obj, id) => obj.getCueById(id)"
