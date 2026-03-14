// Do not edit. This file is generated.
// MoonBit type: HTMLTitleElement
// Specifications: html.idl

///|
/// [HTMLTitleElement](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTitleElement)
#external
pub type HTMLTitleElement

///|
pub impl TJsValue for HTMLTitleElement with to_js(self : HTMLTitleElement) -> JsValue = "%identity"

///|
pub impl FromJsAny for HTMLTitleElement with from_js_any(value : JsAny) -> HTMLTitleElement = "%identity"

///|
pub fn[T : THTMLTitleElement] HTMLTitleElement::into(
  self : HTMLTitleElement,
) -> T = "%identity"

///|
pub impl THTMLTitleElement for HTMLTitleElement

///|
pub impl THTMLElement for HTMLTitleElement

///|
pub impl TElement for HTMLTitleElement

///|
pub impl TNode for HTMLTitleElement

///|
pub impl TEventTarget for HTMLTitleElement

///|
pub fn HTMLTitleElement::new() -> HTMLTitleElement {
  html_title_element_new_ffi()
}

///|
/// [HTMLTitleElement](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTitleElement) interface.
pub trait THTMLTitleElement: THTMLElement {
  text(self : Self) -> String = _
  set_text(self : Self, text : String) -> Unit = _
}

///|
/// [HTMLTitleElement.text](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTitleElement/text)
impl THTMLTitleElement with text(self : Self) -> String {
  html_title_element_text_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLTitleElement.text](https://developer.mozilla.org/en-US/docs/Web/API/HTMLTitleElement/text)
impl THTMLTitleElement with set_text(self : Self, text : String) -> Unit {
  html_title_element_set_text_ffi(TJsValue::to_js(self), TJsValue::to_js(text))
}

///|
#cfg(target="js")
extern "js" fn html_title_element_new_ffi() -> HTMLTitleElement = "() => new HTMLTitleElement()"

///|
#cfg(target="js")
extern "js" fn html_title_element_text_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.text"

///|
#cfg(target="js")
fn html_title_element_text_ffi(obj : JsValue) -> String {
  html_title_element_text_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_title_element_set_text_ffi(
  obj : JsValue,
  text : JsValue,
) -> Unit = "(obj, text) => { obj.text = text; }"

///|
#cfg(target="wasm-gc")
fn html_title_element_new_ffi() -> HTMLTitleElement = "webapi_HTMLTitleElement" "new"

///|
#cfg(target="wasm-gc")
fn html_title_element_text_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLTitleElement" "get_text"

///|
#cfg(target="wasm-gc")
fn html_title_element_text_ffi(obj : JsValue) -> String {
  jsvalue_to_string(html_title_element_text_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn html_title_element_set_text_ffi(obj : JsValue, text : JsValue) -> Unit = "webapi_HTMLTitleElement" "set_text"
