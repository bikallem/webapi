// Auto-generated MoonBit bindings for HTMLOrSVGImageElement typedef

// Do not edit manually

//
// WebIDL Typedef:
// typedef (HTMLImageElement or
//          SVGImageElement) HTMLOrSVGImageElement;

///|
#external
pub type HTMLOrSVGImageElement

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
