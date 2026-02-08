// Do not edit. This file is generated.
// MoonBit type: MediaList
// Specifications: cssom.idl

/// [MediaList](https://developer.mozilla.org/en-US/docs/Web/API/MediaList)
#external
pub type MediaList

pub impl TJsValue for MediaList with to_js(self: MediaList) -> JsValue = "%identity"

pub fn[T: TMediaList] MediaList::into(self : MediaList) -> T = "%identity"

pub impl TMediaList for MediaList

/// [MediaList](https://developer.mozilla.org/en-US/docs/Web/API/MediaList) interface.
pub trait TMediaList: TJsValue {
  media_text(self : Self) -> CSSOMString = _
  set_media_text(self : Self, media_text : CSSOMString) -> Unit = _
  length(self : Self) -> UInt = _
  append_medium(self : Self, medium : CSSOMString) -> Unit = _
  delete_medium(self : Self, medium : CSSOMString) -> Unit = _
}

/// [MediaList.mediaText](https://developer.mozilla.org/en-US/docs/Web/API/MediaList/mediaText)
impl TMediaList with media_text(self : Self) -> CSSOMString {
  media_list_media_text_ffi(TJsValue::to_js(self)).unsafe_cast()
}

/// [MediaList.mediaText](https://developer.mozilla.org/en-US/docs/Web/API/MediaList/mediaText)
impl TMediaList with set_media_text(self : Self, 
media_text : CSSOMString) -> Unit {
  media_list_set_media_text_ffi(TJsValue::to_js(self), TJsValue::to_js(media_text))
}

/// [MediaList.length](https://developer.mozilla.org/en-US/docs/Web/API/MediaList/length)
impl TMediaList with length(self : Self) -> UInt {
  media_list_length_ffi(TJsValue::to_js(self)).unsafe_cast()
}

/// [MediaList.appendMedium](https://developer.mozilla.org/en-US/docs/Web/API/MediaList/appendMedium)
impl TMediaList with append_medium(self : Self, 
medium : CSSOMString) -> Unit {
  media_list_append_medium_ffi(TJsValue::to_js(self), TJsValue::to_js(medium))
}

/// [MediaList.deleteMedium](https://developer.mozilla.org/en-US/docs/Web/API/MediaList/deleteMedium)
impl TMediaList with delete_medium(self : Self, 
medium : CSSOMString) -> Unit {
  media_list_delete_medium_ffi(TJsValue::to_js(self), TJsValue::to_js(medium))
}