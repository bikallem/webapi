// Do not edit. This file is generated.
// MoonBit type: HTMLVideoElement
// Specifications: html.idl

/// [HTMLVideoElement](https://developer.mozilla.org/en-US/docs/Web/API/HTMLVideoElement)
#external
pub type HTMLVideoElement

pub impl TJsValue for HTMLVideoElement with to_js(self: HTMLVideoElement) -> JsValue = "%identity"

pub impl FromJsAny for HTMLVideoElement with from_js_any(value : JsAny) -> HTMLVideoElement = "%identity"

/// Unchecked downcast — no runtime type check is performed.
/// Prefer `try_into()` for checked downcasts.
#deprecated("Use unsafe_into or try_into instead")
pub fn[T: THTMLVideoElement] HTMLVideoElement::into(self : HTMLVideoElement) -> T = "%identity"

/// Unchecked downcast — no runtime type check is performed.
/// WARNING: If the underlying JS value is not of type T, this will silently
/// produce a value with incorrect type, leading to undefined behavior.
pub fn[T: THTMLVideoElement] HTMLVideoElement::unsafe_into(self : HTMLVideoElement) -> T = "%identity"

pub impl HasConstructor for HTMLVideoElement with constructor_name() { "HTMLVideoElement" }

/// Checked downcast — returns None if the JS value is not an instance of T.
pub fn[T : THTMLVideoElement + HasConstructor] HTMLVideoElement::try_into(self : HTMLVideoElement) -> T? {
  if js_instanceof(TJsValue::to_js(self), T::constructor_name()) {
    Some(self.unsafe_into())
  } else {
    None
  }
}

pub impl THTMLVideoElement for HTMLVideoElement

pub impl THTMLMediaElement for HTMLVideoElement

pub impl THTMLElement for HTMLVideoElement

pub impl TElement for HTMLVideoElement

pub impl TNode for HTMLVideoElement

pub impl TEventTarget for HTMLVideoElement

pub fn HTMLVideoElement::new() -> HTMLVideoElement {
  html_video_element_new_ffi()
}

/// [HTMLVideoElement](https://developer.mozilla.org/en-US/docs/Web/API/HTMLVideoElement) interface.
pub trait THTMLVideoElement: THTMLMediaElement {
  width(self : Self) -> UInt = _
  set_width(self : Self, width : UInt) -> Unit = _
  height(self : Self) -> UInt = _
  set_height(self : Self, height : UInt) -> Unit = _
  video_width(self : Self) -> UInt = _
  video_height(self : Self) -> UInt = _
  poster(self : Self) -> String = _
  set_poster(self : Self, poster : String) -> Unit = _
  plays_inline(self : Self) -> Bool = _
  set_plays_inline(self : Self, plays_inline : Bool) -> Unit = _
}

/// [HTMLVideoElement.width](https://developer.mozilla.org/en-US/docs/Web/API/HTMLVideoElement/width)
impl THTMLVideoElement with width(self : Self) -> UInt {
  html_video_element_width_ffi(TJsValue::to_js(self))
}

/// [HTMLVideoElement.width](https://developer.mozilla.org/en-US/docs/Web/API/HTMLVideoElement/width)
impl THTMLVideoElement with set_width(self : Self, 
width : UInt) -> Unit {
  html_video_element_set_width_ffi(TJsValue::to_js(self), TJsValue::to_js(width))
}

/// [HTMLVideoElement.height](https://developer.mozilla.org/en-US/docs/Web/API/HTMLVideoElement/height)
impl THTMLVideoElement with height(self : Self) -> UInt {
  html_video_element_height_ffi(TJsValue::to_js(self))
}

/// [HTMLVideoElement.height](https://developer.mozilla.org/en-US/docs/Web/API/HTMLVideoElement/height)
impl THTMLVideoElement with set_height(self : Self, 
height : UInt) -> Unit {
  html_video_element_set_height_ffi(TJsValue::to_js(self), TJsValue::to_js(height))
}

/// [HTMLVideoElement.videoWidth](https://developer.mozilla.org/en-US/docs/Web/API/HTMLVideoElement/videoWidth)
impl THTMLVideoElement with video_width(self : Self) -> UInt {
  html_video_element_video_width_ffi(TJsValue::to_js(self))
}

/// [HTMLVideoElement.videoHeight](https://developer.mozilla.org/en-US/docs/Web/API/HTMLVideoElement/videoHeight)
impl THTMLVideoElement with video_height(self : Self) -> UInt {
  html_video_element_video_height_ffi(TJsValue::to_js(self))
}

/// [HTMLVideoElement.poster](https://developer.mozilla.org/en-US/docs/Web/API/HTMLVideoElement/poster)
impl THTMLVideoElement with poster(self : Self) -> String {
  html_video_element_poster_ffi(TJsValue::to_js(self))
}

/// [HTMLVideoElement.poster](https://developer.mozilla.org/en-US/docs/Web/API/HTMLVideoElement/poster)
impl THTMLVideoElement with set_poster(self : Self, 
poster : String) -> Unit {
  html_video_element_set_poster_ffi(TJsValue::to_js(self), TJsValue::to_js(poster))
}

/// [HTMLVideoElement.playsInline](https://developer.mozilla.org/en-US/docs/Web/API/HTMLVideoElement/playsInline)
impl THTMLVideoElement with plays_inline(self : Self) -> Bool {
  html_video_element_plays_inline_ffi(TJsValue::to_js(self))
}

/// [HTMLVideoElement.playsInline](https://developer.mozilla.org/en-US/docs/Web/API/HTMLVideoElement/playsInline)
impl THTMLVideoElement with set_plays_inline(self : Self, 
plays_inline : Bool) -> Unit {
  html_video_element_set_plays_inline_ffi(TJsValue::to_js(self), TJsValue::to_js(plays_inline))
}

#cfg(target="js")
extern "js" fn html_video_element_new_ffi() -> HTMLVideoElement = "() => new HTMLVideoElement()"

#cfg(target="js")
extern "js" fn html_video_element_width_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.width"

///|
#cfg(target="js")
fn html_video_element_width_ffi(obj: JsValue) -> UInt {
  html_video_element_width_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn html_video_element_set_width_ffi(obj: JsValue, width: JsValue) -> Unit = "(obj, width) => { obj.width = width; }"

#cfg(target="js")
extern "js" fn html_video_element_height_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.height"

///|
#cfg(target="js")
fn html_video_element_height_ffi(obj: JsValue) -> UInt {
  html_video_element_height_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn html_video_element_set_height_ffi(obj: JsValue, height: JsValue) -> Unit = "(obj, height) => { obj.height = height; }"

#cfg(target="js")
extern "js" fn html_video_element_video_width_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.videoWidth"

///|
#cfg(target="js")
fn html_video_element_video_width_ffi(obj: JsValue) -> UInt {
  html_video_element_video_width_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn html_video_element_video_height_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.videoHeight"

///|
#cfg(target="js")
fn html_video_element_video_height_ffi(obj: JsValue) -> UInt {
  html_video_element_video_height_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn html_video_element_poster_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.poster"

///|
#cfg(target="js")
fn html_video_element_poster_ffi(obj: JsValue) -> String {
  html_video_element_poster_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn html_video_element_set_poster_ffi(obj: JsValue, poster: JsValue) -> Unit = "(obj, poster) => { obj.poster = poster; }"

#cfg(target="js")
extern "js" fn html_video_element_plays_inline_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.playsInline"

///|
#cfg(target="js")
fn html_video_element_plays_inline_ffi(obj: JsValue) -> Bool {
  html_video_element_plays_inline_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn html_video_element_set_plays_inline_ffi(obj: JsValue, plays_inline: JsValue) -> Unit = "(obj, playsInline) => { obj.playsInline = playsInline; }"

#cfg(target="wasm-gc")
fn html_video_element_new_ffi() -> HTMLVideoElement = "webapi_HTMLVideoElement" "new"

#cfg(target="wasm-gc")
fn html_video_element_width_ffi(obj: JsValue) -> UInt = "webapi_HTMLVideoElement" "get_width"

#cfg(target="wasm-gc")
fn html_video_element_set_width_ffi(obj: JsValue, width: JsValue) -> Unit = "webapi_HTMLVideoElement" "set_width"

#cfg(target="wasm-gc")
fn html_video_element_height_ffi(obj: JsValue) -> UInt = "webapi_HTMLVideoElement" "get_height"

#cfg(target="wasm-gc")
fn html_video_element_set_height_ffi(obj: JsValue, height: JsValue) -> Unit = "webapi_HTMLVideoElement" "set_height"

#cfg(target="wasm-gc")
fn html_video_element_video_width_ffi(obj: JsValue) -> UInt = "webapi_HTMLVideoElement" "get_videoWidth"

#cfg(target="wasm-gc")
fn html_video_element_video_height_ffi(obj: JsValue) -> UInt = "webapi_HTMLVideoElement" "get_videoHeight"

#cfg(target="wasm-gc")
fn html_video_element_poster_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLVideoElement" "get_poster"

///|
#cfg(target="wasm-gc")
fn html_video_element_poster_ffi(obj: JsValue) -> String {
  jsvalue_to_string(html_video_element_poster_ffi_wasm(obj))
}

#cfg(target="wasm-gc")
fn html_video_element_set_poster_ffi(obj: JsValue, poster: JsValue) -> Unit = "webapi_HTMLVideoElement" "set_poster"

#cfg(target="wasm-gc")
fn html_video_element_plays_inline_ffi(obj: JsValue) -> Bool = "webapi_HTMLVideoElement" "get_playsInline"

#cfg(target="wasm-gc")
fn html_video_element_set_plays_inline_ffi(obj: JsValue, plays_inline: JsValue) -> Unit = "webapi_HTMLVideoElement" "set_playsInline"