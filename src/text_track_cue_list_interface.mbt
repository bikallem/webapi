// Do not edit. This file is generated.
// MoonBit type: TextTrackCueList
// Specifications: html.idl

/// [TextTrackCueList](https://developer.mozilla.org/en-US/docs/Web/API/TextTrackCueList)
#external
pub type TextTrackCueList

pub impl TJsValue for TextTrackCueList with to_js(self: TextTrackCueList) -> JsValue = "%identity"

pub impl FromJsAny for TextTrackCueList with from_js_any(value : JsAny) -> TextTrackCueList = "%identity"

/// Unchecked downcast — no runtime type check is performed.
/// Prefer `try_into()` for checked downcasts.
#deprecated("Use unsafe_into or try_into instead")
pub fn[T: TTextTrackCueList] TextTrackCueList::into(self : TextTrackCueList) -> T = "%identity"

/// Unchecked downcast — no runtime type check is performed.
/// WARNING: If the underlying JS value is not of type T, this will silently
/// produce a value with incorrect type, leading to undefined behavior.
pub fn[T: TTextTrackCueList] TextTrackCueList::unsafe_into(self : TextTrackCueList) -> T = "%identity"

pub impl HasConstructor for TextTrackCueList with constructor_name() { "TextTrackCueList" }

/// Checked downcast — returns None if the JS value is not an instance of T.
pub fn[T : TTextTrackCueList + HasConstructor] TextTrackCueList::try_into(self : TextTrackCueList) -> T? {
  if js_instanceof(TJsValue::to_js(self), T::constructor_name()) {
    Some(self.unsafe_into())
  } else {
    None
  }
}

pub impl TTextTrackCueList for TextTrackCueList

/// [TextTrackCueList](https://developer.mozilla.org/en-US/docs/Web/API/TextTrackCueList) interface.
pub trait TTextTrackCueList: TJsValue {
  length(self : Self) -> UInt = _
  get_opt(self : Self, index : UInt) -> TextTrackCue? = _
  get_cue_by_id_opt(self : Self, id : String) -> TextTrackCue? = _
  get(self : Self, index : UInt) -> TextTrackCue = _
  get_cue_by_id(self : Self, id : String) -> TextTrackCue = _
}

/// [TextTrackCueList.length](https://developer.mozilla.org/en-US/docs/Web/API/TextTrackCueList/length)
impl TTextTrackCueList with length(self : Self) -> UInt {
  text_track_cue_list_length_ffi(TJsValue::to_js(self))
}

/// [TextTrackCueList.get](https://developer.mozilla.org/en-US/docs/Web/API/TextTrackCueList/get)
impl TTextTrackCueList with get_opt(self : Self, 
index : UInt) -> TextTrackCue? {
  text_track_cue_list_get_ffi(TJsValue::to_js(self), TJsValue::to_js(index)).to_option()
}

/// [TextTrackCueList.getCueById](https://developer.mozilla.org/en-US/docs/Web/API/TextTrackCueList/getCueById)
impl TTextTrackCueList with get_cue_by_id_opt(self : Self, 
id : String) -> TextTrackCue? {
  text_track_cue_list_get_cue_by_id_ffi(TJsValue::to_js(self), TJsValue::to_js(id)).to_option()
}

impl TTextTrackCueList with get(self : Self, 
index : UInt) -> TextTrackCue {
  self.get_opt(index).unwrap()
}

impl TTextTrackCueList with get_cue_by_id(self : Self, 
id : String) -> TextTrackCue {
  self.get_cue_by_id_opt(id).unwrap()
}

#cfg(target="js")
extern "js" fn text_track_cue_list_length_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.length"

///|
#cfg(target="js")
fn text_track_cue_list_length_ffi(obj: JsValue) -> UInt {
  text_track_cue_list_length_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn text_track_cue_list_get_ffi(obj: JsValue, index: JsValue) -> JsValue = "(obj, index) => obj[index]"

#cfg(target="js")
extern "js" fn text_track_cue_list_get_cue_by_id_ffi(obj: JsValue, id: JsValue) -> JsValue = "(obj, id) => obj.getCueById(id)"

#cfg(target="wasm-gc")
fn text_track_cue_list_length_ffi(obj: JsValue) -> UInt = "webapi_TextTrackCueList" "get_length"

#cfg(target="wasm-gc")
fn text_track_cue_list_get_ffi(obj: JsValue, index: JsValue) -> JsValue = "webapi_TextTrackCueList" "get"

#cfg(target="wasm-gc")
fn text_track_cue_list_get_cue_by_id_ffi(obj: JsValue, id: JsValue) -> JsValue = "webapi_TextTrackCueList" "getCueById"