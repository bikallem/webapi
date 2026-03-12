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
pub impl FromJsAny for TextTrackCueList with from_js_any(value : JsAny) -> TextTrackCueList = "%identity"

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
  get_opt(self : Self, index : UInt) -> TextTrackCue? = _
  get_cue_by_id_opt(self : Self, id : String) -> TextTrackCue? = _
  get(self : Self, index : UInt) -> TextTrackCue = _
  get_cue_by_id(self : Self, id : String) -> TextTrackCue = _
}

///|
/// [TextTrackCueList.length](https://developer.mozilla.org/en-US/docs/Web/API/TextTrackCueList/length)
impl TTextTrackCueList with length(self : Self) -> UInt {
  text_track_cue_list_length_ffi(TJsValue::to_js(self))
}

///|
/// [TextTrackCueList.get](https://developer.mozilla.org/en-US/docs/Web/API/TextTrackCueList/get)
impl TTextTrackCueList with get_opt(self : Self, index : UInt) -> TextTrackCue? {
  text_track_cue_list_get_ffi(TJsValue::to_js(self), TJsValue::to_js(index)).to_option()
}

///|
/// [TextTrackCueList.getCueById](https://developer.mozilla.org/en-US/docs/Web/API/TextTrackCueList/getCueById)
impl TTextTrackCueList with get_cue_by_id_opt(self : Self, id : String) -> TextTrackCue? {
  text_track_cue_list_get_cue_by_id_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(id),
  ).to_option()
}

///|
impl TTextTrackCueList with get(self : Self, index : UInt) -> TextTrackCue {
  self.get_opt(index).unwrap()
}

///|
impl TTextTrackCueList with get_cue_by_id(self : Self, id : String) -> TextTrackCue {
  self.get_cue_by_id_opt(id).unwrap()
}
