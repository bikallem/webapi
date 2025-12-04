// Auto-generated MoonBit bindings for HTMLOrSVGImageElement typedef

// Do not edit manually

//
// WebIDL Typedef:
// typedef (HTMLImageElement or
//          SVGImageElement) HTMLOrSVGImageElement;

///|
pub(open) trait THTMLOrSVGImageElement {
  to_js(self : Self) -> JsValue
}

///|
pub fn[T : THTMLOrSVGImageElement] &THTMLOrSVGImageElement::into(
  self : &THTMLOrSVGImageElement,
) -> T = "%identity"

///|
pub impl THTMLOrSVGImageElement for HTMLImageElement with to_js(
  self : HTMLImageElement,
) -> JsValue = "%identity"

///|
pub impl THTMLOrSVGImageElement for SVGImageElement with to_js(
  self : SVGImageElement,
) -> JsValue = "%identity"
