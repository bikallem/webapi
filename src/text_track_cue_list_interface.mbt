// Do not edit. This file is generated.
// MoonBit type: TextTrackCueList
// Specifications: html.idl

///|
#external
pub type TextTrackCueList

///|
pub impl TJsValue for TextTrackCueList with to_js(self : TextTrackCueList) -> JsValue = "%identity"

///|
pub fn[T : TTextTrackCueList] TextTrackCueList::into(
  self : TextTrackCueList,
) -> T = "%identity"

///|
pub impl TTextTrackCueList for TextTrackCueList

///|
pub trait TTextTrackCueList: TJsValue {
  length(self : Self) -> UInt = _
  get_cue_by_id(self : Self, id : String) -> TextTrackCue? = _
}

///|
extern "js" fn text_track_cue_list_length_ffi(obj : JsValue) -> UInt = "(obj) => obj.length"

///|
impl TTextTrackCueList with length(self : Self) -> UInt {
  text_track_cue_list_length_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn text_track_cue_list_get_cue_by_id_ffi(
  obj : JsValue,
  id : JsValue,
) -> JsValue = "(obj, id) => obj.getCueById(id)"

///|
impl TTextTrackCueList with get_cue_by_id(self : Self, id : String) -> TextTrackCue? {
  let result = text_track_cue_list_get_cue_by_id_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(id),
  )
  if JsValue::is_null(result) {
    None
  } else {
    Some(result.unsafe_cast())
  }
}
