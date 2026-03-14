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
pub impl FromJsAny for HTMLTrackElement with from_js_any(value : JsAny) -> HTMLTrackElement = "%identity"

///|
/// Unchecked downcast — no runtime type check is performed.
/// Prefer `try_into()` for checked downcasts.
#deprecated("Use unsafe_into or try_into instead")
pub fn[T : THTMLTrackElement] HTMLTrackElement::into(
  self : HTMLTrackElement,
) -> T = "%identity"

///|
/// Unchecked downcast — no runtime type check is performed.
/// WARNING: If the underlying JS value is not of type T, this will silently
/// produce a value with incorrect type, leading to undefined behavior.
pub fn[T : THTMLTrackElement] HTMLTrackElement::unsafe_into(
  self : HTMLTrackElement,
) -> T = "%identity"

///|
pub impl HasConstructor for HTMLTrackElement with constructor_name() {
  "HTMLTrackElement"
}

///|
/// Checked downcast — returns None if the JS value is not an instance of T.
pub fn[T : THTMLTrackElement + HasConstructor] HTMLTrackElement::try_into(
  self : HTMLTrackElement,
) -> T? {
  if js_instanceof(TJsValue::to_js(self), T::constructor_name()) {
    Some(self.unsafe_into())
  } else {
    None
  }
}

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
/// [HTMLTrackElement.kind](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTrackElement/kind)
impl THTMLTrackElement with kind(self : Self) -> String {
  html_track_element_kind_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLTrackElement.kind](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTrackElement/kind)
impl THTMLTrackElement with set_kind(self : Self, kind : String) -> Unit {
  html_track_element_set_kind_ffi(TJsValue::to_js(self), TJsValue::to_js(kind))
}

///|
/// [HTMLTrackElement.src](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTrackElement/src)
impl THTMLTrackElement with src(self : Self) -> String {
  html_track_element_src_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLTrackElement.src](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTrackElement/src)
impl THTMLTrackElement with set_src(self : Self, src : String) -> Unit {
  html_track_element_set_src_ffi(TJsValue::to_js(self), TJsValue::to_js(src))
}

///|
/// [HTMLTrackElement.srclang](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTrackElement/srclang)
impl THTMLTrackElement with srclang(self : Self) -> String {
  html_track_element_srclang_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLTrackElement.srclang](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTrackElement/srclang)
impl THTMLTrackElement with set_srclang(self : Self, srclang : String) -> Unit {
  html_track_element_set_srclang_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(srclang),
  )
}

///|
/// [HTMLTrackElement.label](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTrackElement/label)
impl THTMLTrackElement with label(self : Self) -> String {
  html_track_element_label_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLTrackElement.label](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTrackElement/label)
impl THTMLTrackElement with set_label(self : Self, label : String) -> Unit {
  html_track_element_set_label_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(label),
  )
}

///|
/// [HTMLTrackElement.default](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTrackElement/default)
impl THTMLTrackElement with default(self : Self) -> Bool {
  html_track_element_default_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLTrackElement.default](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTrackElement/default)
impl THTMLTrackElement with set_default(self : Self, default : Bool) -> Unit {
  html_track_element_set_default_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(default),
  )
}

///|
/// [HTMLTrackElement.readyState](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTrackElement/readyState)
impl THTMLTrackElement with ready_state(self : Self) -> UInt {
  html_track_element_ready_state_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLTrackElement.track](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTrackElement/track)
impl THTMLTrackElement with track(self : Self) -> TextTrack {
  html_track_element_track_ffi(TJsValue::to_js(self))
}

///|
#cfg(target="js")
extern "js" fn html_track_element_new_ffi() -> HTMLTrackElement = "() => new HTMLTrackElement()"

///|
#cfg(target="js")
extern "js" fn html_track_element_kind_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.kind"

///|
#cfg(target="js")
fn html_track_element_kind_ffi(obj : JsValue) -> String {
  html_track_element_kind_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_track_element_set_kind_ffi(
  obj : JsValue,
  kind : JsValue,
) -> Unit = "(obj, kind) => { obj.kind = kind; }"

///|
#cfg(target="js")
extern "js" fn html_track_element_src_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.src"

///|
#cfg(target="js")
fn html_track_element_src_ffi(obj : JsValue) -> String {
  html_track_element_src_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_track_element_set_src_ffi(
  obj : JsValue,
  src : JsValue,
) -> Unit = "(obj, src) => { obj.src = src; }"

///|
#cfg(target="js")
extern "js" fn html_track_element_srclang_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.srclang"

///|
#cfg(target="js")
fn html_track_element_srclang_ffi(obj : JsValue) -> String {
  html_track_element_srclang_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_track_element_set_srclang_ffi(
  obj : JsValue,
  srclang : JsValue,
) -> Unit = "(obj, srclang) => { obj.srclang = srclang; }"

///|
#cfg(target="js")
extern "js" fn html_track_element_label_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.label"

///|
#cfg(target="js")
fn html_track_element_label_ffi(obj : JsValue) -> String {
  html_track_element_label_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_track_element_set_label_ffi(
  obj : JsValue,
  label : JsValue,
) -> Unit = "(obj, label) => { obj.label = label; }"

///|
#cfg(target="js")
extern "js" fn html_track_element_default_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.default"

///|
#cfg(target="js")
fn html_track_element_default_ffi(obj : JsValue) -> Bool {
  html_track_element_default_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_track_element_set_default_ffi(
  obj : JsValue,
  default : JsValue,
) -> Unit = "(obj, _default) => { obj.default = _default; }"

///|
#cfg(target="js")
extern "js" fn html_track_element_ready_state_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.readyState"

///|
#cfg(target="js")
fn html_track_element_ready_state_ffi(obj : JsValue) -> UInt {
  html_track_element_ready_state_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_track_element_track_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.track"

///|
#cfg(target="js")
fn html_track_element_track_ffi(obj : JsValue) -> TextTrack {
  html_track_element_track_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn html_track_element_new_ffi() -> HTMLTrackElement = "webapi_HTMLTrackElement" "new"

///|
#cfg(target="wasm-gc")
fn html_track_element_kind_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLTrackElement" "get_kind"

///|
#cfg(target="wasm-gc")
fn html_track_element_kind_ffi(obj : JsValue) -> String {
  jsvalue_to_string(html_track_element_kind_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn html_track_element_set_kind_ffi(obj : JsValue, kind : JsValue) -> Unit = "webapi_HTMLTrackElement" "set_kind"

///|
#cfg(target="wasm-gc")
fn html_track_element_src_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLTrackElement" "get_src"

///|
#cfg(target="wasm-gc")
fn html_track_element_src_ffi(obj : JsValue) -> String {
  jsvalue_to_string(html_track_element_src_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn html_track_element_set_src_ffi(obj : JsValue, src : JsValue) -> Unit = "webapi_HTMLTrackElement" "set_src"

///|
#cfg(target="wasm-gc")
fn html_track_element_srclang_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLTrackElement" "get_srclang"

///|
#cfg(target="wasm-gc")
fn html_track_element_srclang_ffi(obj : JsValue) -> String {
  jsvalue_to_string(html_track_element_srclang_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn html_track_element_set_srclang_ffi(obj : JsValue, srclang : JsValue) -> Unit = "webapi_HTMLTrackElement" "set_srclang"

///|
#cfg(target="wasm-gc")
fn html_track_element_label_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLTrackElement" "get_label"

///|
#cfg(target="wasm-gc")
fn html_track_element_label_ffi(obj : JsValue) -> String {
  jsvalue_to_string(html_track_element_label_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn html_track_element_set_label_ffi(obj : JsValue, label : JsValue) -> Unit = "webapi_HTMLTrackElement" "set_label"

///|
#cfg(target="wasm-gc")
fn html_track_element_default_ffi(obj : JsValue) -> Bool = "webapi_HTMLTrackElement" "get_default"

///|
#cfg(target="wasm-gc")
fn html_track_element_set_default_ffi(obj : JsValue, default : JsValue) -> Unit = "webapi_HTMLTrackElement" "set_default"

///|
#cfg(target="wasm-gc")
fn html_track_element_ready_state_ffi(obj : JsValue) -> UInt = "webapi_HTMLTrackElement" "get_readyState"

///|
#cfg(target="wasm-gc")
fn html_track_element_track_ffi(obj : JsValue) -> TextTrack = "webapi_HTMLTrackElement" "get_track"
