// Auto-generated MoonBit bindings for HTMLAudioElement interface
// Do not edit manually

#external
pub type HTMLAudioElement

pub impl TJsValue for HTMLAudioElement with to_js(self: HTMLAudioElement) -> JsValue = "%identity"


pub fn[T: THTMLAudioElement] HTMLAudioElement::into(self : HTMLAudioElement) -> T = "%identity"
pub impl THTMLAudioElement for HTMLAudioElement

pub fn HTMLAudioElement::new() -> HTMLAudioElement = "webapi_HTMLAudioElement" "new"

pub trait THTMLAudioElement: TJsValue + TTHTMLMediaElement {
}