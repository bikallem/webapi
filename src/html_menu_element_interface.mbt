///|
#external
pub type HTMLMenuElement

///|
pub impl TJsValue for HTMLMenuElement with to_js(self : HTMLMenuElement) -> JsValue = "%identity"

///|
pub fn[T : THTMLMenuElement] HTMLMenuElement::into(self : HTMLMenuElement) -> T = "%identity"

///|
pub impl THTMLMenuElement for HTMLMenuElement

///|
pub impl THTMLElement for HTMLMenuElement

///|
pub impl TElement for HTMLMenuElement

///|
pub impl TNode for HTMLMenuElement

///|
pub impl TEventTarget for HTMLMenuElement

///|
extern "js" fn html_menu_element_ffi() -> HTMLMenuElement = "() => new HTMLMenuElement()"

///|
pub fn HTMLMenuElement::new() -> HTMLMenuElement {
  html_menu_element_ffi()
}

///|
pub trait THTMLMenuElement: THTMLElement {}
