///|
#external
pub type SVGForeignObjectElement

///|
pub impl TJsValue for SVGForeignObjectElement with to_js(
  self : SVGForeignObjectElement,
) -> JsValue = "%identity"

///|
pub fn[T : TSVGForeignObjectElement] SVGForeignObjectElement::into(
  self : SVGForeignObjectElement,
) -> T = "%identity"

///|
pub impl TSVGForeignObjectElement for SVGForeignObjectElement

///|
pub impl TSVGGraphicsElement for SVGForeignObjectElement

///|
pub impl TSVGElement for SVGForeignObjectElement

///|
pub impl TElement for SVGForeignObjectElement

///|
pub impl TNode for SVGForeignObjectElement

///|
pub impl TEventTarget for SVGForeignObjectElement

///|
pub trait TSVGForeignObjectElement: TSVGGraphicsElement {}
