// Do not edit. This file is generated.
// MoonBit type: HTMLTableCaptionElement
// Specifications: html.idl

///|
#external
pub type HTMLTableCaptionElement

///|
pub impl TJsValue for HTMLTableCaptionElement with to_js(
  self : HTMLTableCaptionElement,
) -> JsValue = "%identity"

///|
pub fn[T : THTMLTableCaptionElement] HTMLTableCaptionElement::into(
  self : HTMLTableCaptionElement,
) -> T = "%identity"

///|
pub impl THTMLTableCaptionElement for HTMLTableCaptionElement

///|
pub impl THTMLElement for HTMLTableCaptionElement

///|
pub impl TElement for HTMLTableCaptionElement

///|
pub impl TNode for HTMLTableCaptionElement

///|
pub impl TEventTarget for HTMLTableCaptionElement

///|
extern "js" fn html_table_caption_element_new_ffi() -> HTMLTableCaptionElement = "() => new HTMLTableCaptionElement()"

///|
pub fn HTMLTableCaptionElement::new() -> HTMLTableCaptionElement {
  html_table_caption_element_new_ffi()
}

///|
pub trait THTMLTableCaptionElement: THTMLElement {
  align(self : Self) -> String = _
  set_align(self : Self, align : String) -> Unit = _
}

///|
extern "js" fn html_table_caption_element_align_ffi(obj : JsValue) -> String = "(obj) => obj.align"

///|
impl THTMLTableCaptionElement with align(self : Self) -> String {
  html_table_caption_element_align_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_table_caption_element_set_align_ffi(
  obj : JsValue,
  align : JsValue,
) -> Unit = "(obj, align) => { obj.align = align; }"

///|
impl THTMLTableCaptionElement with set_align(self : Self, align : String) -> Unit {
  html_table_caption_element_set_align_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(align),
  )
}
