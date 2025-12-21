///|
#external
pub type HTMLFrameElement

///|
pub impl TJsValue for HTMLFrameElement with to_js(self : HTMLFrameElement) -> JsValue = "%identity"

///|
pub fn[T : THTMLFrameElement] HTMLFrameElement::into(
  self : HTMLFrameElement,
) -> T = "%identity"

///|
pub impl THTMLFrameElement for HTMLFrameElement

///|
pub impl THTMLElement for HTMLFrameElement

///|
pub impl TElement for HTMLFrameElement

///|
pub impl TNode for HTMLFrameElement

///|
pub impl TEventTarget for HTMLFrameElement

///|
extern "js" fn html_frame_element_ffi() -> HTMLFrameElement = "() => new HTMLFrameElement()"

///|
pub fn HTMLFrameElement::new() -> HTMLFrameElement {
  html_frame_element_ffi()
}

///|
pub trait THTMLFrameElement: THTMLElement {}
