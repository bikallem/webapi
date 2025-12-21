///|
#external
pub type SVGNumber

///|
pub impl TJsValue for SVGNumber with to_js(self : SVGNumber) -> JsValue = "%identity"

///|
pub fn[T : TSVGNumber] SVGNumber::into(self : SVGNumber) -> T = "%identity"

///|
pub impl TSVGNumber for SVGNumber

///|
pub trait TSVGNumber: TJsValue {}
