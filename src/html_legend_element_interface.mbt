///|
#external
pub type HTMLLegendElement

///|
pub impl TJsValue for HTMLLegendElement with to_js(self : HTMLLegendElement) -> JsValue = "%identity"

///|
pub fn[T : THTMLLegendElement] HTMLLegendElement::into(
  self : HTMLLegendElement,
) -> T = "%identity"

///|
pub impl THTMLLegendElement for HTMLLegendElement

///|
pub impl THTMLElement for HTMLLegendElement

///|
pub impl TElement for HTMLLegendElement

///|
pub impl TNode for HTMLLegendElement

///|
pub impl TEventTarget for HTMLLegendElement

///|
extern "js" fn html_legend_element_new_ffi() -> HTMLLegendElement = "() => new HTMLLegendElement()"

///|
pub fn HTMLLegendElement::new() -> HTMLLegendElement {
  html_legend_element_new_ffi()
}

///|
pub trait THTMLLegendElement: THTMLElement {}
