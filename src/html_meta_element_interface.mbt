///|
#external
pub type HTMLMetaElement

///|
pub impl TJsValue for HTMLMetaElement with to_js(self : HTMLMetaElement) -> JsValue = "%identity"

///|
pub fn[T : THTMLMetaElement] HTMLMetaElement::into(self : HTMLMetaElement) -> T = "%identity"

///|
pub impl THTMLMetaElement for HTMLMetaElement

///|
pub impl THTMLElement for HTMLMetaElement

///|
pub impl TElement for HTMLMetaElement

///|
pub impl TNode for HTMLMetaElement

///|
pub impl TEventTarget for HTMLMetaElement

///|
extern "js" fn html_meta_element_new_ffi() -> HTMLMetaElement = "() => new HTMLMetaElement()"

///|
pub fn HTMLMetaElement::new() -> HTMLMetaElement {
  html_meta_element_new_ffi()
}

///|
pub trait THTMLMetaElement: THTMLElement {}
