///|
#external
pub type HTMLFrameSetElement

///|
pub impl TJsValue for HTMLFrameSetElement with to_js(self : HTMLFrameSetElement) -> JsValue = "%identity"

///|
pub fn[T : THTMLFrameSetElement] HTMLFrameSetElement::into(
  self : HTMLFrameSetElement,
) -> T = "%identity"

///|
pub impl THTMLFrameSetElement for HTMLFrameSetElement

///|
pub impl THTMLElement for HTMLFrameSetElement

///|
pub impl TElement for HTMLFrameSetElement

///|
pub impl TNode for HTMLFrameSetElement

///|
pub impl TEventTarget for HTMLFrameSetElement

///|
extern "js" fn html_frame_set_element_ffi() -> HTMLFrameSetElement = "() => new HTMLFrameSetElement()"

///|
pub fn HTMLFrameSetElement::new() -> HTMLFrameSetElement {
  html_frame_set_element_ffi()
}

///|
pub trait THTMLFrameSetElement: THTMLElement {}
