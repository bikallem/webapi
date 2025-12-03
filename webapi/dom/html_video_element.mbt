// Auto-generated MoonBit bindings for HTMLVideoElement

// Do not edit manually

//
// WebIDL Interface:
// [Exposed=Window]
// interface HTMLVideoElement : HTMLMediaElement {
//   [HTMLConstructor] constructor();
// 
//   [CEReactions, Reflect] attribute unsigned long width;
//   [CEReactions, Reflect] attribute unsigned long height;
//   readonly attribute unsigned long videoWidth;
//   readonly attribute unsigned long videoHeight;
//   [CEReactions, ReflectURL] attribute USVString poster;
//   [CEReactions, Reflect] attribute boolean playsInline;
// };

///|
#external
pub type HTMLVideoElement

///|
pub trait THTMLVideoElement: TJsValue {
  width(self : Self) -> Int = _
  set_width(self : Self, value : Int) -> Unit = _
  height(self : Self) -> Int = _
  set_height(self : Self, value : Int) -> Unit = _
  video_width(self : Self) -> Int = _
  video_height(self : Self) -> Int = _
  poster(self : Self) -> String = _
  set_poster(self : Self, value : String) -> Unit = _
  plays_inline(self : Self) -> Bool = _
  set_plays_inline(self : Self, value : Bool) -> Unit = _
}

///|
pub impl THTMLVideoElement for HTMLVideoElement

///|
pub impl TJsValue for HTMLVideoElement with to_js(self : HTMLVideoElement) -> JsValue = "%identity"

///|
pub fn HTMLVideoElement::new() -> HTMLVideoElement = "webapi_HTMLVideoElement" "new"

///|
fn html_video_element_width_ffi(obj : JsValue) -> Int = "webapi_HTMLVideoElement" "width"

///|
impl THTMLVideoElement with width(self : Self) -> Int {
  html_video_element_width_ffi(self.to_js())
}

///|
fn html_video_element_set_width_ffi(obj : JsValue, value : Int) -> Unit = "webapi_HTMLVideoElement" "set_width"

///|
impl THTMLVideoElement with set_width(self : Self, value : Int) -> Unit {
  html_video_element_set_width_ffi(self.to_js(), value)
}

///|
fn html_video_element_height_ffi(obj : JsValue) -> Int = "webapi_HTMLVideoElement" "height"

///|
impl THTMLVideoElement with height(self : Self) -> Int {
  html_video_element_height_ffi(self.to_js())
}

///|
fn html_video_element_set_height_ffi(obj : JsValue, value : Int) -> Unit = "webapi_HTMLVideoElement" "set_height"

///|
impl THTMLVideoElement with set_height(self : Self, value : Int) -> Unit {
  html_video_element_set_height_ffi(self.to_js(), value)
}

///|
fn html_video_element_video_width_ffi(obj : JsValue) -> Int = "webapi_HTMLVideoElement" "videoWidth"

///|
impl THTMLVideoElement with video_width(self : Self) -> Int {
  html_video_element_video_width_ffi(self.to_js())
}

///|
fn html_video_element_video_height_ffi(obj : JsValue) -> Int = "webapi_HTMLVideoElement" "videoHeight"

///|
impl THTMLVideoElement with video_height(self : Self) -> Int {
  html_video_element_video_height_ffi(self.to_js())
}

///|
fn html_video_element_poster_ffi(obj : JsValue) -> String = "webapi_HTMLVideoElement" "poster"

///|
impl THTMLVideoElement with poster(self : Self) -> String {
  html_video_element_poster_ffi(self.to_js())
}

///|
fn html_video_element_set_poster_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLVideoElement" "set_poster"

///|
impl THTMLVideoElement with set_poster(self : Self, value : String) -> Unit {
  html_video_element_set_poster_ffi(self.to_js(), value)
}

///|
fn html_video_element_plays_inline_ffi(obj : JsValue) -> Bool = "webapi_HTMLVideoElement" "playsInline"

///|
impl THTMLVideoElement with plays_inline(self : Self) -> Bool {
  html_video_element_plays_inline_ffi(self.to_js())
}

///|
fn html_video_element_set_plays_inline_ffi(obj : JsValue, value : Bool) -> Unit = "webapi_HTMLVideoElement" "set_playsInline"

///|
impl THTMLVideoElement with set_plays_inline(self : Self, value : Bool) -> Unit {
  html_video_element_set_plays_inline_ffi(self.to_js(), value)
}
