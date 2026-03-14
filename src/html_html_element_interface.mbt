// Do not edit. This file is generated.
// MoonBit type: HTMLHtmlElement
// Specifications: html.idl

///|
/// [HTMLHtmlElement](https://developer.mozilla.org/en-US/docs/Web/API/HTMLHtmlElement)
#external
pub type HTMLHtmlElement

///|
pub impl TJsValue for HTMLHtmlElement with to_js(self : HTMLHtmlElement) -> JsValue = "%identity"

///|
pub impl FromJsAny for HTMLHtmlElement with from_js_any(value : JsAny) -> HTMLHtmlElement = "%identity"

///|
pub fn[T : THTMLHtmlElement] HTMLHtmlElement::into(self : HTMLHtmlElement) -> T = "%identity"

///|
pub impl THTMLHtmlElement for HTMLHtmlElement

///|
pub impl THTMLElement for HTMLHtmlElement

///|
pub impl TElement for HTMLHtmlElement

///|
pub impl TNode for HTMLHtmlElement

///|
pub impl TEventTarget for HTMLHtmlElement

///|
pub fn HTMLHtmlElement::new() -> HTMLHtmlElement {
  html_html_element_new_ffi()
}

///|
/// [HTMLHtmlElement](https://developer.mozilla.org/en-US/docs/Web/API/HTMLHtmlElement) interface.
pub trait THTMLHtmlElement: THTMLElement {
  version(self : Self) -> String = _
  set_version(self : Self, version : String) -> Unit = _
}

///|
/// [HTMLHtmlElement.version](https://developer.mozilla.org/en-US/docs/Web/API/HTMLHtmlElement/version)
impl THTMLHtmlElement with version(self : Self) -> String {
  html_html_element_version_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLHtmlElement.version](https://developer.mozilla.org/en-US/docs/Web/API/HTMLHtmlElement/version)
impl THTMLHtmlElement with set_version(self : Self, version : String) -> Unit {
  html_html_element_set_version_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(version),
  )
}

///|
#cfg(target="js")
extern "js" fn html_html_element_new_ffi() -> HTMLHtmlElement = "() => new HTMLHtmlElement()"

///|
#cfg(target="js")
extern "js" fn html_html_element_version_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.version"

///|
#cfg(target="js")
fn html_html_element_version_ffi(obj : JsValue) -> String {
  html_html_element_version_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_html_element_set_version_ffi(
  obj : JsValue,
  version : JsValue,
) -> Unit = "(obj, version) => { obj.version = version; }"

///|
#cfg(target="wasm-gc")
fn html_html_element_new_ffi() -> HTMLHtmlElement = "webapi_HTMLHtmlElement" "new"

///|
#cfg(target="wasm-gc")
fn html_html_element_version_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLHtmlElement" "get_version"

///|
#cfg(target="wasm-gc")
fn html_html_element_version_ffi(obj : JsValue) -> String {
  jsvalue_to_string(html_html_element_version_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn html_html_element_set_version_ffi(obj : JsValue, version : JsValue) -> Unit = "webapi_HTMLHtmlElement" "set_version"
