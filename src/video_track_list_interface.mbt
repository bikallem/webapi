// Do not edit. This file is generated.
// MoonBit type: VideoTrackList
// Specifications: html.idl

/// [VideoTrackList](https://developer.mozilla.org/en-US/docs/Web/API/VideoTrackList)
#external
pub type VideoTrackList

pub impl TJsValue for VideoTrackList with to_js(self: VideoTrackList) -> JsValue = "%identity"

pub fn[T: TVideoTrackList] VideoTrackList::into(self : VideoTrackList) -> T = "%identity"

pub impl TVideoTrackList for VideoTrackList

pub impl TEventTarget for VideoTrackList

/// [VideoTrackList](https://developer.mozilla.org/en-US/docs/Web/API/VideoTrackList) interface.
pub trait TVideoTrackList: TEventTarget {
  length(self : Self) -> UInt = _
  get_track_by_id(self : Self, id : String) -> VideoTrack? = _
  selected_index(self : Self) -> Int = _
  onchange(self : Self) -> EventHandler = _
  set_onchange(self : Self, onchange : EventHandler) -> Unit = _
  onaddtrack(self : Self) -> EventHandler = _
  set_onaddtrack(self : Self, onaddtrack : EventHandler) -> Unit = _
  onremovetrack(self : Self) -> EventHandler = _
  set_onremovetrack(self : Self, onremovetrack : EventHandler) -> Unit = _
}

/// [VideoTrackList.length](https://developer.mozilla.org/en-US/docs/Web/API/VideoTrackList/length)
impl TVideoTrackList with length(self : Self) -> UInt {
  video_track_list_length_ffi(TJsValue::to_js(self)).unsafe_cast()
}

/// [VideoTrackList.getTrackById](https://developer.mozilla.org/en-US/docs/Web/API/VideoTrackList/getTrackById)
impl TVideoTrackList with get_track_by_id(self : Self, 
id : String) -> VideoTrack? {
  let result = video_track_list_get_track_by_id_ffi(TJsValue::to_js(self), TJsValue::to_js(id))
  if JsValue::is_null(result) {
    None
  } else {
    Some(result.unsafe_cast())
  }
}

/// [VideoTrackList.selectedIndex](https://developer.mozilla.org/en-US/docs/Web/API/VideoTrackList/selectedIndex)
impl TVideoTrackList with selected_index(self : Self) -> Int {
  video_track_list_selected_index_ffi(TJsValue::to_js(self)).unsafe_cast()
}

/// [VideoTrackList.onchange](https://developer.mozilla.org/en-US/docs/Web/API/VideoTrackList/onchange)
impl TVideoTrackList with onchange(self : Self) -> EventHandler {
  video_track_list_onchange_ffi(TJsValue::to_js(self)).unsafe_cast()
}

/// [VideoTrackList.onchange](https://developer.mozilla.org/en-US/docs/Web/API/VideoTrackList/onchange)
impl TVideoTrackList with set_onchange(self : Self, 
onchange : EventHandler) -> Unit {
  video_track_list_set_onchange_ffi(TJsValue::to_js(self), TJsValue::to_js(onchange))
}

/// [VideoTrackList.onaddtrack](https://developer.mozilla.org/en-US/docs/Web/API/VideoTrackList/onaddtrack)
impl TVideoTrackList with onaddtrack(self : Self) -> EventHandler {
  video_track_list_onaddtrack_ffi(TJsValue::to_js(self)).unsafe_cast()
}

/// [VideoTrackList.onaddtrack](https://developer.mozilla.org/en-US/docs/Web/API/VideoTrackList/onaddtrack)
impl TVideoTrackList with set_onaddtrack(self : Self, 
onaddtrack : EventHandler) -> Unit {
  video_track_list_set_onaddtrack_ffi(TJsValue::to_js(self), TJsValue::to_js(onaddtrack))
}

/// [VideoTrackList.onremovetrack](https://developer.mozilla.org/en-US/docs/Web/API/VideoTrackList/onremovetrack)
impl TVideoTrackList with onremovetrack(self : Self) -> EventHandler {
  video_track_list_onremovetrack_ffi(TJsValue::to_js(self)).unsafe_cast()
}

/// [VideoTrackList.onremovetrack](https://developer.mozilla.org/en-US/docs/Web/API/VideoTrackList/onremovetrack)
impl TVideoTrackList with set_onremovetrack(self : Self, 
onremovetrack : EventHandler) -> Unit {
  video_track_list_set_onremovetrack_ffi(TJsValue::to_js(self), TJsValue::to_js(onremovetrack))
}