///|
#external
pub type HTMLBRElement

///|
pub impl TJsValue for HTMLBRElement with to_js(self : HTMLBRElement) -> JsValue = "%identity"

///|
pub fn[T : THTMLBRElement] HTMLBRElement::into(self : HTMLBRElement) -> T = "%identity"

///|
pub impl THTMLBRElement for HTMLBRElement

///|
pub impl THTMLElement for HTMLBRElement

///|
pub impl TElement for HTMLBRElement

///|
pub impl TNode for HTMLBRElement

///|
pub impl TEventTarget for HTMLBRElement

///|
extern "js" fn htmlbr_element_ffi() -> HTMLBRElement = "() => new HTMLBRElement()"

///|
pub fn HTMLBRElement::new() -> HTMLBRElement {
  htmlbr_element_ffi()
}

///|
pub trait THTMLBRElement: THTMLElement {}
