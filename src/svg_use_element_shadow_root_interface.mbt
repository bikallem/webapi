///|
#external
pub type SVGUseElementShadowRoot

///|
pub impl TJsValue for SVGUseElementShadowRoot with to_js(
  self : SVGUseElementShadowRoot,
) -> JsValue = "%identity"

///|
pub fn[T : TSVGUseElementShadowRoot] SVGUseElementShadowRoot::into(
  self : SVGUseElementShadowRoot,
) -> T = "%identity"

///|
pub impl TSVGUseElementShadowRoot for SVGUseElementShadowRoot

///|
pub impl TShadowRoot for SVGUseElementShadowRoot

///|
pub impl TDocumentFragment for SVGUseElementShadowRoot

///|
pub impl TNode for SVGUseElementShadowRoot

///|
pub impl TEventTarget for SVGUseElementShadowRoot

///|
pub trait TSVGUseElementShadowRoot: TShadowRoot {}
