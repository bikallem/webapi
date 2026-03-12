// Do not edit. This file is generated.
// MoonBit type: VideoTrackList
// Specifications: html.idl

///|
/// [VideoTrackList](https://developer.mozilla.org/en-US/docs/Web/API/VideoTrackList)
#external
pub type VideoTrackList

///|
pub impl TJsValue for VideoTrackList with to_js(self : VideoTrackList) -> JsValue = "%identity"

///|
pub impl FromJsAny for VideoTrackList with from_js_any(value : JsAny) -> VideoTrackList = "%identity"

///|
pub fn[T : TVideoTrackList] VideoTrackList::into(self : VideoTrackList) -> T = "%identity"

///|
pub impl TVideoTrackList for VideoTrackList

///|
pub impl TEventTarget for VideoTrackList

///|
/// [VideoTrackList](https://developer.mozilla.org/en-US/docs/Web/API/VideoTrackList) interface.
pub trait TVideoTrackList: TEventTarget {
  length(self : Self) -> UInt = _
  get_opt(self : Self, index : UInt) -> VideoTrack? = _
  get_track_by_id_opt(self : Self, id : String) -> VideoTrack? = _
  selected_index(self : Self) -> Int = _
  onchange(self : Self) -> EventHandler = _
  set_onchange(self : Self, onchange : (Event) -> JsValue) -> Unit = _
  onaddtrack(self : Self) -> EventHandler = _
  set_onaddtrack(self : Self, onaddtrack : (Event) -> JsValue) -> Unit = _
  onremovetrack(self : Self) -> EventHandler = _
  set_onremovetrack(self : Self, onremovetrack : (Event) -> JsValue) -> Unit = _
  get(self : Self, index : UInt) -> VideoTrack = _
  get_track_by_id(self : Self, id : String) -> VideoTrack = _
}

///|
/// [VideoTrackList.length](https://developer.mozilla.org/en-US/docs/Web/API/VideoTrackList/length)
impl TVideoTrackList with length(self : Self) -> UInt {
  video_track_list_length_ffi(TJsValue::to_js(self))
}

///|
/// [VideoTrackList.get](https://developer.mozilla.org/en-US/docs/Web/API/VideoTrackList/get)
impl TVideoTrackList with get_opt(self : Self, index : UInt) -> VideoTrack? {
  video_track_list_get_ffi(TJsValue::to_js(self), TJsValue::to_js(index)).to_option()
}

///|
/// [VideoTrackList.getTrackById](https://developer.mozilla.org/en-US/docs/Web/API/VideoTrackList/getTrackById)
impl TVideoTrackList with get_track_by_id_opt(self : Self, id : String) -> VideoTrack? {
  video_track_list_get_track_by_id_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(id),
  ).to_option()
}

///|
/// [VideoTrackList.selectedIndex](https://developer.mozilla.org/en-US/docs/Web/API/VideoTrackList/selectedIndex)
impl TVideoTrackList with selected_index(self : Self) -> Int {
  video_track_list_selected_index_ffi(TJsValue::to_js(self))
}

///|
/// [VideoTrackList.onchange](https://developer.mozilla.org/en-US/docs/Web/API/VideoTrackList/onchange)
impl TVideoTrackList with onchange(self : Self) -> EventHandler {
  video_track_list_onchange_ffi(TJsValue::to_js(self))
}

///|
/// [VideoTrackList.onchange](https://developer.mozilla.org/en-US/docs/Web/API/VideoTrackList/onchange)
impl TVideoTrackList with set_onchange(
  self : Self,
  onchange : (Event) -> JsValue,
) -> Unit {
  video_track_list_set_onchange_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onchange)),
  )
}

///|
/// [VideoTrackList.onaddtrack](https://developer.mozilla.org/en-US/docs/Web/API/VideoTrackList/onaddtrack)
impl TVideoTrackList with onaddtrack(self : Self) -> EventHandler {
  video_track_list_onaddtrack_ffi(TJsValue::to_js(self))
}

///|
/// [VideoTrackList.onaddtrack](https://developer.mozilla.org/en-US/docs/Web/API/VideoTrackList/onaddtrack)
impl TVideoTrackList with set_onaddtrack(
  self : Self,
  onaddtrack : (Event) -> JsValue,
) -> Unit {
  video_track_list_set_onaddtrack_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onaddtrack)),
  )
}

///|
/// [VideoTrackList.onremovetrack](https://developer.mozilla.org/en-US/docs/Web/API/VideoTrackList/onremovetrack)
impl TVideoTrackList with onremovetrack(self : Self) -> EventHandler {
  video_track_list_onremovetrack_ffi(TJsValue::to_js(self))
}

///|
/// [VideoTrackList.onremovetrack](https://developer.mozilla.org/en-US/docs/Web/API/VideoTrackList/onremovetrack)
impl TVideoTrackList with set_onremovetrack(
  self : Self,
  onremovetrack : (Event) -> JsValue,
) -> Unit {
  video_track_list_set_onremovetrack_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onremovetrack)),
  )
}

///|
impl TVideoTrackList with get(self : Self, index : UInt) -> VideoTrack {
  self.get_opt(index).unwrap()
}

///|
impl TVideoTrackList with get_track_by_id(self : Self, id : String) -> VideoTrack {
  self.get_track_by_id_opt(id).unwrap()
}

///|
#cfg(target="js")
extern "js" fn video_track_list_length_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.length"

///|
#cfg(target="js")
fn video_track_list_length_ffi(obj : JsValue) -> UInt {
  video_track_list_length_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn video_track_list_get_ffi(
  obj : JsValue,
  index : JsValue,
) -> JsValue = "(obj, index) => obj[index]"

///|
#cfg(target="js")
extern "js" fn video_track_list_get_track_by_id_ffi(
  obj : JsValue,
  id : JsValue,
) -> JsValue = "(obj, id) => obj.getTrackById(id)"

///|
#cfg(target="js")
extern "js" fn video_track_list_selected_index_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.selectedIndex"

///|
#cfg(target="js")
fn video_track_list_selected_index_ffi(obj : JsValue) -> Int {
  video_track_list_selected_index_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn video_track_list_onchange_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onchange"

///|
#cfg(target="js")
fn video_track_list_onchange_ffi(obj : JsValue) -> EventHandler {
  video_track_list_onchange_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn video_track_list_set_onchange_ffi(
  obj : JsValue,
  onchange : JsValue,
) -> Unit = "(obj, onchange) => { obj.onchange = onchange; }"

///|
#cfg(target="js")
extern "js" fn video_track_list_onaddtrack_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onaddtrack"

///|
#cfg(target="js")
fn video_track_list_onaddtrack_ffi(obj : JsValue) -> EventHandler {
  video_track_list_onaddtrack_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn video_track_list_set_onaddtrack_ffi(
  obj : JsValue,
  onaddtrack : JsValue,
) -> Unit = "(obj, onaddtrack) => { obj.onaddtrack = onaddtrack; }"

///|
#cfg(target="js")
extern "js" fn video_track_list_onremovetrack_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onremovetrack"

///|
#cfg(target="js")
fn video_track_list_onremovetrack_ffi(obj : JsValue) -> EventHandler {
  video_track_list_onremovetrack_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn video_track_list_set_onremovetrack_ffi(
  obj : JsValue,
  onremovetrack : JsValue,
) -> Unit = "(obj, onremovetrack) => { obj.onremovetrack = onremovetrack; }"

///|
#cfg(target="wasm-gc")
fn video_track_list_length_ffi(obj : JsValue) -> UInt = "webapi_VideoTrackList" "get_length"

///|
#cfg(target="wasm-gc")
fn video_track_list_get_ffi(obj : JsValue, index : JsValue) -> JsValue = "webapi_VideoTrackList" "get"

///|
#cfg(target="wasm-gc")
fn video_track_list_get_track_by_id_ffi(obj : JsValue, id : JsValue) -> JsValue = "webapi_VideoTrackList" "getTrackById"

///|
#cfg(target="wasm-gc")
fn video_track_list_selected_index_ffi(obj : JsValue) -> Int = "webapi_VideoTrackList" "get_selectedIndex"

///|
#cfg(target="wasm-gc")
fn video_track_list_onchange_ffi_wasm(obj : JsValue) -> JsValue = "webapi_VideoTrackList" "get_onchange"

///|
#cfg(target="wasm-gc")
fn video_track_list_onchange_ffi(obj : JsValue) -> EventHandler {
  video_track_list_onchange_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn video_track_list_set_onchange_ffi(obj : JsValue, onchange : JsValue) -> Unit = "webapi_VideoTrackList" "set_onchange"

///|
#cfg(target="wasm-gc")
fn video_track_list_onaddtrack_ffi_wasm(obj : JsValue) -> JsValue = "webapi_VideoTrackList" "get_onaddtrack"

///|
#cfg(target="wasm-gc")
fn video_track_list_onaddtrack_ffi(obj : JsValue) -> EventHandler {
  video_track_list_onaddtrack_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn video_track_list_set_onaddtrack_ffi(
  obj : JsValue,
  onaddtrack : JsValue,
) -> Unit = "webapi_VideoTrackList" "set_onaddtrack"

///|
#cfg(target="wasm-gc")
fn video_track_list_onremovetrack_ffi_wasm(obj : JsValue) -> JsValue = "webapi_VideoTrackList" "get_onremovetrack"

///|
#cfg(target="wasm-gc")
fn video_track_list_onremovetrack_ffi(obj : JsValue) -> EventHandler {
  video_track_list_onremovetrack_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn video_track_list_set_onremovetrack_ffi(
  obj : JsValue,
  onremovetrack : JsValue,
) -> Unit = "webapi_VideoTrackList" "set_onremovetrack"
