///|
#external
pub type HTMLParamElement

///|
pub impl TJsValue for HTMLParamElement with to_js(self : HTMLParamElement) -> JsValue = "%identity"

///|
pub fn[T : THTMLParamElement] HTMLParamElement::into(
  self : HTMLParamElement,
) -> T = "%identity"

///|
pub impl THTMLParamElement for HTMLParamElement

///|
pub impl THTMLElement for HTMLParamElement

///|
pub impl TElement for HTMLParamElement

///|
pub impl TNode for HTMLParamElement

///|
pub impl TEventTarget for HTMLParamElement

///|
extern "js" fn html_param_element_ffi() -> HTMLParamElement = "() => new HTMLParamElement()"

///|
pub fn HTMLParamElement::new() -> HTMLParamElement {
  html_param_element_ffi()
}

///|
pub trait THTMLParamElement: THTMLElement {}
