// Do not edit. This file is generated.
// MoonBit type: TextTrackList
// Specifications: html.idl

/// [TextTrackList](https://developer.mozilla.org/en-US/docs/Web/API/TextTrackList)
#external
pub type TextTrackList

pub impl TJsValue for TextTrackList with to_js(self: TextTrackList) -> JsValue = "%identity"

pub impl FromJsAny for TextTrackList with from_js_any(value : JsAny) -> TextTrackList = "%identity"

/// Unchecked downcast — no runtime type check is performed.
/// Prefer `try_into()` for checked downcasts.
#deprecated("Use unsafe_into or try_into instead")
pub fn[T: TTextTrackList] TextTrackList::into(self : TextTrackList) -> T = "%identity"

/// Unchecked downcast — no runtime type check is performed.
/// WARNING: If the underlying JS value is not of type T, this will silently
/// produce a value with incorrect type, leading to undefined behavior.
pub fn[T: TTextTrackList] TextTrackList::unsafe_into(self : TextTrackList) -> T = "%identity"

pub impl HasConstructor for TextTrackList with constructor_name() { "TextTrackList" }

/// Checked downcast — returns None if the JS value is not an instance of T.
pub fn[T : TTextTrackList + HasConstructor] TextTrackList::try_into(self : TextTrackList) -> T? {
  if js_instanceof(TJsValue::to_js(self), T::constructor_name()) {
    Some(self.unsafe_into())
  } else {
    None
  }
}

pub impl TTextTrackList for TextTrackList

pub impl TEventTarget for TextTrackList

/// [TextTrackList](https://developer.mozilla.org/en-US/docs/Web/API/TextTrackList) interface.
pub trait TTextTrackList: TEventTarget {
  length(self : Self) -> UInt = _
  get_opt(self : Self, index : UInt) -> TextTrack? = _
  get_track_by_id_opt(self : Self, id : String) -> TextTrack? = _
  onchange(self : Self) -> EventHandler = _
  set_onchange(self : Self, onchange : (Event) -> JsValue) -> Unit = _
  onaddtrack(self : Self) -> EventHandler = _
  set_onaddtrack(self : Self, onaddtrack : (Event) -> JsValue) -> Unit = _
  onremovetrack(self : Self) -> EventHandler = _
  set_onremovetrack(self : Self, onremovetrack : (Event) -> JsValue) -> Unit = _
  get(self : Self, index : UInt) -> TextTrack = _
  get_track_by_id(self : Self, id : String) -> TextTrack = _
}

/// [TextTrackList.length](https://developer.mozilla.org/en-US/docs/Web/API/TextTrackList/length)
impl TTextTrackList with length(self : Self) -> UInt {
  text_track_list_length_ffi(TJsValue::to_js(self))
}

/// [TextTrackList.get](https://developer.mozilla.org/en-US/docs/Web/API/TextTrackList/get)
impl TTextTrackList with get_opt(self : Self, 
index : UInt) -> TextTrack? {
  text_track_list_get_ffi(TJsValue::to_js(self), TJsValue::to_js(index)).to_option()
}

/// [TextTrackList.getTrackById](https://developer.mozilla.org/en-US/docs/Web/API/TextTrackList/getTrackById)
impl TTextTrackList with get_track_by_id_opt(self : Self, 
id : String) -> TextTrack? {
  text_track_list_get_track_by_id_ffi(TJsValue::to_js(self), TJsValue::to_js(id)).to_option()
}

/// [TextTrackList.onchange](https://developer.mozilla.org/en-US/docs/Web/API/TextTrackList/onchange)
impl TTextTrackList with onchange(self : Self) -> EventHandler {
  text_track_list_onchange_ffi(TJsValue::to_js(self))
}

/// [TextTrackList.onchange](https://developer.mozilla.org/en-US/docs/Web/API/TextTrackList/onchange)
impl TTextTrackList with set_onchange(self : Self, 
onchange : (Event) -> JsValue) -> Unit {
  text_track_list_set_onchange_ffi(TJsValue::to_js(self), TJsValue::to_js(event_handler_non_null_ffi(onchange)))
}

/// [TextTrackList.onaddtrack](https://developer.mozilla.org/en-US/docs/Web/API/TextTrackList/onaddtrack)
impl TTextTrackList with onaddtrack(self : Self) -> EventHandler {
  text_track_list_onaddtrack_ffi(TJsValue::to_js(self))
}

/// [TextTrackList.onaddtrack](https://developer.mozilla.org/en-US/docs/Web/API/TextTrackList/onaddtrack)
impl TTextTrackList with set_onaddtrack(self : Self, 
onaddtrack : (Event) -> JsValue) -> Unit {
  text_track_list_set_onaddtrack_ffi(TJsValue::to_js(self), TJsValue::to_js(event_handler_non_null_ffi(onaddtrack)))
}

/// [TextTrackList.onremovetrack](https://developer.mozilla.org/en-US/docs/Web/API/TextTrackList/onremovetrack)
impl TTextTrackList with onremovetrack(self : Self) -> EventHandler {
  text_track_list_onremovetrack_ffi(TJsValue::to_js(self))
}

/// [TextTrackList.onremovetrack](https://developer.mozilla.org/en-US/docs/Web/API/TextTrackList/onremovetrack)
impl TTextTrackList with set_onremovetrack(self : Self, 
onremovetrack : (Event) -> JsValue) -> Unit {
  text_track_list_set_onremovetrack_ffi(TJsValue::to_js(self), TJsValue::to_js(event_handler_non_null_ffi(onremovetrack)))
}

impl TTextTrackList with get(self : Self, 
index : UInt) -> TextTrack {
  self.get_opt(index).unwrap()
}

impl TTextTrackList with get_track_by_id(self : Self, 
id : String) -> TextTrack {
  self.get_track_by_id_opt(id).unwrap()
}

#cfg(target="js")
extern "js" fn text_track_list_length_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.length"

///|
#cfg(target="js")
fn text_track_list_length_ffi(obj: JsValue) -> UInt {
  text_track_list_length_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn text_track_list_get_ffi(obj: JsValue, index: JsValue) -> JsValue = "(obj, index) => obj[index]"

#cfg(target="js")
extern "js" fn text_track_list_get_track_by_id_ffi(obj: JsValue, id: JsValue) -> JsValue = "(obj, id) => obj.getTrackById(id)"

#cfg(target="js")
extern "js" fn text_track_list_onchange_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.onchange"

///|
#cfg(target="js")
fn text_track_list_onchange_ffi(obj: JsValue) -> EventHandler {
  text_track_list_onchange_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn text_track_list_set_onchange_ffi(obj: JsValue, onchange: JsValue) -> Unit = "(obj, onchange) => { obj.onchange = onchange; }"

#cfg(target="js")
extern "js" fn text_track_list_onaddtrack_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.onaddtrack"

///|
#cfg(target="js")
fn text_track_list_onaddtrack_ffi(obj: JsValue) -> EventHandler {
  text_track_list_onaddtrack_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn text_track_list_set_onaddtrack_ffi(obj: JsValue, onaddtrack: JsValue) -> Unit = "(obj, onaddtrack) => { obj.onaddtrack = onaddtrack; }"

#cfg(target="js")
extern "js" fn text_track_list_onremovetrack_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.onremovetrack"

///|
#cfg(target="js")
fn text_track_list_onremovetrack_ffi(obj: JsValue) -> EventHandler {
  text_track_list_onremovetrack_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn text_track_list_set_onremovetrack_ffi(obj: JsValue, onremovetrack: JsValue) -> Unit = "(obj, onremovetrack) => { obj.onremovetrack = onremovetrack; }"

#cfg(target="wasm-gc")
fn text_track_list_length_ffi(obj: JsValue) -> UInt = "webapi_TextTrackList" "get_length"

#cfg(target="wasm-gc")
fn text_track_list_get_ffi(obj: JsValue, index: JsValue) -> JsValue = "webapi_TextTrackList" "get"

#cfg(target="wasm-gc")
fn text_track_list_get_track_by_id_ffi(obj: JsValue, id: JsValue) -> JsValue = "webapi_TextTrackList" "getTrackById"

#cfg(target="wasm-gc")
fn text_track_list_onchange_ffi_wasm(obj: JsValue) -> JsValue = "webapi_TextTrackList" "get_onchange"

///|
#cfg(target="wasm-gc")
fn text_track_list_onchange_ffi(obj: JsValue) -> EventHandler {
  text_track_list_onchange_ffi_wasm(obj).unsafe_cast()
}

#cfg(target="wasm-gc")
fn text_track_list_set_onchange_ffi(obj: JsValue, onchange: JsValue) -> Unit = "webapi_TextTrackList" "set_onchange"

#cfg(target="wasm-gc")
fn text_track_list_onaddtrack_ffi_wasm(obj: JsValue) -> JsValue = "webapi_TextTrackList" "get_onaddtrack"

///|
#cfg(target="wasm-gc")
fn text_track_list_onaddtrack_ffi(obj: JsValue) -> EventHandler {
  text_track_list_onaddtrack_ffi_wasm(obj).unsafe_cast()
}

#cfg(target="wasm-gc")
fn text_track_list_set_onaddtrack_ffi(obj: JsValue, onaddtrack: JsValue) -> Unit = "webapi_TextTrackList" "set_onaddtrack"

#cfg(target="wasm-gc")
fn text_track_list_onremovetrack_ffi_wasm(obj: JsValue) -> JsValue = "webapi_TextTrackList" "get_onremovetrack"

///|
#cfg(target="wasm-gc")
fn text_track_list_onremovetrack_ffi(obj: JsValue) -> EventHandler {
  text_track_list_onremovetrack_ffi_wasm(obj).unsafe_cast()
}

#cfg(target="wasm-gc")
fn text_track_list_set_onremovetrack_ffi(obj: JsValue, onremovetrack: JsValue) -> Unit = "webapi_TextTrackList" "set_onremovetrack"