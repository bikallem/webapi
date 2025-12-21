///|
#external
pub type HTMLOrSVGImageElement

///|
pub impl TJsValue for HTMLOrSVGImageElement with to_js(
  self : HTMLOrSVGImageElement,
) -> JsValue = "%identity"

///|
pub(open) trait THTMLOrSVGImageElement {
  to_js(self : Self) -> JsValue
}

///|
pub fn[T : THTMLOrSVGImageElement] HTMLOrSVGImageElement::into(
  self : HTMLOrSVGImageElement,
) -> T = "%identity"

///|
pub impl THTMLOrSVGImageElement for HTMLImageElement with to_js(
  self : HTMLImageElement,
) -> JsValue = "%identity"

///|
pub impl THTMLOrSVGImageElement for SVGImageElement with to_js(
  self : SVGImageElement,
) -> JsValue = "%identity"
