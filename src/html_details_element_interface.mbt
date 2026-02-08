// Do not edit. This file is generated.
// MoonBit type: HTMLDetailsElement
// Specifications: html.idl

///|
/// [HTMLDetailsElement](https://developer.mozilla.org/en-US/docs/Web/API/HTMLDetailsElement)
#external
pub type HTMLDetailsElement

///|
pub impl TJsValue for HTMLDetailsElement with to_js(self : HTMLDetailsElement) -> JsValue = "%identity"

///|
pub fn[T : THTMLDetailsElement] HTMLDetailsElement::into(
  self : HTMLDetailsElement,
) -> T = "%identity"

///|
pub impl THTMLDetailsElement for HTMLDetailsElement

///|
pub impl THTMLElement for HTMLDetailsElement

///|
pub impl TElement for HTMLDetailsElement

///|
pub impl TNode for HTMLDetailsElement

///|
pub impl TEventTarget for HTMLDetailsElement

///|
pub fn HTMLDetailsElement::new() -> HTMLDetailsElement {
  html_details_element_new_ffi()
}

///|
/// [HTMLDetailsElement](https://developer.mozilla.org/en-US/docs/Web/API/HTMLDetailsElement) interface.
pub trait THTMLDetailsElement: THTMLElement {
  name(self : Self) -> String = _
  set_name(self : Self, name : String) -> Unit = _
  open(self : Self) -> Bool = _
  set_open(self : Self, open : Bool) -> Unit = _
}

///|
/// [HTMLDetailsElement.name](https://developer.mozilla.org/en-US/docs/Web/API/HTMLDetailsElement/name)
impl THTMLDetailsElement with name(self : Self) -> String {
  html_details_element_name_ffi(TJsValue::to_js(self)).unsafe_cast()
}

///|
/// [HTMLDetailsElement.name](https://developer.mozilla.org/en-US/docs/Web/API/HTMLDetailsElement/name)
impl THTMLDetailsElement with set_name(self : Self, name : String) -> Unit {
  html_details_element_set_name_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(name),
  )
}

///|
/// [HTMLDetailsElement.open](https://developer.mozilla.org/en-US/docs/Web/API/HTMLDetailsElement/open)
impl THTMLDetailsElement with open(self : Self) -> Bool {
  html_details_element_open_ffi(TJsValue::to_js(self)).unsafe_cast()
}

///|
/// [HTMLDetailsElement.open](https://developer.mozilla.org/en-US/docs/Web/API/HTMLDetailsElement/open)
impl THTMLDetailsElement with set_open(self : Self, open : Bool) -> Unit {
  html_details_element_set_open_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(open),
  )
}
