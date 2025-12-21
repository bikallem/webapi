///|
#external
pub type SVGSwitchElement

///|
pub impl TJsValue for SVGSwitchElement with to_js(self : SVGSwitchElement) -> JsValue = "%identity"

///|
pub fn[T : TSVGSwitchElement] SVGSwitchElement::into(
  self : SVGSwitchElement,
) -> T = "%identity"

///|
pub impl TSVGSwitchElement for SVGSwitchElement

///|
pub impl TSVGGraphicsElement for SVGSwitchElement

///|
pub impl TSVGElement for SVGSwitchElement

///|
pub impl TElement for SVGSwitchElement

///|
pub impl TNode for SVGSwitchElement

///|
pub impl TEventTarget for SVGSwitchElement

///|
pub trait TSVGSwitchElement: TSVGGraphicsElement {}
