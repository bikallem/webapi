///|
#external
pub type HTMLPictureElement

///|
pub impl TJsValue for HTMLPictureElement with to_js(self : HTMLPictureElement) -> JsValue = "%identity"

///|
pub fn[T : THTMLPictureElement] HTMLPictureElement::into(
  self : HTMLPictureElement,
) -> T = "%identity"

///|
pub impl THTMLPictureElement for HTMLPictureElement

///|
pub impl THTMLElement for HTMLPictureElement

///|
pub impl TElement for HTMLPictureElement

///|
pub impl TNode for HTMLPictureElement

///|
pub impl TEventTarget for HTMLPictureElement

///|
extern "js" fn html_picture_element_new_ffi() -> HTMLPictureElement = "() => new HTMLPictureElement()"

///|
pub fn HTMLPictureElement::new() -> HTMLPictureElement {
  html_picture_element_new_ffi()
}

///|
pub trait THTMLPictureElement: THTMLElement {}
