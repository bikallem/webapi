// Do not edit. This file is generated.
// MoonBit type: HTMLMapElement
// Specifications: html.idl

///|
/// [HTMLMapElement](https://developer.mozilla.org/en-US/docs/Web/API/HTMLMapElement)
#external
pub type HTMLMapElement

///|
pub impl TJsValue for HTMLMapElement with to_js(self : HTMLMapElement) -> JsValue = "%identity"

///|
pub fn[T : THTMLMapElement] HTMLMapElement::into(self : HTMLMapElement) -> T = "%identity"

///|
pub impl THTMLMapElement for HTMLMapElement

///|
pub impl THTMLElement for HTMLMapElement

///|
pub impl TElement for HTMLMapElement

///|
pub impl TNode for HTMLMapElement

///|
pub impl TEventTarget for HTMLMapElement

///|
pub fn HTMLMapElement::new() -> HTMLMapElement {
  html_map_element_new_ffi()
}

///|
/// [HTMLMapElement](https://developer.mozilla.org/en-US/docs/Web/API/HTMLMapElement) interface.
pub trait THTMLMapElement: THTMLElement {
  name(self : Self) -> String = _
  set_name(self : Self, name : String) -> Unit = _
  areas(self : Self) -> HTMLCollection = _
}

///|
/// [HTMLMapElement.name](https://developer.mozilla.org/en-US/docs/Web/API/HTMLMapElement/name)
impl THTMLMapElement with name(self : Self) -> String {
  html_map_element_name_ffi(TJsValue::to_js(self)).unsafe_cast()
}

///|
/// [HTMLMapElement.name](https://developer.mozilla.org/en-US/docs/Web/API/HTMLMapElement/name)
impl THTMLMapElement with set_name(self : Self, name : String) -> Unit {
  html_map_element_set_name_ffi(TJsValue::to_js(self), TJsValue::to_js(name))
}

///|
/// [HTMLMapElement.areas](https://developer.mozilla.org/en-US/docs/Web/API/HTMLMapElement/areas)
impl THTMLMapElement with areas(self : Self) -> HTMLCollection {
  html_map_element_areas_ffi(TJsValue::to_js(self)).unsafe_cast()
}
