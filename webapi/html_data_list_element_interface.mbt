// Do not edit. This file is generated.
// MoonBit type: HTMLDataListElement
// Specifications: html.idl

///|
/// [HTMLDataListElement](https://developer.mozilla.org/en-US/docs/Web/API/HTMLDataListElement)
#external
pub type HTMLDataListElement

///|
pub impl TJsValue for HTMLDataListElement with to_js(self : HTMLDataListElement) -> JsValue = "%identity"

///|
pub impl FromJsAny for HTMLDataListElement with from_js_any(value : JsAny) -> HTMLDataListElement = "%identity"

///|
/// Unchecked downcast — no runtime type check is performed.
/// Prefer `try_into()` for checked downcasts.
#deprecated("Use unsafe_into or try_into instead")
pub fn[T : THTMLDataListElement] HTMLDataListElement::into(
  self : HTMLDataListElement,
) -> T = "%identity"

///|
/// Unchecked downcast — no runtime type check is performed.
/// WARNING: If the underlying JS value is not of type T, this will silently
/// produce a value with incorrect type, leading to undefined behavior.
pub fn[T : THTMLDataListElement] HTMLDataListElement::unsafe_into(
  self : HTMLDataListElement,
) -> T = "%identity"

///|
pub impl HasConstructor for HTMLDataListElement with constructor_name() {
  "HTMLDataListElement"
}

///|
/// Checked downcast — returns None if the JS value is not an instance of T.
pub fn[T : THTMLDataListElement + HasConstructor] HTMLDataListElement::try_into(
  self : HTMLDataListElement,
) -> T? {
  if js_instanceof(TJsValue::to_js(self), T::constructor_name()) {
    Some(self.unsafe_into())
  } else {
    None
  }
}

///|
pub impl THTMLDataListElement for HTMLDataListElement

///|
pub impl THTMLElement for HTMLDataListElement

///|
pub impl TElement for HTMLDataListElement

///|
pub impl TNode for HTMLDataListElement

///|
pub impl TEventTarget for HTMLDataListElement

///|
pub fn HTMLDataListElement::new() -> HTMLDataListElement {
  html_data_list_element_new_ffi()
}

///|
/// [HTMLDataListElement](https://developer.mozilla.org/en-US/docs/Web/API/HTMLDataListElement) interface.
pub trait THTMLDataListElement: THTMLElement {
  options(self : Self) -> HTMLCollection = _
}

///|
/// [HTMLDataListElement.options](https://developer.mozilla.org/en-US/docs/Web/API/HTMLDataListElement/options)
impl THTMLDataListElement with options(self : Self) -> HTMLCollection {
  html_data_list_element_options_ffi(TJsValue::to_js(self))
}

///|
#cfg(target="js")
extern "js" fn html_data_list_element_new_ffi() -> HTMLDataListElement = "() => new HTMLDataListElement()"

///|
#cfg(target="js")
extern "js" fn html_data_list_element_options_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.options"

///|
#cfg(target="js")
fn html_data_list_element_options_ffi(obj : JsValue) -> HTMLCollection {
  html_data_list_element_options_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn html_data_list_element_new_ffi() -> HTMLDataListElement = "webapi_HTMLDataListElement" "new"

///|
#cfg(target="wasm-gc")
fn html_data_list_element_options_ffi(obj : JsValue) -> HTMLCollection = "webapi_HTMLDataListElement" "get_options"
