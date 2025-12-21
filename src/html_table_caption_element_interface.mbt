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
extern "js" fn html_table_caption_element_ffi() -> HTMLTableCaptionElement = "() => new HTMLTableCaptionElement()"

///|
pub fn HTMLTableCaptionElement::new() -> HTMLTableCaptionElement {
  html_table_caption_element_ffi()
}

///|
pub trait THTMLTableCaptionElement: THTMLElement {}
