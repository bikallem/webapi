// Auto-generated MoonBit bindings for HTMLHeadElement interface
// Do not edit manually

#external
pub type HTMLHeadElement

pub impl TJsValue for HTMLHeadElement with to_js(self: HTMLHeadElement) -> JsValue = "%identity"


pub fn[T: THTMLHeadElement] HTMLHeadElement::into(self : HTMLHeadElement) -> T = "%identity"
pub impl THTMLHeadElement for HTMLHeadElement

pub fn HTMLHeadElement::new() -> HTMLHeadElement = "webapi_HTMLHeadElement" "new"

pub trait THTMLHeadElement: TJsValue + TTHTMLElement {
}