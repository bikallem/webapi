// Do not edit. This file is generated.
// MoonBit type: TextTrackList
// Specifications: html.idl

///|
#external
pub type TextTrackList

///|
pub impl TJsValue for TextTrackList with to_js(self : TextTrackList) -> JsValue = "%identity"

///|
pub fn[T : TTextTrackList] TextTrackList::into(self : TextTrackList) -> T = "%identity"

///|
pub impl TTextTrackList for TextTrackList

///|
pub impl TEventTarget for TextTrackList

///|
pub trait TTextTrackList: TEventTarget {
  length(self : Self) -> UInt = _
  get_track_by_id(self : Self, id : String) -> TextTrack = _
  onchange(self : Self) -> EventHandler = _
  set_onchange(self : Self, onchange : EventHandler) -> Unit = _
  onaddtrack(self : Self) -> EventHandler = _
  set_onaddtrack(self : Self, onaddtrack : EventHandler) -> Unit = _
  onremovetrack(self : Self) -> EventHandler = _
  set_onremovetrack(self : Self, onremovetrack : EventHandler) -> Unit = _
}

///|
extern "js" fn text_track_list_length_ffi(obj : JsValue) -> UInt = "(obj) => obj.length"

///|
impl TTextTrackList with length(self : Self) -> UInt {
  text_track_list_length_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn text_track_list_get_track_by_id_ffi(
  obj : JsValue,
  id : JsValue,
) -> TextTrack = "(obj, id) => obj.getTrackById(obj, id)"

///|
impl TTextTrackList with get_track_by_id(self : Self, id : String) -> TextTrack {
  text_track_list_get_track_by_id_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(id),
  )
}

///|
extern "js" fn text_track_list_onchange_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.onchange"

///|
impl TTextTrackList with onchange(self : Self) -> EventHandler {
  text_track_list_onchange_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn text_track_list_set_onchange_ffi(
  obj : JsValue,
  onchange : JsValue,
) -> Unit = "(obj, onchange) => { obj.onchange = onchange; }"

///|
impl TTextTrackList with set_onchange(self : Self, onchange : EventHandler) -> Unit {
  text_track_list_set_onchange_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onchange),
  )
}

///|
extern "js" fn text_track_list_onaddtrack_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.onaddtrack"

///|
impl TTextTrackList with onaddtrack(self : Self) -> EventHandler {
  text_track_list_onaddtrack_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn text_track_list_set_onaddtrack_ffi(
  obj : JsValue,
  onaddtrack : JsValue,
) -> Unit = "(obj, onaddtrack) => { obj.onaddtrack = onaddtrack; }"

///|
impl TTextTrackList with set_onaddtrack(self : Self, onaddtrack : EventHandler) -> Unit {
  text_track_list_set_onaddtrack_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onaddtrack),
  )
}

///|
extern "js" fn text_track_list_onremovetrack_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.onremovetrack"

///|
impl TTextTrackList with onremovetrack(self : Self) -> EventHandler {
  text_track_list_onremovetrack_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn text_track_list_set_onremovetrack_ffi(
  obj : JsValue,
  onremovetrack : JsValue,
) -> Unit = "(obj, onremovetrack) => { obj.onremovetrack = onremovetrack; }"

///|
impl TTextTrackList with set_onremovetrack(
  self : Self,
  onremovetrack : EventHandler,
) -> Unit {
  text_track_list_set_onremovetrack_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onremovetrack),
  )
}
