// Do not edit. This file is generated.
// MoonBit type: HTMLSelectedContentElement
// Specifications: html.idl

///|
/// [HTMLSelectedContentElement](https://developer.mozilla.org/en-US/docs/Web/API/HTMLSelectedContentElement)
#external
pub type HTMLSelectedContentElement

///|
pub impl TJsValue for HTMLSelectedContentElement with to_js(
  self : HTMLSelectedContentElement,
) -> JsValue = "%identity"

///|
pub impl FromJsAny for HTMLSelectedContentElement with from_js_any(
  value : JsAny,
) -> HTMLSelectedContentElement = "%identity"

///|
/// Unchecked downcast — no runtime type check is performed.
/// Prefer `try_into()` for checked downcasts.
#deprecated("Use unsafe_into or try_into instead")
pub fn[T : THTMLSelectedContentElement] HTMLSelectedContentElement::into(
  self : HTMLSelectedContentElement,
) -> T = "%identity"

///|
/// Unchecked downcast — no runtime type check is performed.
/// WARNING: If the underlying JS value is not of type T, this will silently
/// produce a value with incorrect type, leading to undefined behavior.
pub fn[T : THTMLSelectedContentElement] HTMLSelectedContentElement::unsafe_into(
  self : HTMLSelectedContentElement,
) -> T = "%identity"

///|
pub impl HasConstructor for HTMLSelectedContentElement with constructor_name() {
  "HTMLSelectedContentElement"
}

///|
/// Checked downcast — returns None if the JS value is not an instance of T.
pub fn[T : THTMLSelectedContentElement + HasConstructor] HTMLSelectedContentElement::try_into(
  self : HTMLSelectedContentElement,
) -> T? {
  if js_instanceof(TJsValue::to_js(self), T::constructor_name()) {
    Some(self.unsafe_into())
  } else {
    None
  }
}

///|
pub impl THTMLSelectedContentElement for HTMLSelectedContentElement

///|
pub impl THTMLElement for HTMLSelectedContentElement

///|
pub impl TElement for HTMLSelectedContentElement

///|
pub impl TNode for HTMLSelectedContentElement

///|
pub impl TEventTarget for HTMLSelectedContentElement

///|
pub fn HTMLSelectedContentElement::new() -> HTMLSelectedContentElement {
  html_selected_content_element_new_ffi()
}

///|
/// [HTMLSelectedContentElement](https://developer.mozilla.org/en-US/docs/Web/API/HTMLSelectedContentElement) interface.
pub trait THTMLSelectedContentElement: THTMLElement {}

///|
#cfg(target="js")
extern "js" fn html_selected_content_element_new_ffi() -> HTMLSelectedContentElement = "() => new HTMLSelectedContentElement()"

///|
#cfg(target="wasm-gc")
fn html_selected_content_element_new_ffi() -> HTMLSelectedContentElement = "webapi_HTMLSelectedContentElement" "new"
