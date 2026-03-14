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
/// Unchecked downcast — no runtime type check is performed.
/// Prefer `try_into()` for checked downcasts.
#deprecated("Use unsafe_into or try_into instead")
pub fn[T : THTMLPictureElement] HTMLPictureElement::into(
  self : HTMLPictureElement,
) -> T = "%identity"

///|
/// Unchecked downcast — no runtime type check is performed.
/// WARNING: If the underlying JS value is not of type T, this will silently
/// produce a value with incorrect type, leading to undefined behavior.
pub fn[T : THTMLPictureElement] HTMLPictureElement::unsafe_into(
  self : HTMLPictureElement,
) -> T = "%identity"

///|
pub impl HasConstructor for HTMLPictureElement with constructor_name() {
  "HTMLPictureElement"
}

///|
/// Checked downcast — returns None if the JS value is not an instance of T.
pub fn[T : THTMLPictureElement + HasConstructor] HTMLPictureElement::try_into(
  self : HTMLPictureElement,
) -> T? {
  if js_instanceof(TJsValue::to_js(self), T::constructor_name()) {
    Some(self.unsafe_into())
  } else {
    None
  }
}

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
