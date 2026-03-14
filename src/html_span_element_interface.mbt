// Do not edit. This file is generated.
// MoonBit type: HTMLSpanElement
// Specifications: html.idl

///|
/// [HTMLSpanElement](https://developer.mozilla.org/en-US/docs/Web/API/HTMLSpanElement)
#external
pub type HTMLSpanElement

///|
pub impl TJsValue for HTMLSpanElement with to_js(self : HTMLSpanElement) -> JsValue = "%identity"

///|
pub impl FromJsAny for HTMLSpanElement with from_js_any(value : JsAny) -> HTMLSpanElement = "%identity"

///|
pub fn[T : THTMLSpanElement] HTMLSpanElement::into(self : HTMLSpanElement) -> T = "%identity"

///|
pub impl THTMLSpanElement for HTMLSpanElement

///|
pub impl THTMLElement for HTMLSpanElement

///|
pub impl TElement for HTMLSpanElement

///|
pub impl TNode for HTMLSpanElement

///|
pub impl TEventTarget for HTMLSpanElement

///|
pub fn HTMLSpanElement::new() -> HTMLSpanElement {
  html_span_element_new_ffi()
}

///|
/// [HTMLSpanElement](https://developer.mozilla.org/en-US/docs/Web/API/HTMLSpanElement) interface.
pub trait THTMLSpanElement: THTMLElement {}

///|
#cfg(target="js")
extern "js" fn html_span_element_new_ffi() -> HTMLSpanElement = "() => new HTMLSpanElement()"

///|
#cfg(target="wasm-gc")
fn html_span_element_new_ffi() -> HTMLSpanElement = "webapi_HTMLSpanElement" "new"
