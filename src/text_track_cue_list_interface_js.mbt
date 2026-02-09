///|
extern "js" fn text_track_cue_list_length_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.length"

///|
fn text_track_cue_list_length_ffi(obj : JsValue) -> UInt {
  text_track_cue_list_length_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn text_track_cue_list_get_ffi(
  obj : JsValue,
  index : JsValue,
) -> JsValue = "(obj, index) => obj[index]"

///|
extern "js" fn text_track_cue_list_get_cue_by_id_ffi(
  obj : JsValue,
  id : JsValue,
) -> JsValue = "(obj, id) => obj.getCueById(id)"
