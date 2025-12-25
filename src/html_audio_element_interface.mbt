// Do not edit. This file is generated.
// MoonBit type: HTMLAudioElement
// Specifications: html.idl

///|
#external
pub type HTMLAudioElement

///|
pub impl TJsValue for HTMLAudioElement with to_js(self : HTMLAudioElement) -> JsValue = "%identity"

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
extern "js" fn html_audio_element_new_ffi() -> HTMLAudioElement = "() => new HTMLAudioElement()"

///|
pub fn HTMLAudioElement::new() -> HTMLAudioElement {
  html_audio_element_new_ffi()
}

///|
pub trait THTMLAudioElement: THTMLMediaElement {}
