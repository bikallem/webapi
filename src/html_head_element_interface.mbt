// Do not edit. This file is generated.
// MoonBit type: HTMLHeadElement
// Specifications: html.idl

/// [HTMLHeadElement](https://developer.mozilla.org/en-US/docs/Web/API/HTMLHeadElement)
#external
pub type HTMLHeadElement

pub impl TJsValue for HTMLHeadElement with to_js(self: HTMLHeadElement) -> JsValue = "%identity"

pub impl FromJsAny for HTMLHeadElement with from_js_any(value : JsAny) -> HTMLHeadElement = "%identity"

/// Unchecked downcast — no runtime type check is performed.
/// Prefer `try_into()` for checked downcasts.
#deprecated("Use unsafe_into or try_into instead")
pub fn[T: THTMLHeadElement] HTMLHeadElement::into(self : HTMLHeadElement) -> T = "%identity"

/// Unchecked downcast — no runtime type check is performed.
/// WARNING: If the underlying JS value is not of type T, this will silently
/// produce a value with incorrect type, leading to undefined behavior.
pub fn[T: THTMLHeadElement] HTMLHeadElement::unsafe_into(self : HTMLHeadElement) -> T = "%identity"

pub impl HasConstructor for HTMLHeadElement with constructor_name() { "HTMLHeadElement" }

/// Checked downcast — returns None if the JS value is not an instance of T.
pub fn[T : THTMLHeadElement + HasConstructor] HTMLHeadElement::try_into(self : HTMLHeadElement) -> T? {
  if js_instanceof(TJsValue::to_js(self), T::constructor_name()) {
    Some(self.unsafe_into())
  } else {
    None
  }
}

pub impl THTMLHeadElement for HTMLHeadElement

pub impl THTMLElement for HTMLHeadElement

pub impl TElement for HTMLHeadElement

pub impl TNode for HTMLHeadElement

pub impl TEventTarget for HTMLHeadElement

pub fn HTMLHeadElement::new() -> HTMLHeadElement {
  html_head_element_new_ffi()
}

/// [HTMLHeadElement](https://developer.mozilla.org/en-US/docs/Web/API/HTMLHeadElement) interface.
pub trait THTMLHeadElement: THTMLElement {

}



#cfg(target="js")
extern "js" fn html_head_element_new_ffi() -> HTMLHeadElement = "() => new HTMLHeadElement()"

#cfg(target="wasm-gc")
fn html_head_element_new_ffi() -> HTMLHeadElement = "webapi_HTMLHeadElement" "new"