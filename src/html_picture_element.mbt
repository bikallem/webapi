// Auto-generated MoonBit bindings for HTMLPictureElement interface
// Do not edit manually

#external
pub type HTMLPictureElement

pub impl TJsValue for HTMLPictureElement with to_js(self: HTMLPictureElement) -> JsValue = "%identity"


pub fn[T: THTMLPictureElement] HTMLPictureElement::into(self : HTMLPictureElement) -> T = "%identity"
pub impl THTMLPictureElement for HTMLPictureElement

pub fn HTMLPictureElement::new() -> HTMLPictureElement = "webapi_HTMLPictureElement" "new"

pub trait THTMLPictureElement: TJsValue + TTHTMLElement {
}