// Do not edit. This file is generated.
// MoonBit type: HTMLBaseElement
// Specifications: html.idl

///|
/// [HTMLBaseElement](https://developer.mozilla.org/en-US/docs/Web/API/HTMLBaseElement)
#external
pub type HTMLBaseElement

///|
pub impl TJsValue for HTMLBaseElement with to_js(self : HTMLBaseElement) -> JsValue = "%identity"

///|
pub fn[T : THTMLBaseElement] HTMLBaseElement::into(self : HTMLBaseElement) -> T = "%identity"

///|
pub impl THTMLBaseElement for HTMLBaseElement

///|
pub impl THTMLElement for HTMLBaseElement

///|
pub impl TElement for HTMLBaseElement

///|
pub impl TNode for HTMLBaseElement

///|
pub impl TEventTarget for HTMLBaseElement

///|
extern "js" fn html_base_element_new_ffi() -> HTMLBaseElement = "() => new HTMLBaseElement()"

///|
pub fn HTMLBaseElement::new() -> HTMLBaseElement {
  html_base_element_new_ffi()
}

///|
/// [HTMLBaseElement](https://developer.mozilla.org/en-US/docs/Web/API/HTMLBaseElement) interface.
pub trait THTMLBaseElement: THTMLElement {
  href(self : Self) -> String = _
  set_href(self : Self, href : String) -> Unit = _
  target(self : Self) -> String = _
  set_target(self : Self, target : String) -> Unit = _
}

///|
extern "js" fn html_base_element_href_ffi(obj : JsValue) -> String = "(obj) => obj.href"

///|
/// [HTMLBaseElement.href](https://developer.mozilla.org/en-US/docs/Web/API/HTMLBaseElement/href)
impl THTMLBaseElement with href(self : Self) -> String {
  html_base_element_href_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_base_element_set_href_ffi(
  obj : JsValue,
  href : JsValue,
) -> Unit = "(obj, href) => { obj.href = href; }"

///|
/// [HTMLBaseElement.href](https://developer.mozilla.org/en-US/docs/Web/API/HTMLBaseElement/href)
impl THTMLBaseElement with set_href(self : Self, href : String) -> Unit {
  html_base_element_set_href_ffi(TJsValue::to_js(self), TJsValue::to_js(href))
}

///|
extern "js" fn html_base_element_target_ffi(obj : JsValue) -> String = "(obj) => obj.target"

///|
/// [HTMLBaseElement.target](https://developer.mozilla.org/en-US/docs/Web/API/HTMLBaseElement/target)
impl THTMLBaseElement with target(self : Self) -> String {
  html_base_element_target_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_base_element_set_target_ffi(
  obj : JsValue,
  target : JsValue,
) -> Unit = "(obj, target) => { obj.target = target; }"

///|
/// [HTMLBaseElement.target](https://developer.mozilla.org/en-US/docs/Web/API/HTMLBaseElement/target)
impl THTMLBaseElement with set_target(self : Self, target : String) -> Unit {
  html_base_element_set_target_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(target),
  )
}
