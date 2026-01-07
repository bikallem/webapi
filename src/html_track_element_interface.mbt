// Do not edit. This file is generated.
// MoonBit type: HTMLTrackElement
// Specifications: html.idl

///|
/// [HTMLTrackElement](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTrackElement)
#external
pub type HTMLTrackElement

///|
pub impl TJsValue for HTMLTrackElement with to_js(self : HTMLTrackElement) -> JsValue = "%identity"

///|
pub fn[T : THTMLTrackElement] HTMLTrackElement::into(
  self : HTMLTrackElement,
) -> T = "%identity"

///|
pub impl THTMLTrackElement for HTMLTrackElement

///|
pub impl THTMLElement for HTMLTrackElement

///|
pub impl TElement for HTMLTrackElement

///|
pub impl TNode for HTMLTrackElement

///|
pub impl TEventTarget for HTMLTrackElement

///|
extern "js" fn html_track_element_new_ffi() -> HTMLTrackElement = "() => new HTMLTrackElement()"

///|
pub fn HTMLTrackElement::new() -> HTMLTrackElement {
  html_track_element_new_ffi()
}

///|
pub const HTML_TRACK_ELEMENT_NONE : UInt = 0

///|
pub const HTML_TRACK_ELEMENT_LOADING : UInt = 1

///|
pub const HTML_TRACK_ELEMENT_LOADED : UInt = 2

///|
pub const HTML_TRACK_ELEMENT_ERROR : UInt = 3

///|
/// [HTMLTrackElement](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTrackElement) interface.
pub trait THTMLTrackElement: THTMLElement {
  kind(self : Self) -> String = _
  set_kind(self : Self, kind : String) -> Unit = _
  src(self : Self) -> String = _
  set_src(self : Self, src : String) -> Unit = _
  srclang(self : Self) -> String = _
  set_srclang(self : Self, srclang : String) -> Unit = _
  label(self : Self) -> String = _
  set_label(self : Self, label : String) -> Unit = _
  default(self : Self) -> Bool = _
  set_default(self : Self, default : Bool) -> Unit = _
  ready_state(self : Self) -> UInt = _
  track(self : Self) -> TextTrack = _
}

///|
extern "js" fn html_track_element_kind_ffi(obj : JsValue) -> String = "(obj) => obj.kind"

///|
/// [HTMLTrackElement.kind](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTrackElement/kind)
impl THTMLTrackElement with kind(self : Self) -> String {
  html_track_element_kind_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_track_element_set_kind_ffi(
  obj : JsValue,
  kind : JsValue,
) -> Unit = "(obj, kind) => { obj.kind = kind; }"

///|
/// [HTMLTrackElement.kind](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTrackElement/kind)
impl THTMLTrackElement with set_kind(self : Self, kind : String) -> Unit {
  html_track_element_set_kind_ffi(TJsValue::to_js(self), TJsValue::to_js(kind))
}

///|
extern "js" fn html_track_element_src_ffi(obj : JsValue) -> String = "(obj) => obj.src"

///|
/// [HTMLTrackElement.src](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTrackElement/src)
impl THTMLTrackElement with src(self : Self) -> String {
  html_track_element_src_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_track_element_set_src_ffi(
  obj : JsValue,
  src : JsValue,
) -> Unit = "(obj, src) => { obj.src = src; }"

///|
/// [HTMLTrackElement.src](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTrackElement/src)
impl THTMLTrackElement with set_src(self : Self, src : String) -> Unit {
  html_track_element_set_src_ffi(TJsValue::to_js(self), TJsValue::to_js(src))
}

///|
extern "js" fn html_track_element_srclang_ffi(obj : JsValue) -> String = "(obj) => obj.srclang"

///|
/// [HTMLTrackElement.srclang](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTrackElement/srclang)
impl THTMLTrackElement with srclang(self : Self) -> String {
  html_track_element_srclang_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_track_element_set_srclang_ffi(
  obj : JsValue,
  srclang : JsValue,
) -> Unit = "(obj, srclang) => { obj.srclang = srclang; }"

///|
/// [HTMLTrackElement.srclang](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTrackElement/srclang)
impl THTMLTrackElement with set_srclang(self : Self, srclang : String) -> Unit {
  html_track_element_set_srclang_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(srclang),
  )
}

///|
extern "js" fn html_track_element_label_ffi(obj : JsValue) -> String = "(obj) => obj.label"

///|
/// [HTMLTrackElement.label](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTrackElement/label)
impl THTMLTrackElement with label(self : Self) -> String {
  html_track_element_label_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_track_element_set_label_ffi(
  obj : JsValue,
  label : JsValue,
) -> Unit = "(obj, label) => { obj.label = label; }"

///|
/// [HTMLTrackElement.label](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTrackElement/label)
impl THTMLTrackElement with set_label(self : Self, label : String) -> Unit {
  html_track_element_set_label_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(label),
  )
}

///|
extern "js" fn html_track_element_default_ffi(obj : JsValue) -> Bool = "(obj) => obj.default"

///|
/// [HTMLTrackElement.default](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTrackElement/default)
impl THTMLTrackElement with default(self : Self) -> Bool {
  html_track_element_default_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_track_element_set_default_ffi(
  obj : JsValue,
  default : JsValue,
) -> Unit = "(obj, default) => { obj.default = default; }"

///|
/// [HTMLTrackElement.default](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTrackElement/default)
impl THTMLTrackElement with set_default(self : Self, default : Bool) -> Unit {
  html_track_element_set_default_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(default),
  )
}

///|
extern "js" fn html_track_element_ready_state_ffi(obj : JsValue) -> UInt = "(obj) => obj.readyState"

///|
/// [HTMLTrackElement.readyState](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTrackElement/readyState)
impl THTMLTrackElement with ready_state(self : Self) -> UInt {
  html_track_element_ready_state_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_track_element_track_ffi(obj : JsValue) -> TextTrack = "(obj) => obj.track"

///|
/// [HTMLTrackElement.track](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTrackElement/track)
impl THTMLTrackElement with track(self : Self) -> TextTrack {
  html_track_element_track_ffi(TJsValue::to_js(self))
}
