// Do not edit. This file is generated.
// MoonBit type: HTMLLabelElement
// Specifications: html.idl

///|
#external
pub type HTMLLabelElement

///|
pub impl TJsValue for HTMLLabelElement with to_js(self : HTMLLabelElement) -> JsValue = "%identity"

///|
pub fn[T : THTMLLabelElement] HTMLLabelElement::into(
  self : HTMLLabelElement,
) -> T = "%identity"

///|
pub impl THTMLLabelElement for HTMLLabelElement

///|
pub impl THTMLElement for HTMLLabelElement

///|
pub impl TElement for HTMLLabelElement

///|
pub impl TNode for HTMLLabelElement

///|
pub impl TEventTarget for HTMLLabelElement

///|
extern "js" fn html_label_element_new_ffi() -> HTMLLabelElement = "() => new HTMLLabelElement()"

///|
pub fn HTMLLabelElement::new() -> HTMLLabelElement {
  html_label_element_new_ffi()
}

///|
pub trait THTMLLabelElement: THTMLElement {
  form(self : Self) -> HTMLFormElement = _
  html_for(self : Self) -> String = _
  set_html_for(self : Self, html_for : String) -> Unit = _
  control(self : Self) -> HTMLElement = _
}

///|
extern "js" fn html_label_element_form_ffi(obj : JsValue) -> HTMLFormElement = "(obj) => obj.form"

///|
impl THTMLLabelElement with form(self : Self) -> HTMLFormElement {
  html_label_element_form_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_label_element_html_for_ffi(obj : JsValue) -> String = "(obj) => obj.htmlFor"

///|
impl THTMLLabelElement with html_for(self : Self) -> String {
  html_label_element_html_for_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_label_element_set_html_for_ffi(
  obj : JsValue,
  html_for : JsValue,
) -> Unit = "(obj, htmlFor) => { obj.htmlFor = html_for; }"

///|
impl THTMLLabelElement with set_html_for(self : Self, html_for : String) -> Unit {
  html_label_element_set_html_for_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(html_for),
  )
}

///|
extern "js" fn html_label_element_control_ffi(obj : JsValue) -> HTMLElement = "(obj) => obj.control"

///|
impl THTMLLabelElement with control(self : Self) -> HTMLElement {
  html_label_element_control_ffi(TJsValue::to_js(self))
}
