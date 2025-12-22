///|
#external
pub type HTMLQuoteElement

///|
pub impl TJsValue for HTMLQuoteElement with to_js(self : HTMLQuoteElement) -> JsValue = "%identity"

///|
pub fn[T : THTMLQuoteElement] HTMLQuoteElement::into(
  self : HTMLQuoteElement,
) -> T = "%identity"

///|
pub impl THTMLQuoteElement for HTMLQuoteElement

///|
pub impl THTMLElement for HTMLQuoteElement

///|
pub impl TElement for HTMLQuoteElement

///|
pub impl TNode for HTMLQuoteElement

///|
pub impl TEventTarget for HTMLQuoteElement

///|
extern "js" fn html_quote_element_new_ffi() -> HTMLQuoteElement = "() => new HTMLQuoteElement()"

///|
pub fn HTMLQuoteElement::new() -> HTMLQuoteElement {
  html_quote_element_new_ffi()
}

///|
pub trait THTMLQuoteElement: THTMLElement {}
