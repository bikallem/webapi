///|
#external
pub type HTMLVideoElement

///|
pub impl TJsValue for HTMLVideoElement with to_js(self : HTMLVideoElement) -> JsValue = "%identity"

///|
pub fn[T : THTMLVideoElement] HTMLVideoElement::into(
  self : HTMLVideoElement,
) -> T = "%identity"

///|
pub impl THTMLVideoElement for HTMLVideoElement

///|
pub impl THTMLMediaElement for HTMLVideoElement

///|
pub impl THTMLElement for HTMLVideoElement

///|
pub impl TElement for HTMLVideoElement

///|
pub impl TNode for HTMLVideoElement

///|
pub impl TEventTarget for HTMLVideoElement

///|
extern "js" fn html_video_element_new_ffi() -> HTMLVideoElement = "() => new HTMLVideoElement()"

///|
pub fn HTMLVideoElement::new() -> HTMLVideoElement {
  html_video_element_new_ffi()
}

///|
pub trait THTMLVideoElement: THTMLMediaElement {}
