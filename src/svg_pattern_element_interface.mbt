///|
#external
pub type SVGPatternElement

///|
pub impl TJsValue for SVGPatternElement with to_js(self : SVGPatternElement) -> JsValue = "%identity"

///|
pub fn[T : TSVGPatternElement] SVGPatternElement::into(
  self : SVGPatternElement,
) -> T = "%identity"

///|
pub impl TSVGPatternElement for SVGPatternElement

///|
pub impl TSVGElement for SVGPatternElement

///|
pub impl TElement for SVGPatternElement

///|
pub impl TNode for SVGPatternElement

///|
pub impl TEventTarget for SVGPatternElement

///|
pub trait TSVGPatternElement: TSVGElement {}
