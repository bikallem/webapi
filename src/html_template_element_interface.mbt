///|
#external
pub type HTMLTemplateElement

///|
pub impl TJsValue for HTMLTemplateElement with to_js(self : HTMLTemplateElement) -> JsValue = "%identity"

///|
pub fn[T : THTMLTemplateElement] HTMLTemplateElement::into(
  self : HTMLTemplateElement,
) -> T = "%identity"

///|
pub impl THTMLTemplateElement for HTMLTemplateElement

///|
pub impl THTMLElement for HTMLTemplateElement

///|
pub impl TElement for HTMLTemplateElement

///|
pub impl TNode for HTMLTemplateElement

///|
pub impl TEventTarget for HTMLTemplateElement

///|
extern "js" fn html_template_element_new_ffi() -> HTMLTemplateElement = "() => new HTMLTemplateElement()"

///|
pub fn HTMLTemplateElement::new() -> HTMLTemplateElement {
  html_template_element_new_ffi()
}

///|
pub trait THTMLTemplateElement: THTMLElement {}
