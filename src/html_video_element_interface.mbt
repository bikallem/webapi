// Do not edit. This file is generated.
// MoonBit type: HTMLVideoElement
// Specifications: html.idl

/// [HTMLVideoElement](https://developer.mozilla.org/en-US/docs/Web/API/HTMLVideoElement)
#external
pub type HTMLVideoElement

pub impl TJsValue for HTMLVideoElement with to_js(self: HTMLVideoElement) -> JsValue = "%identity"

pub fn[T: THTMLVideoElement] HTMLVideoElement::into(self : HTMLVideoElement) -> T = "%identity"

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
  html_video_element_width_ffi(TJsValue::to_js(self)).unsafe_cast()
}

/// [HTMLVideoElement.width](https://developer.mozilla.org/en-US/docs/Web/API/HTMLVideoElement/width)
impl THTMLVideoElement with set_width(self : Self, 
width : UInt) -> Unit {
  html_video_element_set_width_ffi(TJsValue::to_js(self), TJsValue::to_js(width))
}

/// [HTMLVideoElement.height](https://developer.mozilla.org/en-US/docs/Web/API/HTMLVideoElement/height)
impl THTMLVideoElement with height(self : Self) -> UInt {
  html_video_element_height_ffi(TJsValue::to_js(self)).unsafe_cast()
}

/// [HTMLVideoElement.height](https://developer.mozilla.org/en-US/docs/Web/API/HTMLVideoElement/height)
impl THTMLVideoElement with set_height(self : Self, 
height : UInt) -> Unit {
  html_video_element_set_height_ffi(TJsValue::to_js(self), TJsValue::to_js(height))
}

/// [HTMLVideoElement.videoWidth](https://developer.mozilla.org/en-US/docs/Web/API/HTMLVideoElement/videoWidth)
impl THTMLVideoElement with video_width(self : Self) -> UInt {
  html_video_element_video_width_ffi(TJsValue::to_js(self)).unsafe_cast()
}

/// [HTMLVideoElement.videoHeight](https://developer.mozilla.org/en-US/docs/Web/API/HTMLVideoElement/videoHeight)
impl THTMLVideoElement with video_height(self : Self) -> UInt {
  html_video_element_video_height_ffi(TJsValue::to_js(self)).unsafe_cast()
}

/// [HTMLVideoElement.poster](https://developer.mozilla.org/en-US/docs/Web/API/HTMLVideoElement/poster)
impl THTMLVideoElement with poster(self : Self) -> String {
  html_video_element_poster_ffi(TJsValue::to_js(self)).unsafe_cast()
}

/// [HTMLVideoElement.poster](https://developer.mozilla.org/en-US/docs/Web/API/HTMLVideoElement/poster)
impl THTMLVideoElement with set_poster(self : Self, 
poster : String) -> Unit {
  html_video_element_set_poster_ffi(TJsValue::to_js(self), TJsValue::to_js(poster))
}

/// [HTMLVideoElement.playsInline](https://developer.mozilla.org/en-US/docs/Web/API/HTMLVideoElement/playsInline)
impl THTMLVideoElement with plays_inline(self : Self) -> Bool {
  html_video_element_plays_inline_ffi(TJsValue::to_js(self)).unsafe_cast()
}

/// [HTMLVideoElement.playsInline](https://developer.mozilla.org/en-US/docs/Web/API/HTMLVideoElement/playsInline)
impl THTMLVideoElement with set_plays_inline(self : Self, 
plays_inline : Bool) -> Unit {
  html_video_element_set_plays_inline_ffi(TJsValue::to_js(self), TJsValue::to_js(plays_inline))
}