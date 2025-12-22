///|
#external
pub type HTMLMapElement

///|
pub impl TJsValue for HTMLMapElement with to_js(self : HTMLMapElement) -> JsValue = "%identity"

///|
pub fn[T : THTMLMapElement] HTMLMapElement::into(self : HTMLMapElement) -> T = "%identity"

///|
pub impl THTMLMapElement for HTMLMapElement

///|
pub impl THTMLElement for HTMLMapElement

///|
pub impl TElement for HTMLMapElement

///|
pub impl TNode for HTMLMapElement

///|
pub impl TEventTarget for HTMLMapElement

///|
extern "js" fn html_map_element_new_ffi() -> HTMLMapElement = "() => new HTMLMapElement()"

///|
pub fn HTMLMapElement::new() -> HTMLMapElement {
  html_map_element_new_ffi()
}

///|
pub trait THTMLMapElement: THTMLElement {}
