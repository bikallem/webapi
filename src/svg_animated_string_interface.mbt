///|
#external
pub type SVGAnimatedString

///|
pub impl TJsValue for SVGAnimatedString with to_js(self : SVGAnimatedString) -> JsValue = "%identity"

///|
pub fn[T : TSVGAnimatedString] SVGAnimatedString::into(
  self : SVGAnimatedString,
) -> T = "%identity"

///|
pub impl TSVGAnimatedString for SVGAnimatedString

///|
pub trait TSVGAnimatedString: TJsValue {}
