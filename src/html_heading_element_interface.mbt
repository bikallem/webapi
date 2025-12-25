// Do not edit. This file is generated.
// MoonBit type: HTMLHeadingElement
// Specifications: html.idl

///|
#external
pub type HTMLHeadingElement

///|
pub impl TJsValue for HTMLHeadingElement with to_js(self : HTMLHeadingElement) -> JsValue = "%identity"

///|
pub fn[T : THTMLHeadingElement] HTMLHeadingElement::into(
  self : HTMLHeadingElement,
) -> T = "%identity"

///|
pub impl THTMLHeadingElement for HTMLHeadingElement

///|
pub impl THTMLElement for HTMLHeadingElement

///|
pub impl TElement for HTMLHeadingElement

///|
pub impl TNode for HTMLHeadingElement

///|
pub impl TEventTarget for HTMLHeadingElement

///|
extern "js" fn html_heading_element_new_ffi() -> HTMLHeadingElement = "() => new HTMLHeadingElement()"

///|
pub fn HTMLHeadingElement::new() -> HTMLHeadingElement {
  html_heading_element_new_ffi()
}

///|
pub trait THTMLHeadingElement: THTMLElement {
  align(self : Self) -> String = _
  set_align(self : Self, align : String) -> Unit = _
}

///|
extern "js" fn html_heading_element_align_ffi(obj : JsValue) -> String = "(obj) => obj.align"

///|
impl THTMLHeadingElement with align(self : Self) -> String {
  html_heading_element_align_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_heading_element_set_align_ffi(
  obj : JsValue,
  align : JsValue,
) -> Unit = "(obj, align) => { obj.align = align; }"

///|
impl THTMLHeadingElement with set_align(self : Self, align : String) -> Unit {
  html_heading_element_set_align_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(align),
  )
}
