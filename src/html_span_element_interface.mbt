// Do not edit. This file is generated.
// MoonBit type: HTMLSpanElement
// Specifications: html.idl

/// [HTMLSpanElement](https://developer.mozilla.org/en-US/docs/Web/API/HTMLSpanElement)
#external
pub type HTMLSpanElement

pub impl TJsValue for HTMLSpanElement with to_js(self: HTMLSpanElement) -> JsValue = "%identity"

pub impl FromJsAny for HTMLSpanElement with from_js_any(value : JsAny) -> HTMLSpanElement = "%identity"

/// Unchecked downcast — no runtime type check is performed.
/// Prefer `try_into()` for checked downcasts.
#deprecated("Use unsafe_into or try_into instead")
pub fn[T: THTMLSpanElement] HTMLSpanElement::into(self : HTMLSpanElement) -> T = "%identity"

/// Unchecked downcast — no runtime type check is performed.
/// WARNING: If the underlying JS value is not of type T, this will silently
/// produce a value with incorrect type, leading to undefined behavior.
pub fn[T: THTMLSpanElement] HTMLSpanElement::unsafe_into(self : HTMLSpanElement) -> T = "%identity"

pub impl HasConstructor for HTMLSpanElement with constructor_name() { "HTMLSpanElement" }

/// Checked downcast — returns None if the JS value is not an instance of T.
pub fn[T : THTMLSpanElement + HasConstructor] HTMLSpanElement::try_into(self : HTMLSpanElement) -> T? {
  if js_instanceof(TJsValue::to_js(self), T::constructor_name()) {
    Some(self.unsafe_into())
  } else {
    None
  }
}

pub impl THTMLSpanElement for HTMLSpanElement

pub impl THTMLElement for HTMLSpanElement

pub impl TElement for HTMLSpanElement

pub impl TNode for HTMLSpanElement

pub impl TEventTarget for HTMLSpanElement

pub fn HTMLSpanElement::new() -> HTMLSpanElement {
  html_span_element_new_ffi()
}

/// [HTMLSpanElement](https://developer.mozilla.org/en-US/docs/Web/API/HTMLSpanElement) interface.
pub trait THTMLSpanElement: THTMLElement {

}



#cfg(target="js")
extern "js" fn html_span_element_new_ffi() -> HTMLSpanElement = "() => new HTMLSpanElement()"

#cfg(target="wasm-gc")
fn html_span_element_new_ffi() -> HTMLSpanElement = "webapi_HTMLSpanElement" "new"