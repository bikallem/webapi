// Do not edit. This file is generated.
// MoonBit type: MediaList
// Specifications: cssom.idl

///|
#external
pub type MediaList

///|
pub impl TJsValue for MediaList with to_js(self : MediaList) -> JsValue = "%identity"

///|
pub fn[T : TMediaList] MediaList::into(self : MediaList) -> T = "%identity"

///|
pub impl TMediaList for MediaList

///|
pub trait TMediaList: TJsValue {
  media_text(self : Self) -> String = _
  set_media_text(self : Self, media_text : String) -> Unit = _
  length(self : Self) -> UInt = _
  append_medium(self : Self, medium : String) -> Unit = _
  delete_medium(self : Self, medium : String) -> Unit = _
}

///|
extern "js" fn media_list_media_text_ffi(obj : JsValue) -> String = "(obj) => obj.mediaText"

///|
impl TMediaList with media_text(self : Self) -> String {
  media_list_media_text_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn media_list_set_media_text_ffi(
  obj : JsValue,
  media_text : JsValue,
) -> Unit = "(obj, mediaText) => { obj.mediaText = mediaText; }"

///|
impl TMediaList with set_media_text(self : Self, media_text : String) -> Unit {
  media_list_set_media_text_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(media_text),
  )
}

///|
extern "js" fn media_list_length_ffi(obj : JsValue) -> UInt = "(obj) => obj.length"

///|
impl TMediaList with length(self : Self) -> UInt {
  media_list_length_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn media_list_append_medium_ffi(
  obj : JsValue,
  medium : JsValue,
) -> Unit = "(obj, medium) => obj.appendMedium(obj, medium)"

///|
impl TMediaList with append_medium(self : Self, medium : String) -> Unit {
  media_list_append_medium_ffi(TJsValue::to_js(self), TJsValue::to_js(medium))
}

///|
extern "js" fn media_list_delete_medium_ffi(
  obj : JsValue,
  medium : JsValue,
) -> Unit = "(obj, medium) => obj.deleteMedium(obj, medium)"

///|
impl TMediaList with delete_medium(self : Self, medium : String) -> Unit {
  media_list_delete_medium_ffi(TJsValue::to_js(self), TJsValue::to_js(medium))
}
