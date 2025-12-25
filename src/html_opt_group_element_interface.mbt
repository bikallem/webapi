// Do not edit. This file is generated.
// MoonBit type: HTMLOptGroupElement
// Specifications: html.idl

///|
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
extern "js" fn html_opt_group_element_new_ffi() -> HTMLOptGroupElement = "() => new HTMLOptGroupElement()"

///|
pub fn HTMLOptGroupElement::new() -> HTMLOptGroupElement {
  html_opt_group_element_new_ffi()
}

///|
pub trait THTMLOptGroupElement: THTMLElement {
  disabled(self : Self) -> Bool = _
  set_disabled(self : Self, disabled : Bool) -> Unit = _
  label(self : Self) -> String = _
  set_label(self : Self, label : String) -> Unit = _
}

///|
extern "js" fn html_opt_group_element_disabled_ffi(obj : JsValue) -> Bool = "(obj) => obj.disabled"

///|
impl THTMLOptGroupElement with disabled(self : Self) -> Bool {
  html_opt_group_element_disabled_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_opt_group_element_set_disabled_ffi(
  obj : JsValue,
  disabled : JsValue,
) -> Unit = "(obj, disabled) => { obj.disabled = disabled; }"

///|
impl THTMLOptGroupElement with set_disabled(self : Self, disabled : Bool) -> Unit {
  html_opt_group_element_set_disabled_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(disabled),
  )
}

///|
extern "js" fn html_opt_group_element_label_ffi(obj : JsValue) -> String = "(obj) => obj.label"

///|
impl THTMLOptGroupElement with label(self : Self) -> String {
  html_opt_group_element_label_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_opt_group_element_set_label_ffi(
  obj : JsValue,
  label : JsValue,
) -> Unit = "(obj, label) => { obj.label = label; }"

///|
impl THTMLOptGroupElement with set_label(self : Self, label : String) -> Unit {
  html_opt_group_element_set_label_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(label),
  )
}
