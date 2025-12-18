// Auto-generated MoonBit bindings for HTMLQuoteElement interface
// Do not edit manually

#external
pub type HTMLQuoteElement

pub impl TJsValue for HTMLQuoteElement with to_js(self: HTMLQuoteElement) -> JsValue = "%identity"


pub fn[T: THTMLQuoteElement] HTMLQuoteElement::into(self : HTMLQuoteElement) -> T = "%identity"
pub impl THTMLQuoteElement for HTMLQuoteElement

pub fn HTMLQuoteElement::new() -> HTMLQuoteElement = "webapi_HTMLQuoteElement" "new"

pub trait THTMLQuoteElement: TJsValue + TTHTMLElement {
  cite(self: Self) -> String = _
  set_cite(self: Self, value : String) -> Unit = _
}

///|
fn html_quote_element_cite_ffi(obj : JsValue) -> String = "webapi_HTMLQuoteElement" "cite"

///|
impl THTMLQuoteElement with cite(self : Self) -> String {
  html_quote_element_cite_ffi(self.to_js())
}

///|
fn html_quote_element_set_cite_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLQuoteElement" "set_cite"

///|
impl THTMLQuoteElement with set_cite(self : Self, value : String) -> Unit {
  html_quote_element_set_cite_ffi(self.to_js(), value)
}