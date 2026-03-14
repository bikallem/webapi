// Do not edit. This file is generated.
// MoonBit type: AudioTrackList
// Specifications: html.idl

/// [AudioTrackList](https://developer.mozilla.org/en-US/docs/Web/API/AudioTrackList)
#external
pub type AudioTrackList

pub impl TJsValue for AudioTrackList with to_js(self: AudioTrackList) -> JsValue = "%identity"

pub impl FromJsAny for AudioTrackList with from_js_any(value : JsAny) -> AudioTrackList = "%identity"

/// Unchecked downcast — no runtime type check is performed.
/// Prefer `try_into()` for checked downcasts.
#deprecated("Use unsafe_into or try_into instead")
pub fn[T: TAudioTrackList] AudioTrackList::into(self : AudioTrackList) -> T = "%identity"

/// Unchecked downcast — no runtime type check is performed.
/// WARNING: If the underlying JS value is not of type T, this will silently
/// produce a value with incorrect type, leading to undefined behavior.
pub fn[T: TAudioTrackList] AudioTrackList::unsafe_into(self : AudioTrackList) -> T = "%identity"

pub impl HasConstructor for AudioTrackList with constructor_name() { "AudioTrackList" }

/// Checked downcast — returns None if the JS value is not an instance of T.
pub fn[T : TAudioTrackList + HasConstructor] AudioTrackList::try_into(self : AudioTrackList) -> T? {
  if js_instanceof(TJsValue::to_js(self), T::constructor_name()) {
    Some(self.unsafe_into())
  } else {
    None
  }
}

pub impl TAudioTrackList for AudioTrackList

pub impl TEventTarget for AudioTrackList

/// [AudioTrackList](https://developer.mozilla.org/en-US/docs/Web/API/AudioTrackList) interface.
pub trait TAudioTrackList: TEventTarget {
  length(self : Self) -> UInt = _
  get_opt(self : Self, index : UInt) -> AudioTrack? = _
  get_track_by_id_opt(self : Self, id : String) -> AudioTrack? = _
  onchange(self : Self) -> EventHandler = _
  set_onchange(self : Self, onchange : (Event) -> JsValue) -> Unit = _
  onaddtrack(self : Self) -> EventHandler = _
  set_onaddtrack(self : Self, onaddtrack : (Event) -> JsValue) -> Unit = _
  onremovetrack(self : Self) -> EventHandler = _
  set_onremovetrack(self : Self, onremovetrack : (Event) -> JsValue) -> Unit = _
  get(self : Self, index : UInt) -> AudioTrack = _
  get_track_by_id(self : Self, id : String) -> AudioTrack = _
}

/// [AudioTrackList.length](https://developer.mozilla.org/en-US/docs/Web/API/AudioTrackList/length)
impl TAudioTrackList with length(self : Self) -> UInt {
  audio_track_list_length_ffi(TJsValue::to_js(self))
}

/// [AudioTrackList.get](https://developer.mozilla.org/en-US/docs/Web/API/AudioTrackList/get)
impl TAudioTrackList with get_opt(self : Self, 
index : UInt) -> AudioTrack? {
  audio_track_list_get_ffi(TJsValue::to_js(self), TJsValue::to_js(index)).to_option()
}

/// [AudioTrackList.getTrackById](https://developer.mozilla.org/en-US/docs/Web/API/AudioTrackList/getTrackById)
impl TAudioTrackList with get_track_by_id_opt(self : Self, 
id : String) -> AudioTrack? {
  audio_track_list_get_track_by_id_ffi(TJsValue::to_js(self), TJsValue::to_js(id)).to_option()
}

/// [AudioTrackList.onchange](https://developer.mozilla.org/en-US/docs/Web/API/AudioTrackList/onchange)
impl TAudioTrackList with onchange(self : Self) -> EventHandler {
  audio_track_list_onchange_ffi(TJsValue::to_js(self))
}

/// [AudioTrackList.onchange](https://developer.mozilla.org/en-US/docs/Web/API/AudioTrackList/onchange)
impl TAudioTrackList with set_onchange(self : Self, 
onchange : (Event) -> JsValue) -> Unit {
  audio_track_list_set_onchange_ffi(TJsValue::to_js(self), TJsValue::to_js(event_handler_non_null_ffi(onchange)))
}

/// [AudioTrackList.onaddtrack](https://developer.mozilla.org/en-US/docs/Web/API/AudioTrackList/onaddtrack)
impl TAudioTrackList with onaddtrack(self : Self) -> EventHandler {
  audio_track_list_onaddtrack_ffi(TJsValue::to_js(self))
}

/// [AudioTrackList.onaddtrack](https://developer.mozilla.org/en-US/docs/Web/API/AudioTrackList/onaddtrack)
impl TAudioTrackList with set_onaddtrack(self : Self, 
onaddtrack : (Event) -> JsValue) -> Unit {
  audio_track_list_set_onaddtrack_ffi(TJsValue::to_js(self), TJsValue::to_js(event_handler_non_null_ffi(onaddtrack)))
}

/// [AudioTrackList.onremovetrack](https://developer.mozilla.org/en-US/docs/Web/API/AudioTrackList/onremovetrack)
impl TAudioTrackList with onremovetrack(self : Self) -> EventHandler {
  audio_track_list_onremovetrack_ffi(TJsValue::to_js(self))
}

/// [AudioTrackList.onremovetrack](https://developer.mozilla.org/en-US/docs/Web/API/AudioTrackList/onremovetrack)
impl TAudioTrackList with set_onremovetrack(self : Self, 
onremovetrack : (Event) -> JsValue) -> Unit {
  audio_track_list_set_onremovetrack_ffi(TJsValue::to_js(self), TJsValue::to_js(event_handler_non_null_ffi(onremovetrack)))
}

impl TAudioTrackList with get(self : Self, 
index : UInt) -> AudioTrack {
  self.get_opt(index).unwrap()
}

impl TAudioTrackList with get_track_by_id(self : Self, 
id : String) -> AudioTrack {
  self.get_track_by_id_opt(id).unwrap()
}

#cfg(target="js")
extern "js" fn audio_track_list_length_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.length"

///|
#cfg(target="js")
fn audio_track_list_length_ffi(obj: JsValue) -> UInt {
  audio_track_list_length_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn audio_track_list_get_ffi(obj: JsValue, index: JsValue) -> JsValue = "(obj, index) => obj[index]"

#cfg(target="js")
extern "js" fn audio_track_list_get_track_by_id_ffi(obj: JsValue, id: JsValue) -> JsValue = "(obj, id) => obj.getTrackById(id)"

#cfg(target="js")
extern "js" fn audio_track_list_onchange_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.onchange"

///|
#cfg(target="js")
fn audio_track_list_onchange_ffi(obj: JsValue) -> EventHandler {
  audio_track_list_onchange_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn audio_track_list_set_onchange_ffi(obj: JsValue, onchange: JsValue) -> Unit = "(obj, onchange) => { obj.onchange = onchange; }"

#cfg(target="js")
extern "js" fn audio_track_list_onaddtrack_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.onaddtrack"

///|
#cfg(target="js")
fn audio_track_list_onaddtrack_ffi(obj: JsValue) -> EventHandler {
  audio_track_list_onaddtrack_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn audio_track_list_set_onaddtrack_ffi(obj: JsValue, onaddtrack: JsValue) -> Unit = "(obj, onaddtrack) => { obj.onaddtrack = onaddtrack; }"

#cfg(target="js")
extern "js" fn audio_track_list_onremovetrack_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.onremovetrack"

///|
#cfg(target="js")
fn audio_track_list_onremovetrack_ffi(obj: JsValue) -> EventHandler {
  audio_track_list_onremovetrack_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn audio_track_list_set_onremovetrack_ffi(obj: JsValue, onremovetrack: JsValue) -> Unit = "(obj, onremovetrack) => { obj.onremovetrack = onremovetrack; }"

#cfg(target="wasm-gc")
fn audio_track_list_length_ffi(obj: JsValue) -> UInt = "webapi_AudioTrackList" "get_length"

#cfg(target="wasm-gc")
fn audio_track_list_get_ffi(obj: JsValue, index: JsValue) -> JsValue = "webapi_AudioTrackList" "get"

#cfg(target="wasm-gc")
fn audio_track_list_get_track_by_id_ffi(obj: JsValue, id: JsValue) -> JsValue = "webapi_AudioTrackList" "getTrackById"

#cfg(target="wasm-gc")
fn audio_track_list_onchange_ffi_wasm(obj: JsValue) -> JsValue = "webapi_AudioTrackList" "get_onchange"

///|
#cfg(target="wasm-gc")
fn audio_track_list_onchange_ffi(obj: JsValue) -> EventHandler {
  audio_track_list_onchange_ffi_wasm(obj).unsafe_cast()
}

#cfg(target="wasm-gc")
fn audio_track_list_set_onchange_ffi(obj: JsValue, onchange: JsValue) -> Unit = "webapi_AudioTrackList" "set_onchange"

#cfg(target="wasm-gc")
fn audio_track_list_onaddtrack_ffi_wasm(obj: JsValue) -> JsValue = "webapi_AudioTrackList" "get_onaddtrack"

///|
#cfg(target="wasm-gc")
fn audio_track_list_onaddtrack_ffi(obj: JsValue) -> EventHandler {
  audio_track_list_onaddtrack_ffi_wasm(obj).unsafe_cast()
}

#cfg(target="wasm-gc")
fn audio_track_list_set_onaddtrack_ffi(obj: JsValue, onaddtrack: JsValue) -> Unit = "webapi_AudioTrackList" "set_onaddtrack"

#cfg(target="wasm-gc")
fn audio_track_list_onremovetrack_ffi_wasm(obj: JsValue) -> JsValue = "webapi_AudioTrackList" "get_onremovetrack"

///|
#cfg(target="wasm-gc")
fn audio_track_list_onremovetrack_ffi(obj: JsValue) -> EventHandler {
  audio_track_list_onremovetrack_ffi_wasm(obj).unsafe_cast()
}

#cfg(target="wasm-gc")
fn audio_track_list_set_onremovetrack_ffi(obj: JsValue, onremovetrack: JsValue) -> Unit = "webapi_AudioTrackList" "set_onremovetrack"