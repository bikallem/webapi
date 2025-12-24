///|
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
pub trait THTMLTrackElement: THTMLElement {}
