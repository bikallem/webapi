///|
#external
pub type HTMLScriptElement

///|
pub impl TJsValue for HTMLScriptElement with to_js(self : HTMLScriptElement) -> JsValue = "%identity"

///|
pub fn[T : THTMLScriptElement] HTMLScriptElement::into(
  self : HTMLScriptElement,
) -> T = "%identity"

///|
pub impl THTMLScriptElement for HTMLScriptElement

///|
pub impl THTMLElement for HTMLScriptElement

///|
pub impl TElement for HTMLScriptElement

///|
pub impl TNode for HTMLScriptElement

///|
pub impl TEventTarget for HTMLScriptElement

///|
extern "js" fn html_script_element_new_ffi() -> HTMLScriptElement = "() => new HTMLScriptElement()"

///|
pub fn HTMLScriptElement::new() -> HTMLScriptElement {
  html_script_element_new_ffi()
}

///|
pub trait THTMLScriptElement: THTMLElement {}
