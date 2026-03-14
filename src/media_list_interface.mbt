// Do not edit. This file is generated.
// MoonBit type: MediaList
// Specifications: cssom.idl

///|
/// [MediaList](https://developer.mozilla.org/en-US/docs/Web/API/MediaList)
#external
pub type MediaList

///|
pub impl TJsValue for MediaList with to_js(self : MediaList) -> JsValue = "%identity"

///|
pub impl FromJsAny for MediaList with from_js_any(value : JsAny) -> MediaList = "%identity"

///|
pub fn[T : TMediaList] MediaList::into(self : MediaList) -> T = "%identity"

///|
pub impl TMediaList for MediaList

///|
/// [MediaList](https://developer.mozilla.org/en-US/docs/Web/API/MediaList) interface.
pub trait TMediaList: TJsValue {
  media_text(self : Self) -> CSSOMString = _
  set_media_text(self : Self, media_text : CSSOMString) -> Unit = _
  length(self : Self) -> UInt = _
  item(self : Self, index : UInt) -> CSSOMString? = _
  append_medium(self : Self, medium : CSSOMString) -> Unit = _
  delete_medium(self : Self, medium : CSSOMString) -> Unit = _
}

///|
/// [MediaList.mediaText](https://developer.mozilla.org/en-US/docs/Web/API/MediaList/mediaText)
impl TMediaList with media_text(self : Self) -> CSSOMString {
  media_list_media_text_ffi(TJsValue::to_js(self))
}

///|
/// [MediaList.mediaText](https://developer.mozilla.org/en-US/docs/Web/API/MediaList/mediaText)
impl TMediaList with set_media_text(self : Self, media_text : CSSOMString) -> Unit {
  media_list_set_media_text_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(media_text),
  )
}

///|
/// [MediaList.length](https://developer.mozilla.org/en-US/docs/Web/API/MediaList/length)
impl TMediaList with length(self : Self) -> UInt {
  media_list_length_ffi(TJsValue::to_js(self))
}

///|
/// [MediaList.item](https://developer.mozilla.org/en-US/docs/Web/API/MediaList/item)
impl TMediaList with item(self : Self, index : UInt) -> CSSOMString? {
  media_list_item_ffi(TJsValue::to_js(self), TJsValue::to_js(index)).to_option()
}

///|
/// [MediaList.appendMedium](https://developer.mozilla.org/en-US/docs/Web/API/MediaList/appendMedium)
impl TMediaList with append_medium(self : Self, medium : CSSOMString) -> Unit {
  media_list_append_medium_ffi(TJsValue::to_js(self), TJsValue::to_js(medium))
}

///|
/// [MediaList.deleteMedium](https://developer.mozilla.org/en-US/docs/Web/API/MediaList/deleteMedium)
impl TMediaList with delete_medium(self : Self, medium : CSSOMString) -> Unit {
  media_list_delete_medium_ffi(TJsValue::to_js(self), TJsValue::to_js(medium))
}

///|
#cfg(target="js")
extern "js" fn media_list_media_text_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.mediaText"

///|
#cfg(target="js")
fn media_list_media_text_ffi(obj : JsValue) -> CSSOMString {
  media_list_media_text_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn media_list_set_media_text_ffi(
  obj : JsValue,
  media_text : JsValue,
) -> Unit = "(obj, mediaText) => { obj.mediaText = mediaText; }"

///|
#cfg(target="js")
extern "js" fn media_list_length_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.length"

///|
#cfg(target="js")
fn media_list_length_ffi(obj : JsValue) -> UInt {
  media_list_length_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn media_list_item_ffi(obj : JsValue, index : JsValue) -> JsValue = "(obj, index) => obj.item(index)"

///|
#cfg(target="js")
extern "js" fn media_list_append_medium_ffi(
  obj : JsValue,
  medium : JsValue,
) -> Unit = "(obj, medium) => obj.appendMedium(medium)"

///|
#cfg(target="js")
extern "js" fn media_list_delete_medium_ffi(
  obj : JsValue,
  medium : JsValue,
) -> Unit = "(obj, medium) => obj.deleteMedium(medium)"

///|
#cfg(target="wasm-gc")
fn media_list_media_text_ffi_wasm(obj : JsValue) -> JsValue = "webapi_MediaList" "get_mediaText"

///|
#cfg(target="wasm-gc")
fn media_list_media_text_ffi(obj : JsValue) -> CSSOMString {
  media_list_media_text_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn media_list_set_media_text_ffi(obj : JsValue, media_text : JsValue) -> Unit = "webapi_MediaList" "set_mediaText"

///|
#cfg(target="wasm-gc")
fn media_list_length_ffi(obj : JsValue) -> UInt = "webapi_MediaList" "get_length"

///|
#cfg(target="wasm-gc")
fn media_list_item_ffi(obj : JsValue, index : JsValue) -> JsValue = "webapi_MediaList" "item"

///|
#cfg(target="wasm-gc")
fn media_list_append_medium_ffi(obj : JsValue, medium : JsValue) -> Unit = "webapi_MediaList" "appendMedium"

///|
#cfg(target="wasm-gc")
fn media_list_delete_medium_ffi(obj : JsValue, medium : JsValue) -> Unit = "webapi_MediaList" "deleteMedium"
