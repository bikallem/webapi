// Do not edit. This file is generated.
// MoonBit type: HTMLAudioElement
// Specifications: html.idl

/// [HTMLAudioElement](https://developer.mozilla.org/en-US/docs/Web/API/HTMLAudioElement)
#external
pub type HTMLAudioElement

pub impl TJsValue for HTMLAudioElement with to_js(self: HTMLAudioElement) -> JsValue = "%identity"

pub impl FromJsAny for HTMLAudioElement with from_js_any(value : JsAny) -> HTMLAudioElement = "%identity"

/// Unchecked downcast — no runtime type check is performed.
/// Prefer `try_into()` for checked downcasts.
#deprecated("Use unsafe_into or try_into instead")
pub fn[T: THTMLAudioElement] HTMLAudioElement::into(self : HTMLAudioElement) -> T = "%identity"

/// Unchecked downcast — no runtime type check is performed.
/// WARNING: If the underlying JS value is not of type T, this will silently
/// produce a value with incorrect type, leading to undefined behavior.
pub fn[T: THTMLAudioElement] HTMLAudioElement::unsafe_into(self : HTMLAudioElement) -> T = "%identity"

pub impl HasConstructor for HTMLAudioElement with constructor_name() { "HTMLAudioElement" }

/// Checked downcast — returns None if the JS value is not an instance of T.
pub fn[T : THTMLAudioElement + HasConstructor] HTMLAudioElement::try_into(self : HTMLAudioElement) -> T? {
  if js_instanceof(TJsValue::to_js(self), T::constructor_name()) {
    Some(self.unsafe_into())
  } else {
    None
  }
}

pub impl THTMLAudioElement for HTMLAudioElement

pub impl THTMLMediaElement for HTMLAudioElement

pub impl THTMLElement for HTMLAudioElement

pub impl TElement for HTMLAudioElement

pub impl TNode for HTMLAudioElement

pub impl TEventTarget for HTMLAudioElement

pub fn HTMLAudioElement::new() -> HTMLAudioElement {
  html_audio_element_new_ffi()
}

/// [HTMLAudioElement](https://developer.mozilla.org/en-US/docs/Web/API/HTMLAudioElement) interface.
pub trait THTMLAudioElement: THTMLMediaElement {

}



#cfg(target="js")
extern "js" fn html_audio_element_new_ffi() -> HTMLAudioElement = "() => new HTMLAudioElement()"

#cfg(target="wasm-gc")
fn html_audio_element_new_ffi() -> HTMLAudioElement = "webapi_HTMLAudioElement" "new"