// Do not edit. This file is generated.
// MoonBit type: HTMLParagraphElement
// Specifications: html.idl

///|
#external
pub type HTMLParagraphElement

///|
pub impl TJsValue for HTMLParagraphElement with to_js(
  self : HTMLParagraphElement,
) -> JsValue = "%identity"

///|
pub fn[T : THTMLParagraphElement] HTMLParagraphElement::into(
  self : HTMLParagraphElement,
) -> T = "%identity"

///|
pub impl THTMLParagraphElement for HTMLParagraphElement

///|
pub impl THTMLElement for HTMLParagraphElement

///|
pub impl TElement for HTMLParagraphElement

///|
pub impl TNode for HTMLParagraphElement

///|
pub impl TEventTarget for HTMLParagraphElement

///|
extern "js" fn html_paragraph_element_new_ffi() -> HTMLParagraphElement = "() => new HTMLParagraphElement()"

///|
pub fn HTMLParagraphElement::new() -> HTMLParagraphElement {
  html_paragraph_element_new_ffi()
}

///|
pub trait THTMLParagraphElement: THTMLElement {
  align(self : Self) -> String = _
  set_align(self : Self, align : String) -> Unit = _
}

///|
extern "js" fn html_paragraph_element_align_ffi(obj : JsValue) -> String = "(obj) => obj.align"

///|
impl THTMLParagraphElement with align(self : Self) -> String {
  html_paragraph_element_align_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_paragraph_element_set_align_ffi(
  obj : JsValue,
  align : JsValue,
) -> Unit = "(obj, align) => { obj.align = align; }"

///|
impl THTMLParagraphElement with set_align(self : Self, align : String) -> Unit {
  html_paragraph_element_set_align_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(align),
  )
}
