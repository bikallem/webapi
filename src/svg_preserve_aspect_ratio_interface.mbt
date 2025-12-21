///|
#external
pub type SVGPreserveAspectRatio

///|
pub impl TJsValue for SVGPreserveAspectRatio with to_js(
  self : SVGPreserveAspectRatio,
) -> JsValue = "%identity"

///|
pub fn[T : TSVGPreserveAspectRatio] SVGPreserveAspectRatio::into(
  self : SVGPreserveAspectRatio,
) -> T = "%identity"

///|
pub impl TSVGPreserveAspectRatio for SVGPreserveAspectRatio

///|
pub trait TSVGPreserveAspectRatio: TJsValue {}
