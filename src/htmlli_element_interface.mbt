// Do not edit. This file is generated.
// MoonBit type: HTMLLIElement
// Specifications: html.idl

///|
/// [HTMLLIElement](https://developer.mozilla.org/en-US/docs/Web/API/HTMLLIElement)
#external
pub type HTMLLIElement

///|
pub impl TJsValue for HTMLLIElement with to_js(self : HTMLLIElement) -> JsValue = "%identity"

///|
pub fn[T : THTMLLIElement] HTMLLIElement::into(self : HTMLLIElement) -> T = "%identity"

///|
pub impl THTMLLIElement for HTMLLIElement

///|
pub impl THTMLElement for HTMLLIElement

///|
pub impl TElement for HTMLLIElement

///|
pub impl TNode for HTMLLIElement

///|
pub impl TEventTarget for HTMLLIElement

///|
pub fn HTMLLIElement::new() -> HTMLLIElement {
  htmlli_element_new_ffi()
}

///|
/// [HTMLLIElement](https://developer.mozilla.org/en-US/docs/Web/API/HTMLLIElement) interface.
pub trait THTMLLIElement: THTMLElement {
  value(self : Self) -> Int = _
  set_value(self : Self, value : Int) -> Unit = _
  type_(self : Self) -> String = _
  set_type_(self : Self, type_ : String) -> Unit = _
}

///|
/// [HTMLLIElement.value](https://developer.mozilla.org/en-US/docs/Web/API/HTMLLIElement/value)
impl THTMLLIElement with value(self : Self) -> Int {
  htmlli_element_value_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLLIElement.value](https://developer.mozilla.org/en-US/docs/Web/API/HTMLLIElement/value)
impl THTMLLIElement with set_value(self : Self, value : Int) -> Unit {
  htmlli_element_set_value_ffi(TJsValue::to_js(self), TJsValue::to_js(value))
}

///|
/// [HTMLLIElement.type](https://developer.mozilla.org/en-US/docs/Web/API/HTMLLIElement/type)
impl THTMLLIElement with type_(self : Self) -> String {
  htmlli_element_type_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLLIElement.type](https://developer.mozilla.org/en-US/docs/Web/API/HTMLLIElement/type)
impl THTMLLIElement with set_type_(self : Self, type_ : String) -> Unit {
  htmlli_element_set_type_ffi(TJsValue::to_js(self), TJsValue::to_js(type_))
}
