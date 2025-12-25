// Do not edit. This file is generated.
// MoonBit type: HTMLDataElement
// Specifications: html.idl

///|
#external
pub type HTMLDataElement

///|
pub impl TJsValue for HTMLDataElement with to_js(self : HTMLDataElement) -> JsValue = "%identity"

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
extern "js" fn html_data_element_new_ffi() -> HTMLDataElement = "() => new HTMLDataElement()"

///|
pub fn HTMLDataElement::new() -> HTMLDataElement {
  html_data_element_new_ffi()
}

///|
pub trait THTMLDataElement: THTMLElement {
  value(self : Self) -> String = _
  set_value(self : Self, value : String) -> Unit = _
}

///|
extern "js" fn html_data_element_value_ffi(obj : JsValue) -> String = "(obj) => obj.value"

///|
impl THTMLDataElement with value(self : Self) -> String {
  html_data_element_value_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_data_element_set_value_ffi(
  obj : JsValue,
  value : JsValue,
) -> Unit = "(obj, value) => { obj.value = value; }"

///|
impl THTMLDataElement with set_value(self : Self, value : String) -> Unit {
  html_data_element_set_value_ffi(TJsValue::to_js(self), TJsValue::to_js(value))
}
