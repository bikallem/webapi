// Do not edit. This file is generated.
// MoonBit type: TextTrackCueList
// Specifications: html.idl

///|
/// [TextTrackCueList](https://developer.mozilla.org/en-US/docs/Web/API/TextTrackCueList)
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
/// [TextTrackCueList](https://developer.mozilla.org/en-US/docs/Web/API/TextTrackCueList) interface.
pub trait TTextTrackCueList: TJsValue {
  length(self : Self) -> UInt = _
  get_cue_by_id(self : Self, id : String) -> TextTrackCue? = _
}

///|
/// [TextTrackCueList.length](https://developer.mozilla.org/en-US/docs/Web/API/TextTrackCueList/length)
impl TTextTrackCueList with length(self : Self) -> UInt {
  text_track_cue_list_length_ffi(TJsValue::to_js(self))
}

///|
/// [TextTrackCueList.getCueById](https://developer.mozilla.org/en-US/docs/Web/API/TextTrackCueList/getCueById)
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
