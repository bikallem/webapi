// Do not edit. This file is generated.
// MoonBit type: HTMLDataElement
// Specifications: html.idl

///|
/// [HTMLDataElement](https://developer.mozilla.org/en-US/docs/Web/API/HTMLDataElement)
#external
pub type HTMLDataElement

///|
pub impl TJsValue for HTMLDataElement with to_js(self : HTMLDataElement) -> JsValue = "%identity"

///|
pub impl FromJsAny for HTMLDataElement with from_js_any(value : JsAny) -> HTMLDataElement = "%identity"

///|
pub fn[T : THTMLDataElement] HTMLDataElement::into(self : HTMLDataElement) -> T = "%identity"

///|
pub impl THTMLDataElement for HTMLDataElement

///|
pub impl THTMLElement for HTMLDataElement

///|
pub impl TElement for HTMLDataElement

///|
pub impl TNode for HTMLDataElement

///|
pub impl TEventTarget for HTMLDataElement

///|
pub fn HTMLDataElement::new() -> HTMLDataElement {
  html_data_element_new_ffi()
}

///|
/// [HTMLDataElement](https://developer.mozilla.org/en-US/docs/Web/API/HTMLDataElement) interface.
pub trait THTMLDataElement: THTMLElement {
  value(self : Self) -> String = _
  set_value(self : Self, value : String) -> Unit = _
}

///|
/// [HTMLDataElement.value](https://developer.mozilla.org/en-US/docs/Web/API/HTMLDataElement/value)
impl THTMLDataElement with value(self : Self) -> String {
  html_data_element_value_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLDataElement.value](https://developer.mozilla.org/en-US/docs/Web/API/HTMLDataElement/value)
impl THTMLDataElement with set_value(self : Self, value : String) -> Unit {
  html_data_element_set_value_ffi(TJsValue::to_js(self), TJsValue::to_js(value))
}

///|
#cfg(target="js")
extern "js" fn html_data_element_new_ffi() -> HTMLDataElement = "() => new HTMLDataElement()"

///|
#cfg(target="js")
extern "js" fn html_data_element_value_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.value"

///|
#cfg(target="js")
fn html_data_element_value_ffi(obj : JsValue) -> String {
  html_data_element_value_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_data_element_set_value_ffi(
  obj : JsValue,
  value : JsValue,
) -> Unit = "(obj, value) => { obj.value = value; }"

///|
#cfg(target="wasm-gc")
fn html_data_element_new_ffi() -> HTMLDataElement = "webapi_HTMLDataElement" "new"

///|
#cfg(target="wasm-gc")
fn html_data_element_value_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLDataElement" "get_value"

///|
#cfg(target="wasm-gc")
fn html_data_element_value_ffi(obj : JsValue) -> String {
  jsvalue_to_string(html_data_element_value_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn html_data_element_set_value_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_HTMLDataElement" "set_value"
