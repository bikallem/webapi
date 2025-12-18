// Auto-generated MoonBit bindings for HTMLSpanElement interface
// Do not edit manually

#external
pub type HTMLSpanElement

pub impl TJsValue for HTMLSpanElement with to_js(self: HTMLSpanElement) -> JsValue = "%identity"


pub fn[T: THTMLSpanElement] HTMLSpanElement::into(self : HTMLSpanElement) -> T = "%identity"
pub impl THTMLSpanElement for HTMLSpanElement

pub fn HTMLSpanElement::new() -> HTMLSpanElement = "webapi_HTMLSpanElement" "new"

pub trait THTMLSpanElement: TJsValue + TTHTMLElement {
}