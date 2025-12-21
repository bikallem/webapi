///|
#external
pub type HTMLFontElement

///|
pub impl TJsValue for HTMLFontElement with to_js(self : HTMLFontElement) -> JsValue = "%identity"

///|
pub fn[T : THTMLFontElement] HTMLFontElement::into(self : HTMLFontElement) -> T = "%identity"

///|
pub impl THTMLFontElement for HTMLFontElement

///|
pub impl THTMLElement for HTMLFontElement

///|
pub impl TElement for HTMLFontElement

///|
pub impl TNode for HTMLFontElement

///|
pub impl TEventTarget for HTMLFontElement

///|
extern "js" fn html_font_element_ffi() -> HTMLFontElement = "() => new HTMLFontElement()"

///|
pub fn HTMLFontElement::new() -> HTMLFontElement {
  html_font_element_ffi()
}

///|
pub trait THTMLFontElement: THTMLElement {}
