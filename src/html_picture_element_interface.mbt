// Do not edit. This file is generated.
// MoonBit type: HTMLPictureElement
// Specifications: html.idl

///|
/// [HTMLPictureElement](https://developer.mozilla.org/en-US/docs/Web/API/HTMLPictureElement)
#external
pub type HTMLPictureElement

///|
pub impl TJsValue for HTMLPictureElement with to_js(self : HTMLPictureElement) -> JsValue = "%identity"

///|
pub impl FromJsAny for HTMLPictureElement with from_js_any(value : JsAny) -> HTMLPictureElement = "%identity"

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
pub fn HTMLPictureElement::new() -> HTMLPictureElement {
  html_picture_element_new_ffi()
}

///|
/// [HTMLPictureElement](https://developer.mozilla.org/en-US/docs/Web/API/HTMLPictureElement) interface.
pub trait THTMLPictureElement: THTMLElement {}

///|
#cfg(target="js")
extern "js" fn html_picture_element_new_ffi() -> HTMLPictureElement = "() => new HTMLPictureElement()"

///|
#cfg(target="wasm-gc")
fn html_picture_element_new_ffi() -> HTMLPictureElement = "webapi_HTMLPictureElement" "new"
