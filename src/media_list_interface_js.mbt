///|
extern "js" fn media_list_media_text_ffi(obj : JsValue) -> JsValue = "(obj) => obj.mediaText"

///|
extern "js" fn media_list_set_media_text_ffi(
  obj : JsValue,
  media_text : JsValue,
) -> Unit = "(obj, mediaText) => { obj.mediaText = mediaText; }"

///|
extern "js" fn media_list_length_ffi(obj : JsValue) -> JsValue = "(obj) => obj.length"

///|
extern "js" fn media_list_append_medium_ffi(
  obj : JsValue,
  medium : JsValue,
) -> Unit = "(obj, medium) => obj.appendMedium(medium)"

///|
extern "js" fn media_list_delete_medium_ffi(
  obj : JsValue,
  medium : JsValue,
) -> Unit = "(obj, medium) => obj.deleteMedium(medium)"
