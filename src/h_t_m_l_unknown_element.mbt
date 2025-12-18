// Auto-generated MoonBit bindings for HTMLUnknownElement interface
// Do not edit manually

#external
pub type HTMLUnknownElement

pub impl TJsValue for HTMLUnknownElement with to_js(self: HTMLUnknownElement) -> JsValue = "%identity"


pub fn[T: THTMLUnknownElement] HTMLUnknownElement::into(self : HTMLUnknownElement) -> T = "%identity"
pub impl THTMLUnknownElement for HTMLUnknownElement

pub trait THTMLUnknownElement: TJsValue + TTHTMLElement {
}