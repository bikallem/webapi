// Do not edit. This file is generated.
// MoonBit type: HTMLAudioElement
// Specifications: html.idl

///|
/// [HTMLAudioElement](https://developer.mozilla.org/en-US/docs/Web/API/HTMLAudioElement)
#external
pub type HTMLAudioElement

///|
pub impl TJsValue for HTMLAudioElement with to_js(self : HTMLAudioElement) -> JsValue = "%identity"

///|
pub impl FromJsAny for HTMLAudioElement with from_js_any(value : JsAny) -> HTMLAudioElement = "%identity"

///|
pub fn[T : THTMLAudioElement] HTMLAudioElement::into(
  self : HTMLAudioElement,
) -> T = "%identity"

///|
pub impl THTMLAudioElement for HTMLAudioElement

///|
pub impl THTMLMediaElement for HTMLAudioElement

///|
pub impl THTMLElement for HTMLAudioElement

///|
pub impl TElement for HTMLAudioElement

///|
pub impl TNode for HTMLAudioElement

///|
pub impl TEventTarget for HTMLAudioElement

///|
pub fn HTMLAudioElement::new() -> HTMLAudioElement {
  html_audio_element_new_ffi()
}

///|
/// [HTMLAudioElement](https://developer.mozilla.org/en-US/docs/Web/API/HTMLAudioElement) interface.
pub trait THTMLAudioElement: THTMLMediaElement {}

///|
#cfg(target="js")
extern "js" fn html_audio_element_new_ffi() -> HTMLAudioElement = "() => new HTMLAudioElement()"

///|
#cfg(target="wasm-gc")
fn html_audio_element_new_ffi() -> HTMLAudioElement = "webapi_HTMLAudioElement" "new"
