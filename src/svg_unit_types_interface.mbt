///|
#external
pub type SVGUnitTypes

///|
pub impl TJsValue for SVGUnitTypes with to_js(self : SVGUnitTypes) -> JsValue = "%identity"

///|
pub fn[T : TSVGUnitTypes] SVGUnitTypes::into(self : SVGUnitTypes) -> T = "%identity"

///|
pub impl TSVGUnitTypes for SVGUnitTypes

///|
pub trait TSVGUnitTypes: TJsValue {}
