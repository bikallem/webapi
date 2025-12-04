// Auto-generated MoonBit bindings for HTMLAudioElement

// Do not edit manually

//
// WebIDL Interface:
// [Exposed=Window,
//  LegacyFactoryFunction=Audio(optional DOMString src)]
// interface HTMLAudioElement : HTMLMediaElement {
//   [HTMLConstructor] constructor();
// };

///|
#external
pub type HTMLAudioElement

///|
pub trait THTMLAudioElement: TJsValue {}

///|
pub impl THTMLAudioElement for HTMLAudioElement

///|
pub impl TJsValue for HTMLAudioElement with to_js(self : HTMLAudioElement) -> JsValue = "%identity"

///|
pub fn HTMLAudioElement::new() -> HTMLAudioElement = "webapi_HTMLAudioElement" "new"
