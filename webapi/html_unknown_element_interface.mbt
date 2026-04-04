// Do not edit. This file is generated.
// MoonBit type: HTMLUnknownElement
// Specifications: html.idl

///|
/// [HTMLUnknownElement](https://developer.mozilla.org/en-US/docs/Web/API/HTMLUnknownElement)
#external
pub type HTMLUnknownElement

///|
pub impl TJsValue for HTMLUnknownElement with to_js(self : HTMLUnknownElement) -> JsValue = "%identity"

///|
pub impl FromJsAny for HTMLUnknownElement with from_js_any(value : JsAny) -> HTMLUnknownElement = "%identity"

///|
/// Unchecked downcast — no runtime type check is performed.
/// Prefer `try_into()` for checked downcasts.
#deprecated("Use unsafe_into or try_into instead")
pub fn[T : THTMLUnknownElement] HTMLUnknownElement::into(
  self : HTMLUnknownElement,
) -> T = "%identity"

///|
/// Unchecked downcast — no runtime type check is performed.
/// WARNING: If the underlying JS value is not of type T, this will silently
/// produce a value with incorrect type, leading to undefined behavior.
pub fn[T : THTMLUnknownElement] HTMLUnknownElement::unsafe_into(
  self : HTMLUnknownElement,
) -> T = "%identity"

///|
pub impl HasConstructor for HTMLUnknownElement with constructor_name() {
  "HTMLUnknownElement"
}

///|
/// Checked downcast — returns None if the JS value is not an instance of T.
pub fn[T : THTMLUnknownElement + HasConstructor] HTMLUnknownElement::try_into(
  self : HTMLUnknownElement,
) -> T? {
  if js_instanceof(TJsValue::to_js(self), T::constructor_name()) {
    Some(self.unsafe_into())
  } else {
    None
  }
}

///|
pub impl THTMLUnknownElement for HTMLUnknownElement

///|
pub impl THTMLElement for HTMLUnknownElement

///|
pub impl TElement for HTMLUnknownElement

///|
pub impl TNode for HTMLUnknownElement

///|
pub impl TEventTarget for HTMLUnknownElement

///|
/// [HTMLUnknownElement](https://developer.mozilla.org/en-US/docs/Web/API/HTMLUnknownElement) interface.
pub trait THTMLUnknownElement: THTMLElement {}
