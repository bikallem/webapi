// Do not edit. This file is generated.
// MoonBit type: TextTrackList
// Specifications: html.idl

///|
/// [TextTrackList](https://developer.mozilla.org/en-US/docs/Web/API/TextTrackList)
#external
pub type TextTrackList

///|
pub impl TJsValue for TextTrackList with to_js(self : TextTrackList) -> JsValue = "%identity"

///|
pub impl FromJsAny for TextTrackList with from_js_any(value : JsAny) -> TextTrackList = "%identity"

///|
pub fn[T : TTextTrackList] TextTrackList::into(self : TextTrackList) -> T = "%identity"

///|
pub impl TTextTrackList for TextTrackList

///|
pub impl TEventTarget for TextTrackList

///|
/// [TextTrackList](https://developer.mozilla.org/en-US/docs/Web/API/TextTrackList) interface.
pub trait TTextTrackList: TEventTarget {
  length(self : Self) -> UInt = _
  get(self : Self, index : UInt) -> TextTrack? = _
  get_track_by_id(self : Self, id : String) -> TextTrack? = _
  onchange(self : Self) -> EventHandler = _
  set_onchange(self : Self, onchange : EventHandler) -> Unit = _
  onaddtrack(self : Self) -> EventHandler = _
  set_onaddtrack(self : Self, onaddtrack : EventHandler) -> Unit = _
  onremovetrack(self : Self) -> EventHandler = _
  set_onremovetrack(self : Self, onremovetrack : EventHandler) -> Unit = _
}

///|
/// [TextTrackList.length](https://developer.mozilla.org/en-US/docs/Web/API/TextTrackList/length)
impl TTextTrackList with length(self : Self) -> UInt {
  text_track_list_length_ffi(TJsValue::to_js(self))
}

///|
/// [TextTrackList.get](https://developer.mozilla.org/en-US/docs/Web/API/TextTrackList/get)
impl TTextTrackList with get(self : Self, index : UInt) -> TextTrack? {
  let result = text_track_list_get_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(index),
  )
  if JsValue::is_null(result) {
    None
  } else {
    Some(result.unsafe_cast())
  }
}

///|
/// [TextTrackList.getTrackById](https://developer.mozilla.org/en-US/docs/Web/API/TextTrackList/getTrackById)
impl TTextTrackList with get_track_by_id(self : Self, id : String) -> TextTrack? {
  let result = text_track_list_get_track_by_id_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(id),
  )
  if JsValue::is_null(result) {
    None
  } else {
    Some(result.unsafe_cast())
  }
}

///|
/// [TextTrackList.onchange](https://developer.mozilla.org/en-US/docs/Web/API/TextTrackList/onchange)
impl TTextTrackList with onchange(self : Self) -> EventHandler {
  text_track_list_onchange_ffi(TJsValue::to_js(self))
}

///|
/// [TextTrackList.onchange](https://developer.mozilla.org/en-US/docs/Web/API/TextTrackList/onchange)
impl TTextTrackList with set_onchange(self : Self, onchange : EventHandler) -> Unit {
  text_track_list_set_onchange_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onchange),
  )
}

///|
/// [TextTrackList.onaddtrack](https://developer.mozilla.org/en-US/docs/Web/API/TextTrackList/onaddtrack)
impl TTextTrackList with onaddtrack(self : Self) -> EventHandler {
  text_track_list_onaddtrack_ffi(TJsValue::to_js(self))
}

///|
/// [TextTrackList.onaddtrack](https://developer.mozilla.org/en-US/docs/Web/API/TextTrackList/onaddtrack)
impl TTextTrackList with set_onaddtrack(self : Self, onaddtrack : EventHandler) -> Unit {
  text_track_list_set_onaddtrack_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onaddtrack),
  )
}

///|
/// [TextTrackList.onremovetrack](https://developer.mozilla.org/en-US/docs/Web/API/TextTrackList/onremovetrack)
impl TTextTrackList with onremovetrack(self : Self) -> EventHandler {
  text_track_list_onremovetrack_ffi(TJsValue::to_js(self))
}

///|
/// [TextTrackList.onremovetrack](https://developer.mozilla.org/en-US/docs/Web/API/TextTrackList/onremovetrack)
impl TTextTrackList with set_onremovetrack(
  self : Self,
  onremovetrack : EventHandler,
) -> Unit {
  text_track_list_set_onremovetrack_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onremovetrack),
  )
}
