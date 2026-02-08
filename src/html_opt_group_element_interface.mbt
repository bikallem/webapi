// Do not edit. This file is generated.
// MoonBit type: HTMLOptGroupElement
// Specifications: html.idl

///|
/// [HTMLOptGroupElement](https://developer.mozilla.org/en-US/docs/Web/API/HTMLOptGroupElement)
#external
pub type HTMLOptGroupElement

///|
pub impl TJsValue for HTMLOptGroupElement with to_js(self : HTMLOptGroupElement) -> JsValue = "%identity"

///|
pub fn[T : THTMLOptGroupElement] HTMLOptGroupElement::into(
  self : HTMLOptGroupElement,
) -> T = "%identity"

///|
pub impl THTMLOptGroupElement for HTMLOptGroupElement

///|
pub impl THTMLElement for HTMLOptGroupElement

///|
pub impl TElement for HTMLOptGroupElement

///|
pub impl TNode for HTMLOptGroupElement

///|
pub impl TEventTarget for HTMLOptGroupElement

///|
pub fn HTMLOptGroupElement::new() -> HTMLOptGroupElement {
  html_opt_group_element_new_ffi()
}

///|
/// [HTMLOptGroupElement](https://developer.mozilla.org/en-US/docs/Web/API/HTMLOptGroupElement) interface.
pub trait THTMLOptGroupElement: THTMLElement {
  disabled(self : Self) -> Bool = _
  set_disabled(self : Self, disabled : Bool) -> Unit = _
  label(self : Self) -> String = _
  set_label(self : Self, label : String) -> Unit = _
}

///|
/// [HTMLOptGroupElement.disabled](https://developer.mozilla.org/en-US/docs/Web/API/HTMLOptGroupElement/disabled)
impl THTMLOptGroupElement with disabled(self : Self) -> Bool {
  html_opt_group_element_disabled_ffi(TJsValue::to_js(self)).unsafe_cast()
}

///|
/// [HTMLOptGroupElement.disabled](https://developer.mozilla.org/en-US/docs/Web/API/HTMLOptGroupElement/disabled)
impl THTMLOptGroupElement with set_disabled(self : Self, disabled : Bool) -> Unit {
  html_opt_group_element_set_disabled_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(disabled),
  )
}

///|
/// [HTMLOptGroupElement.label](https://developer.mozilla.org/en-US/docs/Web/API/HTMLOptGroupElement/label)
impl THTMLOptGroupElement with label(self : Self) -> String {
  html_opt_group_element_label_ffi(TJsValue::to_js(self)).unsafe_cast()
}

///|
/// [HTMLOptGroupElement.label](https://developer.mozilla.org/en-US/docs/Web/API/HTMLOptGroupElement/label)
impl THTMLOptGroupElement with set_label(self : Self, label : String) -> Unit {
  html_opt_group_element_set_label_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(label),
  )
}
