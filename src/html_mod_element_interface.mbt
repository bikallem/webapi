// Do not edit. This file is generated.
// MoonBit type: HTMLModElement
// Specifications: html.idl

///|
#external
pub type HTMLModElement

///|
pub impl TJsValue for HTMLModElement with to_js(self : HTMLModElement) -> JsValue = "%identity"

///|
pub fn[T : THTMLModElement] HTMLModElement::into(self : HTMLModElement) -> T = "%identity"

///|
pub impl THTMLModElement for HTMLModElement

///|
pub impl THTMLElement for HTMLModElement

///|
pub impl TElement for HTMLModElement

///|
pub impl TNode for HTMLModElement

///|
pub impl TEventTarget for HTMLModElement

///|
extern "js" fn html_mod_element_new_ffi() -> HTMLModElement = "() => new HTMLModElement()"

///|
pub fn HTMLModElement::new() -> HTMLModElement {
  html_mod_element_new_ffi()
}

///|
pub trait THTMLModElement: THTMLElement {
  cite(self : Self) -> String = _
  set_cite(self : Self, cite : String) -> Unit = _
  date_time(self : Self) -> String = _
  set_date_time(self : Self, date_time : String) -> Unit = _
}

///|
extern "js" fn html_mod_element_cite_ffi(obj : JsValue) -> String = "(obj) => obj.cite"

///|
impl THTMLModElement with cite(self : Self) -> String {
  html_mod_element_cite_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_mod_element_set_cite_ffi(
  obj : JsValue,
  cite : JsValue,
) -> Unit = "(obj, cite) => { obj.cite = cite; }"

///|
impl THTMLModElement with set_cite(self : Self, cite : String) -> Unit {
  html_mod_element_set_cite_ffi(TJsValue::to_js(self), TJsValue::to_js(cite))
}

///|
extern "js" fn html_mod_element_date_time_ffi(obj : JsValue) -> String = "(obj) => obj.dateTime"

///|
impl THTMLModElement with date_time(self : Self) -> String {
  html_mod_element_date_time_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_mod_element_set_date_time_ffi(
  obj : JsValue,
  date_time : JsValue,
) -> Unit = "(obj, dateTime) => { obj.dateTime = date_time; }"

///|
impl THTMLModElement with set_date_time(self : Self, date_time : String) -> Unit {
  html_mod_element_set_date_time_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(date_time),
  )
}
