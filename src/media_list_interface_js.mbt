///|
extern "js" fn media_list_media_text_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.mediaText"

///|
fn media_list_media_text_ffi(obj : JsValue) -> CSSOMString {
  media_list_media_text_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn media_list_set_media_text_ffi(
  obj : JsValue,
  media_text : JsValue,
) -> Unit = "(obj, mediaText) => { obj.mediaText = mediaText; }"

///|
extern "js" fn media_list_length_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.length"

///|
fn media_list_length_ffi(obj : JsValue) -> UInt {
  media_list_length_ffi_js(obj).unsafe_cast()
}

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
