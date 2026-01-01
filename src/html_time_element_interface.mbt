// Do not edit. This file is generated.
// MoonBit type: HTMLTimeElement
// Specifications: html.idl

///|
#external
pub type HTMLTimeElement

///|
pub impl TJsValue for HTMLTimeElement with to_js(self : HTMLTimeElement) -> JsValue = "%identity"

///|
pub fn[T : THTMLTimeElement] HTMLTimeElement::into(self : HTMLTimeElement) -> T = "%identity"

///|
pub impl THTMLTimeElement for HTMLTimeElement

///|
pub impl THTMLElement for HTMLTimeElement

///|
pub impl TElement for HTMLTimeElement

///|
pub impl TNode for HTMLTimeElement

///|
pub impl TEventTarget for HTMLTimeElement

///|
extern "js" fn html_time_element_new_ffi() -> HTMLTimeElement = "() => new HTMLTimeElement()"

///|
pub fn HTMLTimeElement::new() -> HTMLTimeElement {
  html_time_element_new_ffi()
}

///|
pub trait THTMLTimeElement: THTMLElement {
  date_time(self : Self) -> String = _
  set_date_time(self : Self, date_time : String) -> Unit = _
}

///|
extern "js" fn html_time_element_date_time_ffi(obj : JsValue) -> String = "(obj) => obj.dateTime"

///|
impl THTMLTimeElement with date_time(self : Self) -> String {
  html_time_element_date_time_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_time_element_set_date_time_ffi(
  obj : JsValue,
  date_time : JsValue,
) -> Unit = "(obj, dateTime) => { obj.dateTime = date_time; }"

///|
impl THTMLTimeElement with set_date_time(self : Self, date_time : String) -> Unit {
  html_time_element_set_date_time_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(date_time),
  )
}
