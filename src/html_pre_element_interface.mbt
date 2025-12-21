///|
#external
pub type HTMLPreElement

///|
pub impl TJsValue for HTMLPreElement with to_js(self : HTMLPreElement) -> JsValue = "%identity"

///|
pub fn[T : THTMLPreElement] HTMLPreElement::into(self : HTMLPreElement) -> T = "%identity"

///|
pub impl THTMLPreElement for HTMLPreElement

///|
pub impl THTMLElement for HTMLPreElement

///|
pub impl TElement for HTMLPreElement

///|
pub impl TNode for HTMLPreElement

///|
pub impl TEventTarget for HTMLPreElement

///|
extern "js" fn html_pre_element_ffi() -> HTMLPreElement = "() => new HTMLPreElement()"

///|
pub fn HTMLPreElement::new() -> HTMLPreElement {
  html_pre_element_ffi()
}

///|
pub trait THTMLPreElement: THTMLElement {}
